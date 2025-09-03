.class public Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
.super Ljava/lang/Object;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solodroid/ads/sdk/format/BannerAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdNetwork"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field private adMobBannerId:Ljava/lang/String;

.field private adNetwork:Ljava/lang/String;

.field private adStatus:Ljava/lang/String;

.field private adView:Lcom/google/android/gms/ads/AdView;

.field private appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

.field private appLovinBannerId:Ljava/lang/String;

.field private appLovinBannerZoneId:Ljava/lang/String;

.field private backupAdNetwork:Ljava/lang/String;

.field private darkTheme:Z

.field private fanAdView:Lcom/facebook/ads/AdView;

.field private fanBannerId:Ljava/lang/String;

.field private googleAdManagerBannerId:Ljava/lang/String;

.field private ironSourceBannerId:Ljava/lang/String;

.field private ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

.field ironSourceBannerView:Landroid/widget/FrameLayout;

.field private legacyGDPR:Z

.field private mopubBannerId:Ljava/lang/String;

.field private placementStatus:I

.field private unityBannerId:Ljava/lang/String;


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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adStatus:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->backupAdNetwork:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adMobBannerId:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->googleAdManagerBannerId:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanBannerId:Ljava/lang/String;

    .line 75
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->unityBannerId:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerId:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerZoneId:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->mopubBannerId:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->placementStatus:I

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->darkTheme:Z

    .line 82
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->legacyGDPR:Z

    .line 85
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;)Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->loadBannerAd()V

    return-object p0
.end method

.method public destroyAndDetachBanner()V
    .locals 2

    .line 818
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->placementStatus:I

    if-eqz v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    const-string v1, "ironsource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->backupAdNetwork:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerView:Landroid/widget/FrameLayout;

    const-string v1, "AdNetwork"

    if-eqz v0, :cond_1

    const-string v0, "ironSource banner is not null, ready to destroy"

    .line 821
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/IronSource;->destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 823
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "ironSource banner is null"

    .line 825
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic lambda$loadBackupBannerAd$2$com-solodroid-ads-sdk-format-BannerAd$Builder(Landroid/widget/FrameLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "adContainerView"
        }
    .end annotation

    .line 503
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    .line 504
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adMobBannerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 506
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 507
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/solodroid/ads/sdk/util/Tools;->getAdSize(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 508
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 509
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$8;

    invoke-direct {v1, p0, p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$8;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method synthetic lambda$loadBackupBannerAd$3$com-solodroid-ads-sdk-format-BannerAd$Builder(Landroid/widget/FrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "googleAdContainerView"
        }
    .end annotation

    .line 547
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 548
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->googleAdManagerBannerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 550
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 551
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/solodroid/ads/sdk/util/Tools;->getAdSize(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 552
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    .line 553
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    new-instance v1, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$9;

    invoke-direct {v1, p0, p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$9;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method synthetic lambda$loadBannerAd$0$com-solodroid-ads-sdk-format-BannerAd$Builder(Landroid/widget/FrameLayout;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "adContainerView"
        }
    .end annotation

    .line 170
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    .line 171
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adMobBannerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdUnitId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 173
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/solodroid/ads/sdk/util/Tools;->getAdSize(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 175
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 176
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adView:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$1;

    invoke-direct {v1, p0, p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$1;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method synthetic lambda$loadBannerAd$1$com-solodroid-ads-sdk-format-BannerAd$Builder(Landroid/widget/FrameLayout;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "googleAdContainerView"
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    .line 216
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->googleAdManagerBannerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 218
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 219
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/solodroid/ads/sdk/util/Tools;->getAdSize(Landroid/app/Activity;)Lcom/google/android/gms/ads/AdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 220
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    .line 221
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adManagerAdView:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    new-instance v1, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$2;

    invoke-direct {v1, p0, p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$2;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    return-void
.end method

.method public loadBackupBannerAd()V
    .locals 7

    .line 497
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AdNetwork"

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->placementStatus:I

    if-eqz v0, :cond_f

    .line 498
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->backupAdNetwork:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v2, "fan_bidding_ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v2, "applovin_discovery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_a
    const-string v2, "ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_b
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x0

    :goto_1
    const-string v2, " Banner Ad unit Id : "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 620
    :pswitch_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->startapp_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 621
    new-instance v2, Lcom/startapp/sdk/ads/banner/Banner;

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$11;

    invoke-direct {v4, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$11;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V

    invoke-direct {v2, v3, v4}, Lcom/startapp/sdk/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/sdk/ads/banner/BannerListener;)V

    .line 642
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 545
    :pswitch_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->google_ad_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 546
    new-instance v2, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda3;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 501
    :pswitch_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v3, Lcom/solodroid/ads/sdk/R$id;->admob_banner_view_container:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 502
    new-instance v3, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda2;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adMobBannerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 590
    :pswitch_3
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanBannerId:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanAdView:Lcom/facebook/ads/AdView;

    .line 591
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->fan_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 592
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 593
    new-instance v2, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$10;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$10;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V

    .line 615
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object v0

    .line 616
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    goto/16 :goto_4

    .line 737
    :pswitch_4
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->applovin_discovery_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 738
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 739
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 740
    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerZoneId:Ljava/lang/String;

    const-string v5, "zone_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-class v4, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 743
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 744
    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_2

    :cond_c
    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    .line 745
    :goto_2
    new-instance v3, Lcom/applovin/adview/AppLovinAdView;

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v3, v2, v4}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    .line 746
    new-instance v2, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$13;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$13;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v2}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 757
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 758
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    goto/16 :goto_4

    .line 767
    :pswitch_5
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->ironsource_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerView:Landroid/widget/FrameLayout;

    .line 768
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 769
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 770
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 771
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v2, v4, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 772
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_d

    .line 773
    new-instance v2, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$14;

    invoke-direct {v2, p0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$14;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 805
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    const-string v0, "IronSource.createBanner returned null"

    .line 807
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 679
    :pswitch_6
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v3, Lcom/solodroid/ads/sdk/R$id;->applovin_banner_view_container:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 680
    new-instance v3, Lcom/applovin/mediation/ads/MaxAdView;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerId:Ljava/lang/String;

    iget-object v6, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5, v6}, Lcom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 681
    new-instance v5, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$12;

    invoke-direct {v5, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$12;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v5}, Lcom/applovin/mediation/ads/MaxAdView;->setListener(Lcom/applovin/mediation/MaxAdViewAdListener;)V

    .line 724
    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/solodroid/ads/sdk/R$dimen;->applovin_banner_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 725
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Lcom/applovin/mediation/ads/MaxAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 726
    iget-boolean v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->darkTheme:Z

    if-eqz v4, :cond_e

    .line 727
    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/applovin/mediation/ads/MaxAdView;->setBackgroundColor(I)V

    goto :goto_3

    .line 729
    :cond_e
    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/applovin/mediation/ads/MaxAdView;->setBackgroundColor(I)V

    .line 731
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 732
    invoke-virtual {v3}, Lcom/applovin/mediation/ads/MaxAdView;->loadAd()V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v0, "Banner Ad is enabled"

    .line 811
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_f
    const-string v0, "Banner Ad is disabled"

    .line 813
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
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

.method public loadBannerAd()V
    .locals 7

    .line 164
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "AdNetwork"

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->placementStatus:I

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_6
    const-string v2, "fan_bidding_ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_7
    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v2, "mopub"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_9
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_a
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_b
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_c
    const-string v2, "applovin_discovery"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_d
    const-string v2, "ironsource"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_e
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v2, " Banner Ad unit Id : "

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 441
    :pswitch_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->ironsource_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerView:Landroid/widget/FrameLayout;

    .line 442
    sget-object v0, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 443
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcom/ironsource/mediationsdk/IronSource;->createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 444
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 445
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerView:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v2, v4, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_1

    .line 447
    new-instance v2, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$7;

    invoke-direct {v2, p0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$7;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setBannerListener(Lcom/ironsource/mediationsdk/sdk/BannerListener;)V

    .line 480
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/IronSource;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "IronSource.createBanner returned null"

    .line 482
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 410
    :pswitch_2
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->applovin_discovery_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 411
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    .line 412
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 413
    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerZoneId:Ljava/lang/String;

    const-string v5, "zone_id"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-class v4, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/ads/AdRequest$Builder;->addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;

    .line 416
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 417
    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    .line 418
    :goto_2
    new-instance v3, Lcom/applovin/adview/AppLovinAdView;

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v3, v2, v4}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    .line 419
    new-instance v2, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$6;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$6;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v2}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 431
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 432
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinAdView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    goto/16 :goto_4

    .line 351
    :pswitch_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v3, Lcom/solodroid/ads/sdk/R$id;->applovin_banner_view_container:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 352
    new-instance v3, Lcom/applovin/mediation/ads/MaxAdView;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerId:Ljava/lang/String;

    iget-object v6, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5, v6}, Lcom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 353
    new-instance v5, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$5;

    invoke-direct {v5, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$5;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v5}, Lcom/applovin/mediation/ads/MaxAdView;->setListener(Lcom/applovin/mediation/MaxAdViewAdListener;)V

    .line 397
    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/solodroid/ads/sdk/R$dimen;->applovin_banner_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 398
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Lcom/applovin/mediation/ads/MaxAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-boolean v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->darkTheme:Z

    if-eqz v4, :cond_3

    .line 400
    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/applovin/mediation/ads/MaxAdView;->setBackgroundColor(I)V

    goto :goto_3

    .line 402
    :cond_3
    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/applovin/mediation/ads/MaxAdView;->setBackgroundColor(I)V

    .line 404
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 405
    invoke-virtual {v3}, Lcom/applovin/mediation/ads/MaxAdView;->loadAd()V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 290
    :pswitch_4
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->startapp_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 291
    new-instance v2, Lcom/startapp/sdk/ads/banner/Banner;

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;

    invoke-direct {v4, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V

    invoke-direct {v2, v3, v4}, Lcom/startapp/sdk/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/sdk/ads/banner/BannerListener;)V

    .line 313
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 259
    :pswitch_5
    new-instance v0, Lcom/facebook/ads/AdView;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanBannerId:Ljava/lang/String;

    sget-object v4, Lcom/facebook/ads/AdSize;->BANNER_HEIGHT_50:Lcom/facebook/ads/AdSize;

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/ads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/ads/AdSize;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanAdView:Lcom/facebook/ads/AdView;

    .line 260
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->fan_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 261
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v2, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$3;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$3;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V

    .line 285
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->buildLoadAdConfig()Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/AdListener;)Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/AdView$AdViewLoadConfigBuilder;->build()Lcom/facebook/ads/AdView$AdViewLoadConfig;

    move-result-object v0

    .line 286
    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanAdView:Lcom/facebook/ads/AdView;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/AdView;->loadAd(Lcom/facebook/ads/AdView$AdViewLoadConfig;)V

    goto :goto_4

    .line 213
    :pswitch_6
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$id;->google_ad_banner_view_container:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 214
    new-instance v2, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 168
    :pswitch_7
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->activity:Landroid/app/Activity;

    sget v3, Lcom/solodroid/ads/sdk/R$id;->admob_banner_view_container:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 169
    new-instance v3, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adMobBannerId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v0, "Banner Ad is enabled"

    .line 490
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_4
    const-string v0, "Banner Ad is disabled"

    .line 492
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
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

.method public setAdMobBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adMobBannerId"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adMobBannerId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adNetwork"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStatus"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->adStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setAppLovinBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLovinBannerId"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerId:Ljava/lang/String;

    return-object p0
.end method

.method public setAppLovinBannerZoneId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLovinBannerZoneId"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->appLovinBannerZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupAdNetwork"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->backupAdNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setDarkTheme(Z)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "darkTheme"
        }
    .end annotation

    .line 154
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->darkTheme:Z

    return-object p0
.end method

.method public setFanBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fanBannerId"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->fanBannerId:Ljava/lang/String;

    return-object p0
.end method

.method public setGoogleAdManagerBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "googleAdManagerBannerId"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->googleAdManagerBannerId:Ljava/lang/String;

    return-object p0
.end method

.method public setIronSourceBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ironSourceBannerId"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerId:Ljava/lang/String;

    return-object p0
.end method

.method public setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyGDPR"
        }
    .end annotation

    .line 159
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->legacyGDPR:Z

    return-object p0
.end method

.method public setMopubBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mopubBannerId"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->mopubBannerId:Ljava/lang/String;

    return-object p0
.end method

.method public setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementStatus"
        }
    .end annotation

    .line 149
    iput p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->placementStatus:I

    return-object p0
.end method

.method public setUnityBannerId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/BannerAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unityBannerId"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->unityBannerId:Ljava/lang/String;

    return-object p0
.end method
