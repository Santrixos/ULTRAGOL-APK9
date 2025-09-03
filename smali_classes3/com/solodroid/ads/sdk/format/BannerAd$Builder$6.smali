.class Lcom/solodroid/ads/sdk/format/BannerAd$Builder$6;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->loadBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

.field final synthetic val$appLovinDiscoveryAdView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$appLovinDiscoveryAdView"
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$6;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$6;->val$appLovinDiscoveryAdView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 422
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$6;->val$appLovinDiscoveryAdView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 427
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$6;->val$appLovinDiscoveryAdView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$6;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->loadBackupBannerAd()V

    return-void
.end method
