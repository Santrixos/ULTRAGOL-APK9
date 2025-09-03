.class Lcom/solodroid/ads/sdk/format/BannerAd$Builder$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->lambda$loadBannerAd$0$com-solodroid-ads-sdk-format-BannerAd$Builder(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

.field final synthetic val$adContainerView:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adContainerView"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$1;->val$adContainerView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 0

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 186
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$1;->val$adContainerView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 187
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->loadBackupBannerAd()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$1;->val$adContainerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method
