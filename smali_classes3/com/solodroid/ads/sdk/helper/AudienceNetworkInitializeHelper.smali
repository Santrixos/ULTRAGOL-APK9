.class public Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;
.super Ljava/lang/Object;
.source "AudienceNetworkInitializeHelper.java"

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkAds$InitListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p0

    new-instance v0, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;

    invoke-direct {v0}, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;-><init>()V

    .line 29
    invoke-interface {p0, v0}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p0

    .line 30
    invoke-interface {p0}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    :cond_0
    return-void
.end method

.method public static initializeAd(Landroid/content/Context;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "debug"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->isInitialized(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 37
    invoke-static {p0}, Lcom/facebook/ads/AdSettings;->turnOnSDKDebugger(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 38
    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setTestMode(Z)V

    .line 39
    sget-object p1, Lcom/facebook/ads/AdSettings$IntegrationErrorMode;->INTEGRATION_ERROR_CRASH_DEBUG_MODE:Lcom/facebook/ads/AdSettings$IntegrationErrorMode;

    invoke-static {p1}, Lcom/facebook/ads/AdSettings;->setIntegrationErrorMode(Lcom/facebook/ads/AdSettings$IntegrationErrorMode;)V

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/AudienceNetworkAds;->buildInitSettings(Landroid/content/Context;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p0

    new-instance p1, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;

    invoke-direct {p1}, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;-><init>()V

    .line 44
    invoke-interface {p0, p1}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->withInitListener(Lcom/facebook/ads/AudienceNetworkAds$InitListener;)Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;

    move-result-object p0

    .line 45
    invoke-interface {p0}, Lcom/facebook/ads/AudienceNetworkAds$InitSettingsBuilder;->initialize()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onInitialized(Lcom/facebook/ads/AudienceNetworkAds$InitResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lcom/facebook/ads/AudienceNetworkAds$InitResult;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FBAudienceNetwork"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
