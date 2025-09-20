package com.app.thestream.activities;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.ProgressBar;

import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;

import com.app.thestream.databases.prefs.SharedPref;
import com.app.thestream.utils.Tools;

public class ActivityWebView extends AppCompatActivity {

    Button btn_failed_retry;
    View lyt_failed;
    ProgressBar progressBar;
    SharedPref sharedPref;
    String str_url;
    String title;
    WebView webView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Tools.getTheme(this);
        sharedPref = new SharedPref(this);
        setContentView(R.layout.activity_webview);
        Tools.setNavigation(this);

        webView = findViewById(R.id.webView);
        progressBar = findViewById(R.id.progressBar);
        btn_failed_retry = findViewById(R.id.btn_failed_retry);
        lyt_failed = findViewById(R.id.lyt_failed);

        if (getIntent() != null) {
            title = getIntent().getStringExtra("title");
            str_url = getIntent().getStringExtra("url");
        }

        displayData();

        btn_failed_retry.setOnClickListener(v -> {
            lyt_failed.setVisibility(View.GONE);
            progressBar.setVisibility(View.VISIBLE);
            displayData();
        });

        setupToolbar();
    }

    public void displayData() {
        new Handler().postDelayed(this::loadData, 1000);
    }

    @SuppressLint("SetJavaScriptEnabled")
    public void loadData() {
        // *** CONFIGURACIÓN OPTIMIZADA PARA INTERACTIVIDAD ***
        
        WebSettings webSettings = webView.getSettings();
        
        // === CONFIGURACIONES BÁSICAS ===
        webSettings.setJavaScriptEnabled(true);
        webSettings.setBuiltInZoomControls(false);
        webSettings.setSupportZoom(true);
        webSettings.setCacheMode(WebSettings.LOAD_DEFAULT);
        
        // === CONFIGURACIONES PARA COOKIES ===
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(webView, true);
        
        // === CONFIGURACIONES CRÍTICAS PARA INTERACTIVIDAD ===
        
        // Habilitar almacenamiento DOM (esencial para apps web modernas)
        webSettings.setDomStorageEnabled(true);
        webSettings.setDatabaseEnabled(true);
        webSettings.setAppCacheEnabled(true);
        
        // Configuraciones de viewport para mejor renderizado
        webSettings.setUseWideViewPort(true);
        webSettings.setLoadWithOverviewMode(true);
        
        // Configurar User Agent específico para mejor compatibilidad
        String userAgent = webSettings.getUserAgentString();
        // Agregar información que identifique como navegador móvil moderno
        webSettings.setUserAgentString(userAgent + " Chrome/91.0 Mobile Safari/537.36");
        
        // === CONFIGURACIONES PARA CONTENIDO MULTIMEDIA ===
        webSettings.setMediaPlaybackRequiresUserGesture(false);
        webSettings.setAllowFileAccess(true);
        webSettings.setAllowContentAccess(true);
        webSettings.setAllowFileAccessFromFileURLs(true);
        webSettings.setAllowUniversalAccessFromFileURLs(true);
        
        // === CONFIGURACIONES DE SEGURIDAD PARA CONTENIDO MIXTO ===
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            webSettings.setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);
        }
        
        // === CONFIGURACIONES DE RENDIMIENTO ===
        webSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        webSettings.setCacheMode(WebSettings.LOAD_DEFAULT);
        
        // === CONFIGURACIONES ESPECÍFICAS PARA JAVASCRIPT AVANZADO ===
        webSettings.setJavaScriptCanOpenWindowsAutomatically(true);
        webSettings.setSupportMultipleWindows(false);
        webSettings.setGeolocationEnabled(true);
        
        // === CONFIGURACIONES PARA MEJOR MANEJO DE TEXTO ===
        webSettings.setTextZoom(100);
        webSettings.setDefaultTextEncodingName("utf-8");
        
        // === CONFIGURAR WEBVIEW CLIENTS OPTIMIZADOS ===
        
        // WebViewClient optimizado
        webView.setWebViewClient(new OptimizedWebViewClient());
        
        // WebChromeClient para mejor manejo de JavaScript
        webView.setWebChromeClient(new OptimizedWebChromeClient());
        
        // === CONFIGURACIONES DE HARDWARE ACCELERATION ===
        // (Esto se configura en el AndroidManifest.xml)
        
        // === CONFIGURACIONES ADICIONALES PARA TOUCH HANDLING ===
        webView.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setVerticalScrollBarEnabled(true);
        
        // Cargar la URL
        webView.loadUrl(str_url);
    }

    private class OptimizedWebViewClient extends WebViewClient {
        @Override
        public void onPageStarted(WebView view, String url, android.graphics.Bitmap favicon) {
            super.onPageStarted(view, url, favicon);
            progressBar.setVisibility(View.VISIBLE);
            lyt_failed.setVisibility(View.GONE);
        }

        @Override
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            progressBar.setVisibility(View.GONE);
            
            // Inyectar JavaScript para mejorar la detección táctil
            String javascript = 
                "javascript:(function() {" +
                "  var meta = document.createElement('meta');" +
                "  meta.name = 'viewport';" +
                "  meta.content = 'width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no';" +
                "  document.getElementsByTagName('head')[0].appendChild(meta);" +
                "  " +
                "  document.addEventListener('touchstart', function(e) {" +
                "    e.target.style.webkitTapHighlightColor = 'rgba(0,0,0,0)';" +
                "  }, false);" +
                "})()";
            
            view.loadUrl(javascript);
        }

        @Override
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            progressBar.setVisibility(View.GONE);
            lyt_failed.setVisibility(View.VISIBLE);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            // Permitir navegación dentro del WebView para máxima compatibilidad
            view.loadUrl(url);
            return true;
        }
    }

    private class OptimizedWebChromeClient extends WebChromeClient {
        @Override
        public void onProgressChanged(WebView view, int newProgress) {
            super.onProgressChanged(view, newProgress);
            // Actualizar barra de progreso si es necesario
        }

        @Override
        public boolean onJsAlert(WebView view, String url, String message, android.webkit.JsResult result) {
            // Manejar alertas JavaScript
            return super.onJsAlert(view, url, message, result);
        }

        @Override
        public boolean onJsConfirm(WebView view, String url, String message, android.webkit.JsResult result) {
            // Manejar confirmaciones JavaScript
            return super.onJsConfirm(view, url, message, result);
        }
    }

    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_webview, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.home:
                onBackPressed();
                return true;
            case R.id.menu_open_browser:
                Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse(str_url));
                startActivity(intent);
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    public void setupToolbar() {
        Toolbar toolbar = findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);

        SharedPref sharedPref = new SharedPref(this);
        if (sharedPref.getIsDarkTheme()) {
            toolbar.setBackgroundColor(getResources().getColor(R.color.colorToolbarDark));
        } else {
            toolbar.setBackgroundColor(getResources().getColor(R.color.colorToolbar));
        }

        ActionBar actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.setHomeButtonEnabled(true);
            actionBar.setTitle(title);
        }
    }

    @Override
    public void onBackPressed() {
        if (webView.canGoBack()) {
            webView.goBack();
        } else {
            super.onBackPressed();
        }
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        webView.onResume();
    }

    @Override
    protected void onPause() {
        super.onPause();
        webView.onPause();
    }

    @Override
    protected void onDestroy() {
        if (webView != null) {
            webView.destroy();
        }
        super.onDestroy();
    }
}