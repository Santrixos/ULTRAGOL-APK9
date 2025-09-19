package com.app.thestream.activities;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.CookieManager;
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

    public void loadData() {
        // Obtener configuraciones del WebView
        WebSettings webSettings = webView.getSettings();
        
        // Configuraciones básicas del WebView
        webSettings.setJavaScriptEnabled(true);
        webSettings.setBuiltInZoomControls(false);
        webSettings.setSupportZoom(true);
        webSettings.setCacheMode(WebSettings.LOAD_NO_CACHE);
        
        // *** CONFIGURACIONES IMPORTANTES PARA COOKIES ***
        
        // Habilitar cookies
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        
        // Habilitar cookies de terceros (muy importante para sitios web modernos)
        cookieManager.setAcceptThirdPartyCookies(webView, true);
        
        // Configuraciones adicionales para mejorar compatibilidad
        webSettings.setDomStorageEnabled(true); // LocalStorage
        webSettings.setDatabaseEnabled(true); // Web SQL Database
        webSettings.setAppCacheEnabled(true); // Application Cache
        
        // Configurar User Agent para mejor compatibilidad
        webSettings.setUserAgentString(webSettings.getUserAgentString() + " AppWebView/1.0");
        
        // Habilitar contenido mixto (HTTP en HTTPS)
        webSettings.setMixedContentMode(WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);
        
        // Configuraciones adicionales de seguridad y rendimiento
        webSettings.setAllowFileAccess(true);
        webSettings.setAllowContentAccess(true);
        webSettings.setGeolocationEnabled(true);
        webSettings.setSupportMultipleWindows(false);
        webSettings.setLoadWithOverviewMode(true);
        webSettings.setUseWideViewPort(true);
        
        // Configurar el WebViewClient
        webView.setWebViewClient(new MyWebViewClient());
        
        // Cargar la URL
        webView.loadUrl(str_url);
    }

    private class MyWebViewClient extends WebViewClient {
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
        }

        @Override
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            super.onReceivedError(view, errorCode, description, failingUrl);
            progressBar.setVisibility(View.GONE);
            lyt_failed.setVisibility(View.VISIBLE);
        }

        @Override
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            // Permitir navegación dentro del WebView
            view.loadUrl(url);
            return true;
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
}