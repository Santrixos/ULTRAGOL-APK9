.class Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "NativeAdViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->loadNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

.field final synthetic val$adManagerNativeId:Ljava/lang/String;

.field final synthetic val$adMobNativeId:Ljava/lang/String;

.field final synthetic val$adStatus:Ljava/lang/String;

.field final synthetic val$appLovinNativeId:Ljava/lang/String;

.field final synthetic val$backupAdNetwork:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$darkTheme:Z

.field final synthetic val$fanNativeId:Ljava/lang/String;

.field final synthetic val$legacyGDPR:Z

.field final synthetic val$nativeAdStyle:Ljava/lang/String;

.field final synthetic val$placementStatus:I


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$nativeAdStyle",
            "val$legacyGDPR",
            "val$darkTheme",
            "val$appLovinNativeId",
            "val$fanNativeId",
            "val$adManagerNativeId",
            "val$adMobNativeId",
            "val$backupAdNetwork",
            "val$placementStatus",
            "val$adStatus",
            "val$context"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$adStatus:Ljava/lang/String;

    iput p4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$placementStatus:I

    iput-object p5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$backupAdNetwork:Ljava/lang/String;

    iput-object p6, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$adMobNativeId:Ljava/lang/String;

    iput-object p7, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$adManagerNativeId:Ljava/lang/String;

    iput-object p8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$fanNativeId:Ljava/lang/String;

    iput-object p9, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$appLovinNativeId:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$darkTheme:Z

    iput-boolean p11, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$legacyGDPR:Z

    iput-object p12, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$nativeAdStyle:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$adStatus:Ljava/lang/String;

    iget v3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$placementStatus:I

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$backupAdNetwork:Ljava/lang/String;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$adMobNativeId:Ljava/lang/String;

    iget-object v6, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$adManagerNativeId:Ljava/lang/String;

    iget-object v7, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$fanNativeId:Ljava/lang/String;

    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$appLovinNativeId:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$darkTheme:Z

    iget-boolean v10, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$legacyGDPR:Z

    iget-object v11, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;->val$nativeAdStyle:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->loadBackupNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method
