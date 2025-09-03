.class public final synthetic Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;


# direct methods
.method public synthetic constructor <init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5$$ExternalSyntheticLambda0;->f$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5$$ExternalSyntheticLambda0;->f$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->lambda$onAdLoadFailed$0$com-solodroid-ads-sdk-format-InterstitialAd$Builder$5()V

    return-void
.end method
