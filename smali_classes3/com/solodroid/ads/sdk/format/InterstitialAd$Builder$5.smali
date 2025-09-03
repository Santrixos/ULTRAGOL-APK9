.class Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/applovin/mediation/MaxAdListener;


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

    .line 336
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdLoadFailed$0$com-solodroid-ads-sdk-format-InterstitialAd$Builder$5()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$400(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/applovin/mediation/ads/MaxInterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

    return-void
.end method

.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ad",
            "error"
        }
    .end annotation

    .line 368
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$400(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/applovin/mediation/ads/MaxInterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 349
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$400(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)Lcom/applovin/mediation/ads/MaxInterstitialAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "adUnitId",
            "error"
        }
    .end annotation

    .line 359
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$308(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)I

    .line 360
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-static {p2}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$300(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)I

    move-result p2

    const/4 v0, 0x6

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 361
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5$$ExternalSyntheticLambda0;-><init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 362
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadBackupInterstitialAd()V

    const-string p1, "AdNetwork"

    const-string p2, "failed to load AppLovin Interstitial"

    .line 363
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 339
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->access$302(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;I)I

    const-string p1, "AdNetwork"

    const-string v0, "AppLovin Interstitial Ad loaded..."

    .line 340
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
