.class public Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solodroid/ads/sdk/format/InterstitialAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdNetwork"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

.field private adMobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private adMobInterstitialId:Ljava/lang/String;

.field private adNetwork:Ljava/lang/String;

.field private adStatus:Ljava/lang/String;

.field public appLovinAd:Lcom/applovin/sdk/AppLovinAd;

.field public appLovinInterstitialAdDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

.field private appLovinInterstitialId:Ljava/lang/String;

.field private appLovinInterstitialZoneId:Ljava/lang/String;

.field private backupAdNetwork:Ljava/lang/String;

.field private counter:I

.field private fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

.field private fanInterstitialId:Ljava/lang/String;

.field private googleAdManagerInterstitialId:Ljava/lang/String;

.field private interval:I

.field private ironSourceInterstitialId:Ljava/lang/String;

.field private legacyGDPR:Z

.field private maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

.field private mopubInterstitialId:Ljava/lang/String;

.field private placementStatus:I

.field private retryAttempt:I

.field private startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

.field private unityInterstitialId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 72
    iput v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->counter:I

    const-string v1, ""

    .line 74
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adStatus:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adNetwork:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->backupAdNetwork:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adMobInterstitialId:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->googleAdManagerInterstitialId:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialId:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->unityInterstitialId:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialId:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialZoneId:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->mopubInterstitialId:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->ironSourceInterstitialId:Ljava/lang/String;

    .line 85
    iput v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->placementStatus:I

    const/4 v0, 0x3

    .line 86
    iput v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->interval:I

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->legacyGDPR:Z

    .line 91
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adMobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$002(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adMobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p1
.end method

.method static synthetic access$100(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-object p0
.end method

.method static synthetic access$102(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-object p1
.end method

.method static synthetic access$200(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/facebook/ads/InterstitialAd;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    return-object p0
.end method

.method static synthetic access$300(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->retryAttempt:I

    return p0
.end method

.method static synthetic access$302(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->retryAttempt:I

    return p1
.end method

.method static synthetic access$308(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)I
    .locals 2

    .line 59
    iget v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->retryAttempt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->retryAttempt:I

    return v0
.end method

.method static synthetic access$400(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/applovin/mediation/ads/MaxInterstitialAd;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadInterstitialAd()V

    return-object p0
.end method

.method public loadBackupInterstitialAd()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->placementStatus:I

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->backupAdNetwork:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "fan_bidding_ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_7
    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v2, "mopub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_9
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_a
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :sswitch_b
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_c
    const-string v2, "applovin_discovery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_d
    const-string v2, "ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_e
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 669
    :pswitch_1
    new-instance v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$14;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$14;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 706
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    goto/16 :goto_1

    .line 646
    :pswitch_2
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 647
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 648
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialZoneId:Ljava/lang/String;

    const-string v3, "zone_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-class v2, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 650
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$13;

    invoke-direct {v2, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$13;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 660
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialAdDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    goto/16 :goto_1

    .line 605
    :pswitch_3
    new-instance v0, Lcom/applovin/mediation/ads/MaxInterstitialAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialId:Ljava/lang/String;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/ads/MaxInterstitialAd;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    .line 606
    new-instance v1, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$12;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$12;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->setListener(Lcom/applovin/mediation/MaxAdListener;)V

    .line 642
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

    goto :goto_1

    .line 570
    :pswitch_4
    new-instance v0, Lcom/startapp/sdk/adsbase/StartAppAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    .line 571
    new-instance v1, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$11;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$11;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;->loadAd(Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    const-string v0, "AdNetwork"

    const-string v1, "load StartApp as backup Ad"

    .line 582
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 532
    :pswitch_5
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 533
    new-instance v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$10;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$10;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    .line 565
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    goto :goto_1

    .line 486
    :pswitch_6
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->googleAdManagerInterstitialId:Ljava/lang/String;

    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v2

    new-instance v3, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;

    invoke-direct {v3, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    goto :goto_1

    .line 451
    :pswitch_7
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adMobInterstitialId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    new-instance v3, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$8;

    invoke-direct {v3, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$8;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_e
        -0x3746d91d -> :sswitch_d
        -0x4dbe58 -> :sswitch_c
        0x18b13 -> :sswitch_b
        0x33af38 -> :sswitch_a
        0x58603fd -> :sswitch_9
        0x6342a1b -> :sswitch_8
        0x6a45775 -> :sswitch_7
        0x78c12d3 -> :sswitch_6
        0x3b19f957 -> :sswitch_5
        0x4650da37 -> :sswitch_4
        0x4e7cc27f -> :sswitch_3
        0x774f6b4c -> :sswitch_2
        0x77badb81 -> :sswitch_1
        0x78ab620d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public loadInterstitialAd()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->placementStatus:I

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "fan_bidding_ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v2, "applovin_discovery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v2, "ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 299
    :pswitch_0
    new-instance v0, Lcom/startapp/sdk/adsbase/StartAppAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    .line 300
    new-instance v1, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$4;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$4;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;->loadAd(Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    goto/16 :goto_1

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->googleAdManagerInterstitialId:Ljava/lang/String;

    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v2

    new-instance v3, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$2;

    invoke-direct {v3, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$2;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    goto/16 :goto_1

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adMobInterstitialId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    new-instance v3, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;

    invoke-direct {v3, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    goto/16 :goto_1

    .line 261
    :pswitch_3
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 262
    new-instance v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$3;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$3;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    .line 294
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    goto :goto_1

    .line 377
    :pswitch_4
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 378
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 379
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialZoneId:Ljava/lang/String;

    const-string v3, "zone_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-class v2, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 381
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$6;

    invoke-direct {v2, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$6;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 392
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialAdDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    goto :goto_1

    .line 401
    :pswitch_5
    new-instance v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$7;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$7;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setInterstitialListener(Lcom/ironsource/mediationsdk/sdk/InterstitialListener;)V

    .line 440
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    goto :goto_1

    .line 335
    :pswitch_6
    new-instance v0, Lcom/applovin/mediation/ads/MaxInterstitialAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialId:Ljava/lang/String;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/ads/MaxInterstitialAd;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    .line 336
    new-instance v1, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->setListener(Lcom/applovin/mediation/MaxAdListener;)V

    .line 373
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

    :cond_c
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_b
        -0x3746d91d -> :sswitch_a
        -0x4dbe58 -> :sswitch_9
        0x18b13 -> :sswitch_8
        0x58603fd -> :sswitch_7
        0x78c12d3 -> :sswitch_6
        0x3b19f957 -> :sswitch_5
        0x4650da37 -> :sswitch_4
        0x4e7cc27f -> :sswitch_3
        0x774f6b4c -> :sswitch_2
        0x77badb81 -> :sswitch_1
        0x78ab620d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAdMobInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adMobInterstitialId"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adMobInterstitialId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adNetwork"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStatus"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setAppLovinInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLovinInterstitialId"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialId:Ljava/lang/String;

    return-object p0
.end method

.method public setAppLovinInterstitialZoneId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLovinInterstitialZoneId"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupAdNetwork"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->backupAdNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setFanInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fanInterstitialId"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialId:Ljava/lang/String;

    return-object p0
.end method

.method public setGoogleAdManagerInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "googleAdManagerInterstitialId"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->googleAdManagerInterstitialId:Ljava/lang/String;

    return-object p0
.end method

.method public setInterval(I)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interval"
        }
    .end annotation

    .line 164
    iput p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->interval:I

    return-object p0
.end method

.method public setIronSourceInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ironSourceInterstitialId"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->ironSourceInterstitialId:Ljava/lang/String;

    return-object p0
.end method

.method public setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyGDPR"
        }
    .end annotation

    .line 169
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->legacyGDPR:Z

    return-object p0
.end method

.method public setMopubInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mopubInterstitialId"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->mopubInterstitialId:Ljava/lang/String;

    return-object p0
.end method

.method public setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementStatus"
        }
    .end annotation

    .line 159
    iput p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->placementStatus:I

    return-object p0
.end method

.method public setUnityInterstitialId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unityInterstitialId"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->unityInterstitialId:Ljava/lang/String;

    return-object p0
.end method

.method public show()V
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->showInterstitialAd()V

    return-void
.end method

.method public showBackupInterstitialAd()V
    .locals 3

    .line 828
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->placementStatus:I

    if-eqz v0, :cond_1

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show Backup Interstitial Ad ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->backupAdNetwork:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdNetwork"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->backupAdNetwork:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "fan_bidding_ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_7
    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_8
    const-string v2, "mopub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_9
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_a
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :sswitch_b
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_c
    const-string v2, "applovin_discovery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_d
    const-string v2, "ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_e
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 903
    :pswitch_1
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->ironSourceInterstitialId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial(Ljava/lang/String;)V

    goto :goto_1

    .line 892
    :pswitch_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialAdDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    if-eqz v0, :cond_1

    .line 893
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_1

    .line 886
    :pswitch_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->showAd()V

    goto :goto_1

    .line 852
    :pswitch_4
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/StartAppAd;->showAd()Z

    goto :goto_1

    .line 846
    :pswitch_5
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    goto :goto_1

    .line 840
    :pswitch_6
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_1

    .line 841
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->show(Landroid/app/Activity;)V

    goto :goto_1

    .line 833
    :pswitch_7
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adMobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_1

    .line 834
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    :cond_1
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_e
        -0x3746d91d -> :sswitch_d
        -0x4dbe58 -> :sswitch_c
        0x18b13 -> :sswitch_b
        0x33af38 -> :sswitch_a
        0x58603fd -> :sswitch_9
        0x6342a1b -> :sswitch_8
        0x6a45775 -> :sswitch_7
        0x78c12d3 -> :sswitch_6
        0x3b19f957 -> :sswitch_5
        0x4650da37 -> :sswitch_4
        0x4e7cc27f -> :sswitch_3
        0x774f6b4c -> :sswitch_2
        0x77badb81 -> :sswitch_1
        0x78ab620d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public showInterstitialAd()V
    .locals 5

    .line 717
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->placementStatus:I

    if-eqz v0, :cond_14

    .line 718
    iget v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->counter:I

    iget v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->interval:I

    const/4 v2, 0x1

    const-string v3, "AdNetwork"

    if-ne v0, v1, :cond_13

    .line 719
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "fan_bidding_admob"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "fan_bidding_ad_manager"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "fan_bidding_applovin_max"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "startapp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "applovin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v4, "google_ad_manager"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v4, "fan_bidding_ironsource"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v4, "admob"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v4, "fan"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v4, "applovin_discovery"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v4, "ironsource"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v4, "applovin_max"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 753
    :pswitch_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    if-eqz v0, :cond_c

    .line 754
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/StartAppAd;->showAd()Z

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startapp interstitial not null [counter] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 757
    :cond_c
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->showBackupInterstitialAd()V

    const-string v0, "startapp interstitial null"

    .line 758
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 733
    :pswitch_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_d

    .line 734
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->show(Landroid/app/Activity;)V

    const-string v0, "ad manager interstitial not null"

    .line 735
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 737
    :cond_d
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->showBackupInterstitialAd()V

    const-string v0, "ad manager interstitial null"

    .line 738
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 722
    :pswitch_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->adMobInterstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_e

    .line 723
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

    const-string v0, "admob interstitial not null"

    .line 724
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 726
    :cond_e
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->showBackupInterstitialAd()V

    const-string v0, "admob interstitial null"

    .line 727
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 743
    :pswitch_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 744
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->fanInterstitialAd:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    const-string v0, "fan interstitial not null"

    .line 745
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 747
    :cond_f
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->showBackupInterstitialAd()V

    const-string v0, "fan interstitial null"

    .line 748
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 801
    :pswitch_4
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinInterstitialAdDialog:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    if-eqz v0, :cond_12

    .line 802
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinAd:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_1

    .line 812
    :pswitch_5
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialReady()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 813
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->ironSourceInterstitialId:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->showInterstitial(Ljava/lang/String;)V

    goto :goto_1

    .line 815
    :cond_10
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->showBackupInterstitialAd()V

    goto :goto_1

    .line 791
    :pswitch_6
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->isReady()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ready : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->maxInterstitialAd:Lcom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->showAd()V

    const-string v0, "show ad"

    .line 794
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 796
    :cond_11
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->showBackupInterstitialAd()V

    .line 819
    :cond_12
    :goto_1
    iput v2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->counter:I

    goto :goto_2

    :cond_13
    add-int/2addr v0, v2

    .line 821
    iput v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->counter:I

    .line 823
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current counter : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->counter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_b
        -0x3746d91d -> :sswitch_a
        -0x4dbe58 -> :sswitch_9
        0x18b13 -> :sswitch_8
        0x58603fd -> :sswitch_7
        0x78c12d3 -> :sswitch_6
        0x3b19f957 -> :sswitch_5
        0x4650da37 -> :sswitch_4
        0x4e7cc27f -> :sswitch_3
        0x774f6b4c -> :sswitch_2
        0x77badb81 -> :sswitch_1
        0x78ab620d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
