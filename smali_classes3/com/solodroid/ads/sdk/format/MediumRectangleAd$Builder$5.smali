.class Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$5;
.super Ljava/lang/Object;
.source "MediumRectangleAd.java"

# interfaces
.implements Lcom/applovin/mediation/MaxAdViewAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;->loadBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;

.field final synthetic val$appLovinAdView:Landroid/widget/RelativeLayout;


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
            "val$appLovinAdView"
        }
    .end annotation

    .line 353
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$5;->val$appLovinAdView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

.method public onAdCollapsed(Lcom/applovin/mediation/MaxAd;)V
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

.method public onAdExpanded(Lcom/applovin/mediation/MaxAd;)V
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

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 0
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

    .line 386
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$5;->val$appLovinAdView:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 387
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$5;->this$0:Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder;->loadBackupBannerAd()V

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

    .line 366
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/MediumRectangleAd$Builder$5;->val$appLovinAdView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
