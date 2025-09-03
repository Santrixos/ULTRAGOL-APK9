.class Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$14;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/id$b;


# instance fields
.field public final synthetic this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$14;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$14;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    .line 2
    iget-object v0, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->M:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    .line 3
    invoke-static {v0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->access$700(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;Z)V

    .line 4
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$14;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    .line 5
    iget-object v0, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->N:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;

    .line 6
    invoke-static {v0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;->access$700(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$MraidBannerController;Z)V

    .line 7
    iget-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$14;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    iget-object p1, p1, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->r:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandardAd;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/HtmlAd;->r()Z

    move-result p1

    return p1
.end method
