.class public Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;
.super Ljava/lang/Object;
.source "AppLovinCustomEventBanner.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventBanner;


# static fields
.field private static final BANNER_HEIGHT_OFFSET_TOLERANCE:I = 0xa

.field private static final BANNER_STANDARD_HEIGHT:I = 0x32

.field private static final DEFAULT_ZONE:Ljava/lang/String; = ""

.field private static final LOGGING_ENABLED:Z = true


# instance fields
.field private adView:Lcom/applovin/adview/AppLovinAdView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;)Lcom/applovin/adview/AppLovinAdView;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    return-object p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 33
    invoke-static {p0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->toAdMobErrorCode(I)I

    move-result p0

    return p0
.end method

.method private appLovinAdSizeFromAdMobAdSize(Lcom/google/android/gms/ads/AdSize;)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adSize"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getWidth()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    sget-object v1, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/google/android/gms/ads/AdSize;->LARGE_BANNER:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_1

    goto :goto_1

    .line 145
    :cond_1
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 147
    :cond_2
    sget-object v0, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 153
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdSize;->getHeight()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x32

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_4

    .line 155
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_5
    :goto_1
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1
.end method

.method static synthetic lambda$requestBannerAd$0(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "customEventBannerListener",
            "ad"
        }
    .end annotation

    const/4 p1, 0x3

    const-string v0, "Banner clicked"

    .line 111
    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .line 113
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdOpened()V

    .line 114
    invoke-interface {p0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLeftApplication()V

    return-void
.end method

.method private static log(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "priority",
            "message"
        }
    .end annotation

    const-string v0, "AppLovinBanner"

    .line 46
    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static toAdMobErrorCode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "applovinErrorCode"
        }
    .end annotation

    const/16 v0, 0xcc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 v0, -0x3f1

    if-eq p0, v0, :cond_2

    const/16 v0, -0x3e9

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->pause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->resume()V

    :cond_0
    return-void
.end method

.method public requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "customEventBannerListener",
            "serverParameter",
            "adSize",
            "mediationAdRequest",
            "customEventExtras"
        }
    .end annotation

    .line 64
    sget p3, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    const/4 p5, 0x0

    const/4 v0, 0x6

    const/16 v1, 0x2c6

    if-ge p3, v1, :cond_0

    instance-of p3, p1, Landroid/app/Activity;

    if-nez p3, :cond_0

    const-string p1, "Unable to request AppLovin banner. Invalid context provided."

    .line 65
    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .line 66
    invoke-interface {p2, p5}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    return-void

    :cond_0
    const/4 p3, 0x3

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting AppLovin banner of size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .line 72
    invoke-direct {p0, p4}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->appLovinAdSizeFromAdMobAdSize(Lcom/google/android/gms/ads/AdSize;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 74
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p4

    const-string p5, "AdMob-2.2.1"

    .line 75
    invoke-virtual {p4, p5}, Lcom/applovin/sdk/AppLovinSdk;->setPluginVersion(Ljava/lang/String;)V

    .line 79
    sget p4, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    const/16 p5, 0x2ee

    if-lt p4, p5, :cond_1

    if-eqz p6, :cond_1

    const-string p4, "zone_id"

    invoke-virtual {p6, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 80
    invoke-virtual {p6, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const-string p4, ""

    .line 85
    :goto_0
    new-instance p5, Lcom/applovin/adview/AppLovinAdView;

    invoke-direct {p5, p3, p4, p1}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Landroid/content/Context;)V

    iput-object p5, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    .line 86
    new-instance p1, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$1;

    invoke-direct {p1, p0, p2}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$1;-><init>(Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V

    invoke-virtual {p5, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 99
    iget-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    new-instance p3, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$2;

    invoke-direct {p3, p0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$2;-><init>(Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;)V

    invoke-virtual {p1, p3}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 110
    iget-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    new-instance p3, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V

    invoke-virtual {p1, p3}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 117
    iget-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {p1}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    goto :goto_1

    :cond_2
    const-string p1, "Unable to request AppLovin banner"

    .line 119
    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .line 120
    invoke-interface {p2, p5}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    :goto_1
    return-void
.end method
