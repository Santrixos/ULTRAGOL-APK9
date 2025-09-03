.class public Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;
.super Ljava/lang/Object;
.source "AppLovinCustomEventInterstitial.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitial;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# static fields
.field private static final DEFAULT_ZONE:Ljava/lang/String; = ""

.field private static final GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/applovin/sdk/AppLovinAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final GLOBAL_INTERSTITIAL_ADS_LOCK:Ljava/lang/Object;

.field private static final LOGGING_ENABLED:Z = true

.field private static final UI_HANDLER:Landroid/os/Handler;


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

.field private zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->UI_HANDLER:Landroid/os/Handler;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dequeueAd(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAd;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "zoneId"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 67
    :try_start_0
    sget-object v2, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    if-eqz p0, :cond_0

    .line 68
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/applovin/sdk/AppLovinAd;

    .line 72
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static enqueueAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ad",
            "zoneId"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    if-nez v2, :cond_0

    .line 80
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 81
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
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

    const-string v0, "AppLovinInterstitial"

    .line 89
    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 106
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 108
    :cond_0
    sget-object v0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->UI_HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
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
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appLovinAd"
        }
    .end annotation

    const/4 p1, 0x3

    const-string v0, "Interstitial clicked"

    .line 218
    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 219
    iget-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLeftApplication()V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appLovinAd"
        }
    .end annotation

    const/4 p1, 0x3

    const-string v0, "Interstitial displayed"

    .line 206
    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdOpened()V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appLovinAd"
        }
    .end annotation

    const/4 p1, 0x3

    const-string v0, "Interstitial dismissed"

    .line 212
    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdClosed()V

    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ad"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial did load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->enqueueAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    .line 194
    new-instance p1, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial$$ExternalSyntheticLambda0;-><init>(Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;)V

    invoke-static {p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial failed to load with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 200
    new-instance v0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial$$ExternalSyntheticLambda1;-><init>(Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;I)V

    invoke-static {v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$adReceived$0$com-solodroid-ads-sdk-helper-AppLovinCustomEventInterstitial()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdLoaded()V

    return-void
.end method

.method synthetic lambda$failedToReceiveAd$1$com-solodroid-ads-sdk-helper-AppLovinCustomEventInterstitial(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->toAdMobErrorCode(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "listener",
            "serverParameter",
            "mediationAdRequest",
            "customEventExtras"
        }
    .end annotation

    const/4 p3, 0x3

    const-string p4, "Requesting AppLovin interstitial..."

    .line 115
    invoke-static {p3, p4}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 118
    sget p4, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    const/16 v0, 0x2d0

    if-ge p4, v0, :cond_0

    instance-of p4, p1, Landroid/app/Activity;

    if-nez p4, :cond_0

    const/4 p1, 0x6

    const-string p3, "Unable to request AppLovin interstitial. Invalid context provided."

    .line 119
    invoke-static {p1, p3}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 120
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    return-void

    .line 126
    :cond_0
    iput-object p2, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    .line 127
    iput-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->context:Landroid/content/Context;

    .line 129
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    const-string p2, "AdMob-2.2.1"

    .line 130
    invoke-virtual {p1, p2}, Lcom/applovin/sdk/AppLovinSdk;->setPluginVersion(Ljava/lang/String;)V

    .line 133
    sget p2, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    const/16 p4, 0x2ee

    const-string v0, ""

    if-lt p2, p4, :cond_1

    if-eqz p5, :cond_1

    const-string p2, "zone_id"

    invoke-virtual {p5, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 134
    invoke-virtual {p5, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_1
    iput-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    .line 140
    :goto_0
    iget-object p2, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-static {p2}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->dequeueAd(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Found preloaded ad for zone: {"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "}"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 143
    invoke-virtual {p0, p2}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_1

    .line 146
    :cond_2
    iget-object p2, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 147
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    sget-object p2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {p1, p2, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    iget-object p2, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-interface {p1, p2, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_1
    return-void
.end method

.method public showInterstitial()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->dequeueAd(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v1

    .line 163
    invoke-interface {v1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 164
    invoke-interface {v1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 165
    invoke-interface {v1, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 166
    invoke-interface {v1, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    const-string v1, "Failed to show an AppLovin interstitial before one was loaded"

    .line 168
    invoke-static {v0, v1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->listener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventInterstitialListener;->onAdFailedToLoad(I)V

    :goto_0
    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ad"
        }
    .end annotation

    const/4 p1, 0x3

    const-string v0, "Interstitial video playback began"

    .line 224
    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "ad",
            "percentViewed",
            "fullyWatched"
        }
    .end annotation

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Interstitial video playback ended at playback percent: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    invoke-static {p2, p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    return-void
.end method
