.class Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$4;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 300
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$4;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    const-string p1, "AdNetwork"

    const-string v0, "Failed to load Startapp Interstitial Ad"

    .line 308
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$4;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadBackupInterstitialAd()V

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    const-string p1, "AdNetwork"

    const-string v0, "Startapp Interstitial Ad loaded"

    .line 303
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
