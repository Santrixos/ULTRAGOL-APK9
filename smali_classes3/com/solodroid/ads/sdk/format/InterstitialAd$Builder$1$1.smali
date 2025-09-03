.class Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1$1;->this$1:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1$1;->this$1:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadInterstitialAd()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    const-string p1, "AdNetwork"

    const-string v0, "The ad failed to show."

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1$1;->this$1:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$002(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    const-string v0, "AdNetwork"

    const-string v1, "The ad was shown."

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
