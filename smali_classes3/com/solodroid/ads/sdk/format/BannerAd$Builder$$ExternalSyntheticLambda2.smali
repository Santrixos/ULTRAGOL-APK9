.class public final synthetic Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

.field public final synthetic f$1:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda2;->f$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda2;->f$1:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda2;->f$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$$ExternalSyntheticLambda2;->f$1:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->lambda$loadBackupBannerAd$2$com-solodroid-ads-sdk-format-BannerAd$Builder(Landroid/widget/FrameLayout;)V

    return-void
.end method
