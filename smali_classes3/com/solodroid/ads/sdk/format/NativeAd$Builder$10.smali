.class Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;
.super Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->loadBackupNativeAd()V
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

    .line 742
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

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
    .locals 0
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

    .line 746
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->maxAd:Lcom/applovin/mediation/MaxAd;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->maxAd:Lcom/applovin/mediation/MaxAd;

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->destroy(Lcom/applovin/mediation/MaxAd;)V

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iput-object p2, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->maxAd:Lcom/applovin/mediation/MaxAd;

    .line 754
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p2, p2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 755
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p2, p2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 756
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 757
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
