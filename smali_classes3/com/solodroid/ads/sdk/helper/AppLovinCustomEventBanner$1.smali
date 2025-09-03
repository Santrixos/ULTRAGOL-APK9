.class Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$1;
.super Ljava/lang/Object;
.source "AppLovinCustomEventBanner.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->requestBannerAd(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/google/android/gms/ads/mediation/MediationAdRequest;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;

.field final synthetic val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$customEventBannerListener"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$1;->this$0:Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ad"
        }
    .end annotation

    const/4 p1, 0x3

    const-string v0, "Successfully loaded banner ad"

    .line 89
    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$1;->this$0:Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->access$100(Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdLoaded(Landroid/view/View;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load banner ad with code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$1;->val$customEventBannerListener:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->access$200(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;->onAdFailedToLoad(I)V

    return-void
.end method
