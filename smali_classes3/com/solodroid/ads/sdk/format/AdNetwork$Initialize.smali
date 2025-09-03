.class public Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
.super Ljava/lang/Object;
.source "AdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solodroid/ads/sdk/format/AdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Initialize"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "AdNetwork"


# instance fields
.field activity:Landroid/app/Activity;

.field private adMobAppId:Ljava/lang/String;

.field private adNetwork:Ljava/lang/String;

.field private adStatus:Ljava/lang/String;

.field private appLovinSdkKey:Ljava/lang/String;

.field private backupAdNetwork:Ljava/lang/String;

.field private debug:Z

.field private ironSourceAppKey:Ljava/lang/String;

.field private mopubBannerId:Ljava/lang/String;

.field private startappAppId:Ljava/lang/String;

.field private unityGameId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/solodroid/ads/sdk/format/AdNetwork;

    return-void
.end method

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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adStatus:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adNetwork:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->backupAdNetwork:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adMobAppId:Ljava/lang/String;

    const-string v1, "0"

    .line 48
    iput-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->startappAppId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->unityGameId:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->appLovinSdkKey:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->mopubBannerId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->ironSourceAppKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->debug:Z

    .line 56
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic lambda$initAds$0(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "initializationStatus"
        }
    .end annotation

    .line 123
    invoke-interface {p0}, Lcom/google/android/gms/ads/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object p0

    .line 124
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/initialization/AdapterStatus;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    .line 127
    invoke-interface {v2}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-interface {v2}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getLatency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Adapter name: %s, Description: %s, Latency: %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdNetwork"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$initAds$1(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "config"
        }
    .end annotation

    return-void
.end method

.method static synthetic lambda$initBackupAds$2(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "initializationStatus"
        }
    .end annotation

    .line 200
    invoke-interface {p0}, Lcom/google/android/gms/ads/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object p0

    .line 201
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/initialization/AdapterStatus;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    .line 204
    invoke-interface {v2}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-interface {v2}, Lcom/google/android/gms/ads/initialization/AdapterStatus;->getLatency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "Adapter name: %s, Description: %s, Latency: %d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdNetwork"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$initBackupAds$3(Lcom/applovin/sdk/AppLovinSdkConfiguration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "config"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public build()Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->initAds()V

    .line 61
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->initBackupAds()V

    return-object p0
.end method

.method public initAds()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 117
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    const-string v2, "fan_bidding_ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_a
    const-string v2, "applovin_discovery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string v2, "ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_c
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->startappAppId:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 137
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->debug:Z

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setTestAdsEnabled(Z)V

    .line 138
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppAd;->disableSplash()V

    .line 139
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v4, "pas"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto/16 :goto_1

    .line 142
    :pswitch_1
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->debug:Z

    if-eqz v0, :cond_d

    .line 143
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Unity Ads Removal"

    .line 144
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$string;->unity_ads_announcement:I

    .line 145
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DISMISS"

    .line 146
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    goto :goto_1

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 130
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->debug:Z

    invoke-static {v0, v1}, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;->initializeAd(Landroid/content/Context;Z)V

    goto :goto_1

    .line 133
    :pswitch_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->debug:Z

    invoke-static {v0, v1}, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;->initializeAd(Landroid/content/Context;Z)V

    goto :goto_1

    .line 174
    :pswitch_4
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    goto :goto_1

    .line 183
    :pswitch_5
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->ironSourceAppKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :pswitch_6
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    const-string v1, "max"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->setMediationProvider(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    .line 170
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;->initialize(Landroid/content/Context;)V

    .line 188
    :cond_d
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is selected as Primary Ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdNetwork"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_c
        -0x3746d91d -> :sswitch_b
        -0x4dbe58 -> :sswitch_a
        0x18b13 -> :sswitch_9
        0x58603fd -> :sswitch_8
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
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public initBackupAds()V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->backupAdNetwork:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

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

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "fan_bidding_ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_7
    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_8
    const-string v2, "mopub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

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

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_b
    const-string v2, "applovin_discovery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_c
    const-string v2, "ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_d
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->setUserId(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->ironSourceAppKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :pswitch_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    goto :goto_1

    .line 234
    :pswitch_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    const-string v1, "max"

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->setMediationProvider(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Lcom/applovin/sdk/AppLovinSdk$SdkInitializationListener;)V

    .line 237
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;->initialize(Landroid/content/Context;)V

    goto :goto_1

    .line 210
    :pswitch_4
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->startappAppId:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 211
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->debug:Z

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setTestAdsEnabled(Z)V

    .line 212
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppAd;->disableSplash()V

    .line 213
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v4, "pas"

    invoke-static {v0, v4, v1, v2, v3}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    goto :goto_1

    .line 199
    :pswitch_5
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 207
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/helper/AudienceNetworkInitializeHelper;->initialize(Landroid/content/Context;)V

    .line 259
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->backupAdNetwork:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] is selected as Backup Ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdNetwork"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_d
        -0x3746d91d -> :sswitch_c
        -0x4dbe58 -> :sswitch_b
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
        :pswitch_5
        :pswitch_5
        :pswitch_5
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

.method public setAdMobAppId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adMobAppId"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adMobAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adNetwork"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStatus"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->adStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setAppLovinSdkKey(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLovinSdkKey"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->appLovinSdkKey:Ljava/lang/String;

    return-object p0
.end method

.method public setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupAdNetwork"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->backupAdNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setDebug(Z)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debug"
        }
    .end annotation

    .line 111
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->debug:Z

    return-object p0
.end method

.method public setIronSourceAppKey(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ironSourceAppKey"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->ironSourceAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public setMopubBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mopubBannerId"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->mopubBannerId:Ljava/lang/String;

    return-object p0
.end method

.method public setStartappAppId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startappAppId"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->startappAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setUnityGameId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unityGameId"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AdNetwork$Initialize;->unityGameId:Ljava/lang/String;

    return-object p0
.end method
