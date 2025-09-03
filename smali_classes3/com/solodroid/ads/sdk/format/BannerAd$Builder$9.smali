.class Lcom/solodroid/ads/sdk/format/BannerAd$Builder$9;
.super Lcom/google/android/gms/ads/AdListener;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->lambda$loadBackupBannerAd$3$com-solodroid-ads-sdk-format-BannerAd$Builder(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

.field final synthetic val$googleAdContainerView:Landroid/widget/FrameLayout;


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
            "val$googleAdContainerView"
        }
    .end annotation

    .line 553
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$9;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$9;->val$googleAdContainerView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .line 556
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 0

    .line 561
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loadAdError"
        }
    .end annotation

    .line 566
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 567
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$9;->val$googleAdContainerView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    .line 572
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 577
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 578
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$9;->val$googleAdContainerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .line 583
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method
