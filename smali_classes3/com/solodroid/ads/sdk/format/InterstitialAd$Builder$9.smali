.class Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadBackupInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadAdError"
        }
    .end annotation

    .line 524
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 525
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$102(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    const-string p1, "AdNetwork"

    const-string v0, "Failed load Ad Manager Interstitial Ad"

    .line 526
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interstitialAd"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$100(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;->onAdLoaded(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$102(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    .line 491
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$100(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-result-object p1

    new-instance v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9$1;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9$1;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "interstitialAd"
        }
    .end annotation

    .line 486
    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    return-void
.end method
