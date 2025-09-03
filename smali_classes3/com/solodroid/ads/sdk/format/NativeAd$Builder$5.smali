.class Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;
.super Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->loadNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-direct {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ad"
        }
    .end annotation

    return-void
.end method

.method public onNativeAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "adUnitId",
            "error"
        }
    .end annotation

    .line 453
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->loadBackupNativeAd()V

    .line 454
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to load Max Native Ad with message : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and error code : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdNetwork"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNativeAdLoaded(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;Lcom/applovin/mediation/MaxAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nativeAdView",
            "ad"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->maxAd:Lcom/applovin/mediation/MaxAd;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->maxAd:Lcom/applovin/mediation/MaxAd;

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->destroy(Lcom/applovin/mediation/MaxAd;)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iput-object p2, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->maxAd:Lcom/applovin/mediation/MaxAd;

    .line 442
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p2, p2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 443
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p2, p2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 444
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 445
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "AdNetwork"

    const-string p2, "Max Native Ad loaded successfully"

    .line 447
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
