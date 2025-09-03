.class public Lcom/startapp/sdk/adsbase/StartAppSDK;
.super Ljava/lang/Object;
.source "Sta"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addWrapper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 3
    iget-object v1, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->q:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->q:Ljava/util/Map;

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->q:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/startapp/sdk/components/ComponentLocator;->d()Lcom/startapp/sdk/adsbase/e;

    move-result-object p0

    .line 10
    iget-object p1, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->q:Ljava/util/Map;

    sget-object p2, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 11
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object p0

    const-string p2, "sharedPrefsWrappers"

    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    return-void
.end method

.method public static enableReturnAds(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 3
    invoke-virtual {v0, p0}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->a(Z)V

    return-void
.end method

.method public static getExtras(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p0

    .line 2
    iget-object p0, p0, Lcom/startapp/sdk/components/ComponentLocator;->E:Lcom/startapp/y1;

    invoke-virtual {p0}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/startapp/sdk/adsbase/e;

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.10.5"

    return-object v0
.end method

.method public static inAppPurchaseMade(Landroid/content/Context;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/startapp/sdk/adsbase/StartAppSDK;->inAppPurchaseMade(Landroid/content/Context;D)V

    return-void
.end method

.method public static inAppPurchaseMade(Landroid/content/Context;D)V
    .locals 4

    .line 2
    invoke-static {p0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->d()Lcom/startapp/sdk/adsbase/e;

    move-result-object v0

    const-string v1, "inAppPurchaseAmount"

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/adsbase/e;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 6
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object v0

    float-to-double v2, v2

    add-double/2addr v2, p1

    double-to-float p1, v2

    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object p2, v0, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 10
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, "payingUser"

    invoke-virtual {v0, p2, p1}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object p1, v0, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 12
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    .line 14
    sget-object p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 15
    sget-object p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 16
    sget-object p2, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;->c:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;

    invoke-virtual {p1, p0, p2}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/startapp/sdk/adsbase/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/adsbase/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1, p2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, v0, p1, p2, p3}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/startapp/sdk/adsbase/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/adsbase/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, p2, p3, v0}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;Z)V
    .locals 7

    .line 8
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 10
    invoke-virtual/range {v1 .. v6}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 6
    new-instance v0, Lcom/startapp/sdk/adsbase/SDKAdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/adsbase/SDKAdPreferences;-><init>()V

    invoke-static {p0, p1, p2, v0, p3}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/SDKAdPreferences;Z)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, v0, p1, p2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setTestAdsEnabled(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 3
    iput-boolean p0, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->C:Z

    return-void
.end method

.method public static setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V
    .locals 6

    .line 1
    sget-object p2, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 2
    sget-object p2, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "pas"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    invoke-static {p0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/sdk/components/ComponentLocator;->d()Lcom/startapp/sdk/adsbase/e;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "USER_CONSENT_PERSONALIZED_ADS_SERVING"

    .line 7
    invoke-virtual {p2, v0, p3}, Lcom/startapp/sdk/adsbase/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "1"

    const-string v2, "0"

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 8
    :goto_0
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_3

    .line 12
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "M"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 13
    new-instance v3, Lcom/startapp/i4;

    sget-object v4, Lcom/startapp/j4;->d:Lcom/startapp/j4;

    invoke-direct {v3, v4}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User consent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, v3, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 15
    iput-object p3, v3, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {v3}, Lcom/startapp/i4;->a()V

    .line 18
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object p1

    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 20
    :goto_2
    invoke-virtual {p1, v0, v1}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    iget-object p2, p1, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    .line 24
    sget-object p1, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    sget-object p1, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    sget-object p2, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;->f:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;

    invoke-virtual {p1, p0, p2}, Lcom/startapp/t9;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public static startNewSession(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 3
    sget-object v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;->d:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;

    invoke-virtual {v0, p0, v1}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;)V

    return-void
.end method
