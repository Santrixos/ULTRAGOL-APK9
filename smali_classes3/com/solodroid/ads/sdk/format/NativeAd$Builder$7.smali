.class Lcom/solodroid/ads/sdk/format/NativeAd$Builder$7;
.super Lcom/google/android/gms/ads/AdListener;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->loadBackupNativeAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 562
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$7;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

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

    .line 565
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$7;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 566
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$7;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
