.class Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$6;
.super Lcom/google/android/gms/ads/AdListener;
.source "NativeAdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->loadBackupNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 534
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$6;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 537
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$6;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 538
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$6;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
