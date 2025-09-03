.class public Lcom/app/thestream/utils/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static darkNavigation(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060056

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 336
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 340
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    .line 341
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static displayContent(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "webView",
            "htmlData"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {v0, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 192
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 193
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 194
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b000d

    .line 198
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 199
    invoke-virtual {v1, p0}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 205
    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "<style type=\"text/css\">body{color: #eeeeee;} a{color:#ffffff; font-weight:bold;}"

    goto :goto_0

    :cond_0
    const-string p0, "<style type=\"text/css\">body{color: #000000;} a{color:#1e88e5; font-weight:bold;}"

    .line 213
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<html><head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<style type=\"text/css\">@font-face {font-family: MyFont;src: url(\"file:///android_asset/font/custom_font.ttf\")}body {font-family: MyFont; font-size: medium; overflow-wrap: break-word; word-wrap: break-word; -ms-word-break: break-all; word-break: break-all; word-break: break-word; -ms-hyphens: auto; -moz-hyphens: auto; -webkit-hyphens: auto; hyphens: auto;}</style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<style>img{max-width:100%;height:auto;} figure{max-width:100%;height:auto;} iframe{width:100%;}</style> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</style></head><body>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</body></html>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v4, "text/html; charset=UTF-8"

    const-string v5, "utf-8"

    move-object v1, p1

    .line 234
    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getCategoryPosition(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "intent"
        }
    .end annotation

    const-string v0, "category_position"

    .line 167
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 171
    instance-of p1, p0, Lcom/app/thestream/activities/MainActivity;

    if-eqz p1, :cond_0

    .line 172
    check-cast p0, Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->selectCategory()V

    :cond_0
    return-void
.end method

.method public static getTheme(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {v0, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130008

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f13002a

    .line 49
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    :goto_0
    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 347
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 348
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 350
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method

.method public static isConnect(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 154
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 155
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 157
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method public static isNetworkAvailable(Landroid/app/Activity;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 140
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 141
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    .line 143
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 144
    invoke-virtual {p0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 145
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static lightNavigation(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 91
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060058

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f060054

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static notificationOpenHandler(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "getIntent"
        }
    .end annotation

    const-string v0, "unique_id"

    const-wide/16 v1, 0x0

    .line 115
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "post_id"

    .line 116
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v0, "title"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "link"

    .line 118
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    cmp-long v8, v5, v1

    if-nez v8, :cond_0

    if-eqz p1, :cond_2

    const-string v1, ""

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/app/thestream/activities/ActivityWebView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "url"

    .line 123
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-lez v8, :cond_1

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/app/thestream/activities/ActivityNotificationDetail;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/app/thestream/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 134
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unique id : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "push_notification"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "link : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "post id : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static rateApp(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://play.google.com/store/apps/details?id=androidx.multidex"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static saveAds(Lcom/app/thestream/databases/prefs/AdsPref;Lcom/app/thestream/models/Ads;)V
    .locals 36
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adsPref",
            "ads"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 256
    iget v1, v15, Lcom/app/thestream/models/Ads;->test_mode:I

    const-string v14, "AdNetwork"

    const-string v2, "1"

    const-string v3, "on"

    const/4 v13, 0x1

    if-ne v1, v13, :cond_0

    .line 257
    iget-object v1, v15, Lcom/app/thestream/models/Ads;->ad_status:Ljava/lang/String;

    .line 258
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lcom/app/thestream/models/Ads;->ad_type:Ljava/lang/String;

    iget-object v3, v15, Lcom/app/thestream/models/Ads;->backup_ads:Ljava/lang/String;

    iget v4, v15, Lcom/app/thestream/models/Ads;->interstitial_ad_interval:I

    move/from16 v29, v4

    iget v4, v15, Lcom/app/thestream/models/Ads;->native_ad_interval:I

    move/from16 v30, v4

    iget v4, v15, Lcom/app/thestream/models/Ads;->native_ad_index:I

    move/from16 v31, v4

    iget-object v4, v15, Lcom/app/thestream/models/Ads;->date_time:Ljava/lang/String;

    move-object/from16 v32, v4

    const-string v4, "pub-3940256099942544"

    const-string v5, "ca-app-pub-3940256099942544~3347511713"

    const-string v6, "ca-app-pub-3940256099942544/6300978111"

    const-string v7, "ca-app-pub-3940256099942544/1033173712"

    const-string v8, "ca-app-pub-3940256099942544/2247696110"

    const-string v9, "ca-app-pub-3940256099942544/3419835294"

    const-string v10, "/6499/example/banner"

    const-string v11, "/6499/example/interstitial"

    const-string v12, "/6499/example/native"

    const-string v15, "/6499/example/app-open"

    move-object v13, v15

    const-string v15, "IMG_16_9_APP_INSTALL#1102290040176998_1102321626840506"

    move-object/from16 v34, v14

    move-object v14, v15

    const-string v15, "IMG_16_9_APP_INSTALL#1102290040176998_1103218190084183"

    const-string v16, "IMG_16_9_APP_INSTALL#1102290040176998_1142394442833224"

    const-string v17, "0"

    const-string v18, "4089993"

    const-string v19, "banner"

    const-string v20, "video"

    const-string v21, "0"

    const-string v22, "0"

    const-string v23, "0"

    const-string v24, "0"

    const-string v25, "0"

    const-string v26, "85460dcd"

    const-string v27, "DefaultBanner"

    const-string v28, "DefaultInterstitial"

    move-object/from16 v0, p0

    .line 257
    invoke-virtual/range {v0 .. v32}, Lcom/app/thestream/databases/prefs/AdsPref;->saveAds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    const/4 v1, 0x1

    .line 292
    invoke-virtual {v0, v1}, Lcom/app/thestream/databases/prefs/AdsPref;->setTestMode(Z)V

    const-string v0, "Ad Test Mode ON"

    move-object/from16 v14, v34

    .line 293
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 295
    :cond_0
    iget-object v1, v15, Lcom/app/thestream/models/Ads;->ad_status:Ljava/lang/String;

    .line 296
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v15, Lcom/app/thestream/models/Ads;->ad_type:Ljava/lang/String;

    iget-object v3, v15, Lcom/app/thestream/models/Ads;->backup_ads:Ljava/lang/String;

    iget-object v4, v15, Lcom/app/thestream/models/Ads;->admob_publisher_id:Ljava/lang/String;

    iget-object v5, v15, Lcom/app/thestream/models/Ads;->admob_app_id:Ljava/lang/String;

    iget-object v6, v15, Lcom/app/thestream/models/Ads;->admob_banner_unit_id:Ljava/lang/String;

    iget-object v7, v15, Lcom/app/thestream/models/Ads;->admob_interstitial_unit_id:Ljava/lang/String;

    iget-object v8, v15, Lcom/app/thestream/models/Ads;->admob_native_unit_id:Ljava/lang/String;

    iget-object v9, v15, Lcom/app/thestream/models/Ads;->admob_app_open_ad_unit_id:Ljava/lang/String;

    iget-object v10, v15, Lcom/app/thestream/models/Ads;->ad_manager_banner_unit_id:Ljava/lang/String;

    iget-object v11, v15, Lcom/app/thestream/models/Ads;->ad_manager_interstitial_unit_id:Ljava/lang/String;

    iget-object v12, v15, Lcom/app/thestream/models/Ads;->ad_manager_native_unit_id:Ljava/lang/String;

    iget-object v13, v15, Lcom/app/thestream/models/Ads;->ad_manager_app_open_ad_unit_id:Ljava/lang/String;

    iget-object v0, v15, Lcom/app/thestream/models/Ads;->fan_banner_unit_id:Ljava/lang/String;

    move-object/from16 v35, v14

    move-object v14, v0

    iget-object v0, v15, Lcom/app/thestream/models/Ads;->fan_interstitial_unit_id:Ljava/lang/String;

    move-object/from16 v33, v1

    move-object v1, v15

    move-object v15, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->fan_native_unit_id:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->startapp_app_id:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->unity_game_id:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->unity_banner_placement_id:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->unity_interstitial_placement_id:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->applovin_banner_ad_unit_id:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->applovin_interstitial_ad_unit_id:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->applovin_native_ad_manual_unit_id:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->applovin_banner_zone_id:Ljava/lang/String;

    move-object/from16 v24, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->applovin_interstitial_zone_id:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->ironsource_app_key:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->ironsource_banner_placement_name:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->ironsource_interstitial_placement_name:Ljava/lang/String;

    move-object/from16 v28, v0

    iget v0, v1, Lcom/app/thestream/models/Ads;->interstitial_ad_interval:I

    move/from16 v29, v0

    iget v0, v1, Lcom/app/thestream/models/Ads;->native_ad_interval:I

    move/from16 v30, v0

    iget v0, v1, Lcom/app/thestream/models/Ads;->native_ad_index:I

    move/from16 v31, v0

    iget-object v0, v1, Lcom/app/thestream/models/Ads;->date_time:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v1, p0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    .line 295
    invoke-virtual/range {v0 .. v32}, Lcom/app/thestream/databases/prefs/AdsPref;->saveAds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 330
    invoke-virtual {v1, v0}, Lcom/app/thestream/databases/prefs/AdsPref;->setTestMode(Z)V

    const-string v0, "Ad Test Mode OFF"

    move-object/from16 v1, v35

    .line 331
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setLayoutDirection(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public static setNavigation(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {v0, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->darkNavigation(Landroid/app/Activity;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->lightNavigation(Landroid/app/Activity;)V

    .line 60
    :goto_0
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setLayoutDirection(Landroid/app/Activity;)V

    return-void
.end method

.method public static setupToolbar(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "toolbar",
            "title",
            "backButton"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {v0, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 101
    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 106
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static share(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "title"
        }
    .end annotation

    .line 180
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f12012f

    .line 181
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\nhttps://play.google.com/store/apps/details?id="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "com.mexicotv.futbolenvivoabierta"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 185
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static shareContent(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "title"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nhttps://play.google.com/store/apps/details?id="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "androidx.multidex"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 86
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startPlayer(Landroid/app/Activity;Landroid/view/View;Lcom/app/thestream/models/Channel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "view",
            "channel"
        }
    .end annotation

    .line 239
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->isNetworkAvailable(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object p1, p2, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v0, "YOUTUBE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 241
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/app/thestream/activities/ActivityYoutubePlayer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 242
    iget-object p2, p2, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/app/thestream/activities/ActivityStreamPlayer;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    iget-object v0, p2, Lcom/app/thestream/models/Channel;->channel_url:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object p2, p2, Lcom/app/thestream/models/Channel;->user_agent:Ljava/lang/String;

    const-string v0, "user_agent"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1200fe

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-static {p1, p0, p2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
    return-void
.end method
