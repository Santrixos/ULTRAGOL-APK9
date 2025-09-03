.class public Lcom/app/thestream/activities/ActivityWebView;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/activities/ActivityWebView$PQClient;,
        Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;
    }
.end annotation


# instance fields
.field btn_failed_retry:Landroid/widget/Button;

.field lyt_failed:Landroid/view/View;

.field progressBar:Landroid/widget/ProgressBar;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field str_url:Ljava/lang/String;

.field title:Ljava/lang/String;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public displayData()V
    .locals 4

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 91
    new-instance v1, Lcom/app/thestream/activities/ActivityWebView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityWebView$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/ActivityWebView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$onCreate$0$com-app-thestream-activities-ActivityWebView(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->lyt_failed:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 63
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->displayData()V

    return-void
.end method

.method public loadData()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 98
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 99
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 100
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/app/thestream/activities/ActivityWebView$PQClient;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityWebView$PQClient;-><init>(Lcom/app/thestream/activities/ActivityWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 101
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;-><init>(Lcom/app/thestream/activities/ActivityWebView;Lcom/app/thestream/activities/ActivityWebView$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityWebView;->str_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 41
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    .line 43
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    const p1, 0x7f0d0025

    .line 44
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityWebView;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    const p1, 0x7f0a02cf

    .line 47
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    const p1, 0x7f0a021d

    .line 48
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->progressBar:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0151

    .line 49
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->btn_failed_retry:Landroid/widget/Button;

    const p1, 0x7f0a0197

    .line 50
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->lyt_failed:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "title"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->title:Ljava/lang/String;

    const-string v0, "url"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->str_url:Ljava/lang/String;

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->displayData()V

    .line 60
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView;->btn_failed_retry:Landroid/widget/Button;

    new-instance v0, Lcom/app/thestream/activities/ActivityWebView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityWebView$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivityWebView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->setupToolbar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0204

    if-eq v0, v1, :cond_0

    .line 326
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 321
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityWebView;->str_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->onBackPressed()V

    return v2
.end method

.method public setupToolbar()V
    .locals 3

    const v0, 0x7f0a02b1

    .line 71
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 72
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityWebView;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 74
    new-instance v1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {v1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityWebView;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityWebView;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
