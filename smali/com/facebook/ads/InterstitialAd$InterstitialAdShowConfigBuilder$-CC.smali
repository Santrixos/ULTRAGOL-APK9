.class public final synthetic Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder$-CC;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static bridge synthetic $default$build(Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;)Lcom/facebook/ads/FullScreenAd$ShowAdConfig;
    .locals 1
    .param p0, "_this"    # Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;

    .line 137
    invoke-interface {p0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdShowConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialShowAdConfig;

    move-result-object v0

    return-object v0
.end method
