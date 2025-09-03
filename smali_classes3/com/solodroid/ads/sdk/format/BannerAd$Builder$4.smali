.class Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Lcom/startapp/sdk/ads/banner/BannerListener;


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

.field final synthetic val$startAppAdView:Landroid/widget/RelativeLayout;


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
            "val$startAppAdView"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;->val$startAppAdView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    return-void
.end method

.method public onFailedToReceiveAd(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    .line 299
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;->val$startAppAdView:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->loadBackupBannerAd()V

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->access$000(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed load startapp banner ad : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdNetwork"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onImpression(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    return-void
.end method

.method public onReceiveAd(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    .line 294
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$4;->val$startAppAdView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
