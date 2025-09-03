.class public Lcom/app/thestream/utils/AdsManager;
.super Ljava/lang/Object;
.source "AdsManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AdsManager"


# instance fields
.field activity:Landroid/app/Activity;

.field adNetwork:Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field bannerAd:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

.field gdpr:Lcom/solodroid/ads/sdk/gdpr/GDPR;

.field interstitialAd:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

.field legacyGDPR:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;

.field nativeAd:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

.field nativeAdView:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/app/thestream/utils/AdsManager;->activity:Landroid/app/Activity;

    .line 36
    new-instance v0, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {v0, p1}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 37
    new-instance v0, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {v0, p1}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 38
    new-instance v0, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;

    invoke-direct {v0, p1}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->legacyGDPR:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;

    .line 39
    new-instance v0, Lcom/solodroid/ads/sdk/gdpr/GDPR;

    invoke-direct {v0, p1}, Lcom/solodroid/ads/sdk/gdpr/GDPR;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->gdpr:Lcom/solodroid/ads/sdk/gdpr/GDPR;

    .line 40
    new-instance v0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    invoke-direct {v0, p1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->adNetwork:Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    .line 41
    new-instance v0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-direct {v0, p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->bannerAd:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    .line 42
    new-instance v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-direct {v0, p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->interstitialAd:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    .line 43
    new-instance v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-direct {v0, p1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->nativeAd:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    .line 44
    new-instance v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    invoke-direct {v0, p1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/app/thestream/utils/AdsManager;->nativeAdView:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    return-void
.end method


# virtual methods
.method public destroyBannerAd()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->bannerAd:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->destroyAndDetachBanner()V

    return-void
.end method

.method public initializeAd()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->adNetwork:Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 49
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 50
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getBackupAds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 51
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getStartappAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->setStartappAppId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 52
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getUnityGameId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->setUnityGameId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 53
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->setIronSourceAppKey(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 54
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->setDebug(Z)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->build()Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;

    return-void
.end method

.method public loadBannerAd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placement"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->bannerAd:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 60
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 61
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getBackupAds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 62
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobBannerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setAdMobBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 63
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerBannerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setGoogleAdManagerBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 64
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getFanBannerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setFanBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 65
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getUnityBannerPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setUnityBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 66
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAppLovinBannerAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setAppLovinBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 67
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAppLovinBannerZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setAppLovinBannerZoneId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 68
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getIronSourceBannerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setIronSourceBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 69
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setDarkTheme(Z)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->build()Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    return-void
.end method

.method public loadInterstitialAd(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "placement",
            "interval"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->interstitialAd:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 77
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 78
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getBackupAds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 79
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobInterstitialId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setAdMobInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 80
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerInterstitialId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setGoogleAdManagerInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 81
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getFanInterstitialId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setFanInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 82
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getUnityInterstitialPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setUnityInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 83
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAppLovinInterstitialAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setAppLovinInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 84
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAppLovinInterstitialZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setAppLovinInterstitialZoneId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 85
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getIronSourceInterstitialId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setIronSourceInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p2}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setInterval(I)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object p2

    .line 87
    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 88
    invoke-virtual {p1, p2}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->build()Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    return-void
.end method

.method public loadNativeAd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placement"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->nativeAd:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 94
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 95
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getBackupAds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 96
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobNativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setAdMobNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 97
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerNativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setAdManagerNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 98
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getFanNativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setFanNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 99
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAppLovinNativeAdManualUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setAppLovinNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 101
    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setDarkTheme(Z)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->build()Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    return-void
.end method

.method public loadNativeAdView(Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "placement"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->nativeAdView:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 108
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 109
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getBackupAds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 110
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobNativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setAdMobNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 111
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerNativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setAdManagerNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 112
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getFanNativeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setFanNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 113
    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAppLovinNativeAdManualUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setAppLovinNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p2}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 115
    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setDarkTheme(Z)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p2, v0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object p2

    .line 117
    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setView(Landroid/view/View;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->build()Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    return-void
.end method

.method public resumeBannerAd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placement"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getIronSourceBannerId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ironsource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getBackupAds()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/app/thestream/utils/AdsManager;->loadBannerAd(I)V

    :cond_1
    return-void
.end method

.method public showInterstitialAd()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->interstitialAd:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->show()V

    return-void
.end method

.method public updateConsentStatus()V
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/app/thestream/utils/AdsManager;->legacyGDPR:Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;

    iget-object v1, p0, Lcom/app/thestream/utils/AdsManager;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobPublisherId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/app/thestream/utils/AdsManager;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/privacy.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/solodroid/ads/sdk/gdpr/LegacyGDPR;->updateLegacyGDPRConsentStatus(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
