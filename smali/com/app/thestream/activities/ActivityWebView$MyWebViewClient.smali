.class Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ActivityWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/activities/ActivityWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/activities/ActivityWebView;


# direct methods
.method private constructor <init>(Lcom/app/thestream/activities/ActivityWebView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/app/thestream/activities/ActivityWebView;Lcom/app/thestream/activities/ActivityWebView$1;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;-><init>(Lcom/app/thestream/activities/ActivityWebView;)V

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

    .line 240
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    iget-object p1, p1, Lcom/app/thestream/activities/ActivityWebView;->progressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

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

    .line 109
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 110
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    iget-object p1, p1, Lcom/app/thestream/activities/ActivityWebView;->progressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "errorCode",
            "description",
            "failingUrl"
        }
    .end annotation

    .line 245
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    iget-object p2, p2, Lcom/app/thestream/activities/ActivityWebView;->progressBar:Landroid/widget/ProgressBar;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 246
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2}, Lcom/app/thestream/activities/ActivityWebView;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p3}, Lcom/app/thestream/activities/ActivityWebView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f1200b1

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-static {p2, p3, p4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    const-string p2, "about:blank"

    .line 247
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
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

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const-string v1, "tel:"

    .line 117
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 119
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v1}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v0

    :cond_0
    const-string v1, "android.intent.action.SENDTO"

    if-eqz p2, :cond_1

    const-string v2, "sms:"

    .line 125
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    new-instance v2, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v2}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v0

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "mailto:"

    .line 133
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    new-instance v2, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 135
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v2}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V

    .line 136
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v0

    :cond_2
    const-string v1, "android.intent.action.VIEW"

    if-eqz p2, :cond_3

    const-string v2, "http://pin.bbm.com/"

    .line 140
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    new-instance v2, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 142
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "com.bbm"

    .line 143
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :try_start_0
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v2}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    .line 147
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v2}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v0

    :cond_3
    if-eqz p2, :cond_5

    const-string v2, "https://api.whatsapp.com/"

    .line 155
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 157
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {v2}, Lcom/app/thestream/activities/ActivityWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 158
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_1
    const-string v1, "com.whatsapp"

    .line 160
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 162
    invoke-virtual {v3, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 163
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v3}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 166
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v0

    :cond_5
    const-string v2, "com.instagram.android"

    if-eqz p2, :cond_7

    const-string v3, "https://www.instagram.com/"

    .line 173
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 175
    iget-object v3, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {v3}, Lcom/app/thestream/activities/ActivityWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 176
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    :try_start_2
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 180
    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 181
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v4}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 184
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v0

    :cond_7
    if-eqz p2, :cond_9

    const-string v3, "instagram://"

    .line 191
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 193
    iget-object v3, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {v3}, Lcom/app/thestream/activities/ActivityWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 194
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    :try_start_3
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v4, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 198
    invoke-virtual {v4, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 199
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v4}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p2

    .line 202
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    :cond_8
    :goto_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v0

    :cond_9
    if-eqz p2, :cond_b

    const-string v2, "https://maps.google.com/"

    .line 209
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 211
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {v2}, Lcom/app/thestream/activities/ActivityWebView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 212
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_4
    const-string v1, "com.google.android.apps.maps"

    .line 214
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 216
    invoke-virtual {v3, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 217
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityWebView$MyWebViewClient;->this$0:Lcom/app/thestream/activities/ActivityWebView;

    invoke-virtual {p2, v3}, Lcom/app/thestream/activities/ActivityWebView;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    .line 220
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    :cond_a
    :goto_4
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return v0

    :cond_b
    if-eqz p2, :cond_c

    const-string v2, "file:///android_asset/[external]http"

    .line 227
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "file:///android_asset/[external]"

    const-string v3, ""

    .line 228
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v2, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 231
    :cond_c
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_5
    return v0
.end method
