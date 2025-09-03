.class Lcom/solodroid/ads/sdk/format/BannerAd$Builder$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->lambda$loadBannerAd$1$com-solodroid-ads-sdk-format-BannerAd$Builder(Landroid/widget/FrameLayout;)V
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

    .line 221
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$2;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$2;->val$googleAdContainerView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    .line 224
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 0

    .line 229
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

    .line 234
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 235
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$2;->val$googleAdContainerView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$2;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->loadBackupBannerAd()V

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    .line 241
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 246
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 247
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$2;->val$googleAdContainerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAdOpened()V
    .locals 0

    .line 252
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method
