.class Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "NativeAdViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->loadNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 215
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$1;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->loadBackupNativeAd()V

    return-void
.end method
