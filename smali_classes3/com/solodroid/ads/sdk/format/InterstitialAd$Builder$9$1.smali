.class Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 491
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9$1;->this$1:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .line 494
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 499
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdDismissedFullScreenContent()V

    .line 500
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9$1;->this$1:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadInterstitialAd()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 505
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    .line 510
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdImpression()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 515
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->onAdShowedFullScreenContent()V

    .line 516
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9$1;->this$1:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$9;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$102(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    const-string v0, "AdNetwork"

    const-string v1, "The ad was shown."

    .line 517
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
