.class Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;
.super Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;
.source "NativeAdViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->loadNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

.field final synthetic val$adManagerNativeId:Ljava/lang/String;

.field final synthetic val$adMobNativeId:Ljava/lang/String;

.field final synthetic val$adStatus:Ljava/lang/String;

.field final synthetic val$appLovinNativeId:Ljava/lang/String;

.field final synthetic val$backupAdNetwork:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$darkTheme:Z

.field final synthetic val$fanNativeId:Ljava/lang/String;

.field final synthetic val$legacyGDPR:Z

.field final synthetic val$nativeAdStyle:Ljava/lang/String;

.field final synthetic val$placementStatus:I


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$nativeAdStyle",
            "val$legacyGDPR",
            "val$darkTheme",
            "val$appLovinNativeId",
            "val$fanNativeId",
            "val$adManagerNativeId",
            "val$adMobNativeId",
            "val$backupAdNetwork",
            "val$placementStatus",
            "val$adStatus",
            "val$context"
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$adStatus:Ljava/lang/String;

    iput p4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$placementStatus:I

    iput-object p5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$backupAdNetwork:Ljava/lang/String;

    iput-object p6, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$adMobNativeId:Ljava/lang/String;

    iput-object p7, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$adManagerNativeId:Ljava/lang/String;

    iput-object p8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$fanNativeId:Ljava/lang/String;

    iput-object p9, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$appLovinNativeId:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$darkTheme:Z

    iput-boolean p11, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$legacyGDPR:Z

    iput-object p12, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$nativeAdStyle:Ljava/lang/String;

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
    .locals 12
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

    .line 391
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$adStatus:Ljava/lang/String;

    iget v3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$placementStatus:I

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$backupAdNetwork:Ljava/lang/String;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$adMobNativeId:Ljava/lang/String;

    iget-object v6, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$adManagerNativeId:Ljava/lang/String;

    iget-object v7, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$fanNativeId:Ljava/lang/String;

    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$appLovinNativeId:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$darkTheme:Z

    iget-boolean v10, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$legacyGDPR:Z

    iget-object v11, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->val$nativeAdStyle:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->loadBackupNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 392
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

    .line 372
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->maxNativeAd:Lcom/applovin/mediation/MaxAd;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->maxNativeAd:Lcom/applovin/mediation/MaxAd;

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->destroy(Lcom/applovin/mediation/MaxAd;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iput-object p2, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->maxNativeAd:Lcom/applovin/mediation/MaxAd;

    .line 380
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p2, p2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 381
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p2, p2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->applovinNativeAd:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "AdNetwork"

    const-string p2, "Max Native Ad loaded successfully"

    .line 385
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
