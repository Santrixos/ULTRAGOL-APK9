.class public Lcom/app/thestream/databases/prefs/AdsPref;
.super Ljava/lang/Object;
.source "AdsPref.java"


# instance fields
.field private context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/app/thestream/databases/prefs/AdsPref;->context:Landroid/content/Context;

    const-string v0, "ads_setting"

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getAdManagerAppOpenAdId()Ljava/lang/String;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ad_manager_app_open_ad_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdManagerBannerId()Ljava/lang/String;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ad_manager_banner_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdManagerInterstitialId()Ljava/lang/String;
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ad_manager_interstitial_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdManagerNativeId()Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ad_manager_native_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdMobAppId()Ljava/lang/String;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "admob_app_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdMobAppOpenAdId()Ljava/lang/String;
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "admob_app_open_ad_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdMobBannerId()Ljava/lang/String;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "admob_banner_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdMobInterstitialId()Ljava/lang/String;
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "admob_interstitial_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdMobNativeId()Ljava/lang/String;
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "admob_native_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdMobPublisherId()Ljava/lang/String;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "admob_publisher_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdStatus()Ljava/lang/String;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ad_status"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ad_type"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLovinBannerAdUnitId()Ljava/lang/String;
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "applovin_banner_ad_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLovinBannerZoneId()Ljava/lang/String;
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "applovin_banner_zone_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLovinInterstitialAdUnitId()Ljava/lang/String;
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "applovin_interstitial_ad_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLovinInterstitialZoneId()Ljava/lang/String;
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "applovin_interstitial_zone_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppLovinNativeAdManualUnitId()Ljava/lang/String;
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "applovin_native_ad_manual_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackupAds()Ljava/lang/String;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "backup_ads"

    const-string v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "date_time"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFanBannerId()Ljava/lang/String;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fan_banner_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFanInterstitialId()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fan_interstitial_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFanNativeId()Ljava/lang/String;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fan_native_unit_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialAdCounter()Ljava/lang/Integer;
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "interstitial_ad_counter"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialAdInterval()I
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "interstitial_ad_interval"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIronSourceAppKey()Ljava/lang/String;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ironsource_app_key"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIronSourceBannerId()Ljava/lang/String;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ironsource_banner_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIronSourceInterstitialId()Ljava/lang/String;
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ironsource_interstitial_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAdIndex()I
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "native_ad_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNativeAdInterval()I
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "native_ad_interval"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStartappAppId()Ljava/lang/String;
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "startapp_app_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestMode()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "test_mode"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUnityBannerPlacementId()Ljava/lang/String;
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "unity_banner_placement_id"

    const-string v2, "banner"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnityGameId()Ljava/lang/String;
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "unity_game_id"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnityInterstitialPlacementId()Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "unity_interstitial_placement_id"

    const-string v2, "video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveAds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ad_status",
            "ad_type",
            "backup_ads",
            "admob_publisher_id",
            "admob_app_id",
            "admob_banner_unit_id",
            "admob_interstitial_unit_id",
            "admob_native_unit_id",
            "admob_app_open_ad_unit_id",
            "adManagerBannerUnitId",
            "adManagerInterstitialUnitId",
            "adManagerNativeUnitId",
            "adManagerAppOpenAdUnitId",
            "fan_banner_unit_id",
            "fan_interstitial_unit_id",
            "fan_native_unit_id",
            "startapp_app_id",
            "unity_game_id",
            "unity_banner_placement_id",
            "unity_interstitial_placement_id",
            "applovin_banner_ad_unit_id",
            "applovin_interstitial_ad_unit_id",
            "applovin_native_ad_manual_unit_id",
            "applovin_banner_zone_id",
            "applovin_interstitial_zone_id",
            "ironSourceAppKey",
            "ironSourceBannerId",
            "ironSourceInterstitialId",
            "interstitial_ad_interval",
            "native_ad_interval",
            "native_ad_index",
            "date_time"
        }
    .end annotation

    move-object v0, p0

    .line 19
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ad_status"

    move-object v3, p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ad_type"

    move-object v3, p2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "backup_ads"

    move-object v3, p3

    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 22
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "admob_publisher_id"

    move-object v3, p4

    invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 23
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "admob_app_id"

    move-object v3, p5

    invoke-interface {v1, v2, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 24
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "admob_banner_unit_id"

    move-object v3, p6

    invoke-interface {v1, v2, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 25
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "admob_interstitial_unit_id"

    move-object v3, p7

    invoke-interface {v1, v2, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "admob_native_unit_id"

    move-object v3, p8

    invoke-interface {v1, v2, p8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 27
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "admob_app_open_ad_unit_id"

    move-object v3, p9

    invoke-interface {v1, v2, p9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ad_manager_banner_unit_id"

    move-object v3, p10

    invoke-interface {v1, v2, p10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 29
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ad_manager_interstitial_unit_id"

    move-object v3, p11

    invoke-interface {v1, v2, p11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ad_manager_native_unit_id"

    move-object/from16 v3, p12

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ad_manager_app_open_ad_unit_id"

    move-object/from16 v3, p13

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "fan_banner_unit_id"

    move-object/from16 v3, p14

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "fan_interstitial_unit_id"

    move-object/from16 v3, p15

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "fan_native_unit_id"

    move-object/from16 v3, p16

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "startapp_app_id"

    move-object/from16 v3, p17

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 36
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "unity_game_id"

    move-object/from16 v3, p18

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "unity_banner_placement_id"

    move-object/from16 v3, p19

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "unity_interstitial_placement_id"

    move-object/from16 v3, p20

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 39
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "applovin_banner_ad_unit_id"

    move-object/from16 v3, p21

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 40
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "applovin_interstitial_ad_unit_id"

    move-object/from16 v3, p22

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "applovin_native_ad_manual_unit_id"

    move-object/from16 v3, p23

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "applovin_banner_zone_id"

    move-object/from16 v3, p24

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "applovin_interstitial_zone_id"

    move-object/from16 v3, p25

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ironsource_app_key"

    move-object/from16 v3, p26

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ironsource_banner_id"

    move-object/from16 v3, p27

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "ironsource_interstitial_id"

    move-object/from16 v3, p28

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "interstitial_ad_interval"

    move/from16 v3, p29

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "native_ad_interval"

    move/from16 v3, p30

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "native_ad_index"

    move/from16 v3, p31

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "date_time"

    move-object/from16 v3, p32

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    iget-object v1, v0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setTestMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "test_mode"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "test_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateInterstitialAdCounter(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "counter"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "interstitial_ad_counter"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 197
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/AdsPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
