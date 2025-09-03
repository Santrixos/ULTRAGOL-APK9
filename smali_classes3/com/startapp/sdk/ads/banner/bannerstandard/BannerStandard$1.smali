.class Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$1;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/j9$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$1;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSent(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$1;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    .line 2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->C:Lcom/startapp/sdk/ads/banner/BannerListener;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "onImpression"

    const/4 v5, 0x0

    .line 3
    invoke-static {v4, v3, p1, v5}, Lcom/startapp/w2;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-instance v5, Lcom/startapp/q0;

    invoke-direct {v5, v2, v0, v1}, Lcom/startapp/q0;-><init>(Lcom/startapp/sdk/ads/banner/BannerListener;Landroid/view/View;Landroid/content/Context;)V

    :goto_1
    invoke-static {v5}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->y:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->y:J

    .line 6
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->m()V

    return-void
.end method
