.class Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$13;
.super Ljava/lang/Object;
.source "MediumRectangleAd.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;->loadBackupBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;

.field final synthetic val$appLovinDiscoveryAdView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;Landroid/widget/RelativeLayout;)V
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

    .line 746
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$13;->this$0:Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$13;->val$appLovinDiscoveryAdView:Landroid/widget/RelativeLayout;

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

    .line 749
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$13;->val$appLovinDiscoveryAdView:Landroid/widget/RelativeLayout;

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

    .line 754
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$13;->val$appLovinDiscoveryAdView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
