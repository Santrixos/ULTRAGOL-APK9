.class Lcom/solodroid/ads/sdk/format/BannerAd$Builder$7;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerListener;


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


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/BannerAd$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$7;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBannerAdClicked()V
    .locals 2

    const-string v0, "AdNetwork"

    const-string v1, "onBannerAdClicked"

    .line 462
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerAdLeftApplication()V
    .locals 2

    const-string v0, "AdNetwork"

    const-string v1, "onBannerAdLeftApplication"

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBannerAdLoadFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdNetwork"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$7;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->loadBackupBannerAd()V

    return-void
.end method

.method public onBannerAdLoaded()V
    .locals 2

    const-string v0, "AdNetwork"

    const-string v1, "onBannerAdLoaded"

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder$7;->this$0:Lcom/solodroid/ads/sdk/format/BannerAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/BannerAd$Builder;->ironSourceBannerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onBannerAdScreenDismissed()V
    .locals 2

    const-string v0, "AdNetwork"

    const-string v1, "onBannerAdScreenDismissed"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBannerAdScreenPresented()V
    .locals 2

    const-string v0, "AdNetwork"

    const-string v1, "onBannerAdScreenPresented"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
