.class public Lcom/google/ads/mediation/ironsource/IronSourceAdapter;
.super Ljava/lang/Object;
.source "IronSourceAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationInterstitialAdapter;
.implements Lcom/google/ads/mediation/ironsource/IronSourceAdapterListener;


# instance fields
.field private instanceID:Ljava/lang/String;

.field private interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->instanceID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->instanceID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->interstitialListener:Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;

    return-object p1
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    .line 186
    sget-object v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;

    invoke-direct {v0, p0, p1}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$8;-><init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;Lcom/google/android/gms/ads/AdError;)V

    invoke-static {v0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->sendEventOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 200
    sget-object v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onInterstitialAdClicked(Ljava/lang/String;)V
    .locals 3

    .line 168
    sget-object v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "IronSource Interstitial ad clicked for instance ID: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance p1, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$7;

    invoke-direct {p1, p0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$7;-><init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)V

    invoke-static {p1}, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->sendEventOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdClosed(Ljava/lang/String;)V
    .locals 3

    .line 134
    sget-object v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "IronSource Interstitial ad closed for instance ID: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p1, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$5;

    invoke-direct {p1, p0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$5;-><init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)V

    invoke-static {p1}, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->sendEventOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 101
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    .line 102
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.ironsource.mediationsdk"

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    const-string p1, "IronSource failed to load interstitial ad for instance ID: %s. Error: %s"

    .line 104
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 106
    sget-object p2, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance p1, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$3;

    invoke-direct {p1, p0, v0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$3;-><init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;Lcom/google/android/gms/ads/AdError;)V

    invoke-static {p1}, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->sendEventOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdOpened(Ljava/lang/String;)V
    .locals 3

    .line 120
    sget-object v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "IronSource Interstitial ad opened for instance ID: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance p1, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$4;

    invoke-direct {p1, p0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$4;-><init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)V

    invoke-static {p1}, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->sendEventOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdReady(Ljava/lang/String;)V
    .locals 3

    .line 87
    sget-object v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "IronSource Interstitial ad loaded for instance ID: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance p1, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$2;

    invoke-direct {p1, p0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$2;-><init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)V

    invoke-static {p1}, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->sendEventOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdShowFailed(Ljava/lang/String;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 3

    .line 148
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    .line 149
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "com.ironsource.mediationsdk"

    invoke-direct {v0, v1, p2, v2}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "IronSource failed to show interstitial ad for instance ID: %s. Error: %s"

    .line 151
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 153
    sget-object p2, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance p1, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$6;

    invoke-direct {p1, p0}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$6;-><init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;)V

    invoke-static {p1}, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->sendEventOnUIThread(Ljava/lang/Runnable;)V

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

.method public requestInterstitialAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
    .locals 1

    const-string p4, "appKey"

    .line 44
    invoke-virtual {p3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 45
    invoke-static {}, Lcom/google/ads/mediation/ironsource/IronSourceManager;->getInstance()Lcom/google/ads/mediation/ironsource/IronSourceManager;

    move-result-object p5

    new-instance v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/google/ads/mediation/ironsource/IronSourceAdapter$1;-><init>(Lcom/google/ads/mediation/ironsource/IronSourceAdapter;Landroid/os/Bundle;Lcom/google/android/gms/ads/mediation/MediationInterstitialListener;)V

    invoke-virtual {p5, p1, p4, v0}, Lcom/google/ads/mediation/ironsource/IronSourceManager;->initIronSourceSDK(Landroid/content/Context;Ljava/lang/String;Lcom/google/ads/mediation/ironsource/IronSourceManager$InitializationCallback;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 4

    .line 67
    sget-object v0, Lcom/google/ads/mediation/ironsource/IronSourceAdapterUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->instanceID:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Showing IronSource interstitial ad for instance ID: %s"

    .line 68
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/google/ads/mediation/ironsource/IronSourceManager;->getInstance()Lcom/google/ads/mediation/ironsource/IronSourceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/ironsource/IronSourceAdapter;->instanceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/ironsource/IronSourceManager;->showInterstitial(Ljava/lang/String;)V

    return-void
.end method
