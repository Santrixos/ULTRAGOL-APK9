.class public Lcom/app/thestream/models/Ads;
.super Ljava/lang/Object;
.source "Ads.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public ad_manager_app_open_ad_unit_id:Ljava/lang/String;

.field public ad_manager_banner_unit_id:Ljava/lang/String;

.field public ad_manager_interstitial_unit_id:Ljava/lang/String;

.field public ad_manager_native_unit_id:Ljava/lang/String;

.field public ad_status:Ljava/lang/String;

.field public ad_type:Ljava/lang/String;

.field public admob_app_id:Ljava/lang/String;

.field public admob_app_open_ad_unit_id:Ljava/lang/String;

.field public admob_banner_unit_id:Ljava/lang/String;

.field public admob_interstitial_unit_id:Ljava/lang/String;

.field public admob_native_unit_id:Ljava/lang/String;

.field public admob_publisher_id:Ljava/lang/String;

.field public applovin_banner_ad_unit_id:Ljava/lang/String;

.field public applovin_banner_zone_id:Ljava/lang/String;

.field public applovin_interstitial_ad_unit_id:Ljava/lang/String;

.field public applovin_interstitial_zone_id:Ljava/lang/String;

.field public applovin_native_ad_manual_unit_id:Ljava/lang/String;

.field public backup_ads:Ljava/lang/String;

.field public date_time:Ljava/lang/String;

.field public fan_banner_unit_id:Ljava/lang/String;

.field public fan_interstitial_unit_id:Ljava/lang/String;

.field public fan_native_unit_id:Ljava/lang/String;

.field public interstitial_ad_interval:I

.field public ironsource_app_key:Ljava/lang/String;

.field public ironsource_banner_placement_name:Ljava/lang/String;

.field public ironsource_interstitial_placement_name:Ljava/lang/String;

.field public native_ad_index:I

.field public native_ad_interval:I

.field public startapp_app_id:Ljava/lang/String;

.field public test_mode:I

.field public unity_banner_placement_id:Ljava/lang/String;

.field public unity_game_id:Ljava/lang/String;

.field public unity_interstitial_placement_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ad_status:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ad_type:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->backup_ads:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->admob_publisher_id:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->admob_app_id:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->admob_banner_unit_id:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->admob_interstitial_unit_id:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->admob_native_unit_id:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->admob_app_open_ad_unit_id:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ad_manager_banner_unit_id:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ad_manager_interstitial_unit_id:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ad_manager_native_unit_id:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ad_manager_app_open_ad_unit_id:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->fan_banner_unit_id:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->fan_interstitial_unit_id:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->fan_native_unit_id:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->startapp_app_id:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->unity_game_id:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->unity_banner_placement_id:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->unity_interstitial_placement_id:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->applovin_banner_ad_unit_id:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->applovin_interstitial_ad_unit_id:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->applovin_native_ad_manual_unit_id:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->applovin_banner_zone_id:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->applovin_interstitial_zone_id:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ironsource_app_key:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ironsource_banner_placement_name:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->ironsource_interstitial_placement_name:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/app/thestream/models/Ads;->date_time:Ljava/lang/String;

    return-void
.end method
