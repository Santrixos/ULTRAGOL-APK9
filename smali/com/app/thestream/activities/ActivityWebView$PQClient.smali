.class public Lcom/app/thestream/activities/ActivityWebView$PQClient;
.super Landroid/webkit/WebViewClient;
.source "ActivityWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/activities/ActivityWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PQClient"
.end annotation


# instance fields
.field progressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/app/thestream/activities/ActivityWebView;


# direct methods
.method public constructor <init>(Lcom/app/thestream/activities/ActivityWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 290
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    iget-object p1, p1, Lcom/app/thestream/activities/ActivityWebView;->webView:Landroid/webkit/WebView;

    const-string p2, "javascript:(function(){ document.getElementById(\'android-app\').style.display=\'none\';})()"

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 295
    :try_start_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 p1, 0x0

    .line 297
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "url",
            "favicon"
        }
    .end annotation

    .line 281
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->progressDialog:Landroid/app/ProgressDialog;

    if-nez p1, :cond_0

    .line 282
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2}, Lcom/app/thestream/activities/ActivityWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->progressDialog:Landroid/app/ProgressDialog;

    const-string p2, "Loading..."

    .line 283
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 284
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$PQClient;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    const-string v0, "mailto:"

    .line 257
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    .line 262
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 271
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
