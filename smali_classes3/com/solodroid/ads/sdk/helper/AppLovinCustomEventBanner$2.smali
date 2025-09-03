.class Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$2;
.super Ljava/lang/Object;
.source "AppLovinCustomEventBanner.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;


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


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$2;->this$0:Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
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

    const-string v0, "Banner displayed"

    .line 102
    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
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

    const-string v0, "Banner dismissed"

    .line 107
    invoke-static {p1, v0}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->access$000(ILjava/lang/String;)V

    return-void
.end method
