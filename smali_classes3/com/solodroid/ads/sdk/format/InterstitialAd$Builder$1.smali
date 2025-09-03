.class Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadInterstitialAd()V
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

    .line 178
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadAdError"
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdNetwork"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$002(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 206
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadBackupInterstitialAd()V

    const-string p1, "Failed load AdMob Interstitial Ad"

    .line 207
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interstitialAd"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$002(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 182
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$000(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    new-instance v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1$1;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1$1;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    const-string p1, "AdNetwork"

    const-string v0, "onAdLoaded"

    .line 199
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 178
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$1;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
