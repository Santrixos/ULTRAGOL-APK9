.class public final synthetic Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    return-void
.end method


# virtual methods
.method public final adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;

    invoke-static {v0, p1}, Lcom/solodroid/ads/sdk/helper/AppLovinCustomEventBanner;->lambda$requestBannerAd$0(Lcom/google/android/gms/ads/mediation/customevent/CustomEventBannerListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
