.class Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$7;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/v0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->i()V
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
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$7;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEvent(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$7;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    iget-boolean v0, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->t:Z

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/startapp/i4;

    sget-object v1, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {v0, v1}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v1, "fake_click"

    .line 3
    iput-object v1, v0, Lcom/startapp/i4;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iput-object v1, v0, Lcom/startapp/i4;->g:Ljava/lang/String;

    const-string v1, "jsTag="

    .line 6
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$7;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    iget-boolean v2, v2, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->u:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/startapp/i4;->a()V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard$7;->this$0:Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;

    iget-boolean v1, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->u:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->t:Z

    if-nez v1, :cond_1

    return v2

    :cond_1
    if-nez p1, :cond_2

    return v2

    .line 21
    :cond_2
    invoke-static {v0, p1}, Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;->a(Lcom/startapp/sdk/ads/banner/bannerstandard/BannerStandard;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
