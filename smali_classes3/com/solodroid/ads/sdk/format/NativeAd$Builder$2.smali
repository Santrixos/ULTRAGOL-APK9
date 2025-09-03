.class Lcom/solodroid/ads/sdk/format/NativeAd$Builder$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->loadNativeAd()V
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

    .line 253
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$2;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

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

    .line 256
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$2;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->loadBackupNativeAd()V

    return-void
.end method
