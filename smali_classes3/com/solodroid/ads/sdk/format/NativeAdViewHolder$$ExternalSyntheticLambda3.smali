.class public final synthetic Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic f$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;ZLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iput-boolean p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;->f$1:Z

    iput-object p3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3

    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;->f$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-boolean v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;->f$1:Z

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p1}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->lambda$loadNativeAd$1$com-solodroid-ads-sdk-format-NativeAdViewHolder(ZLandroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
