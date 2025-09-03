.class Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$6;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


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

    .line 381
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$6;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

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

    .line 384
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$6;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    iput-object p1, v0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->appLovinAd:Lcom/applovin/sdk/AppLovinAd;

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 389
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder$6;->this$0:Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/InterstitialAd$Builder;->loadBackupInterstitialAd()V

    return-void
.end method
