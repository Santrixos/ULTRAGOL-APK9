.class Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;
.super Ljava/lang/Object;
.source "NativeAdViewHolder.java"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


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

.field final synthetic val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;ZLandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
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
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$nativeAdStyle",
            "val$legacyGDPR",
            "val$appLovinNativeId",
            "val$fanNativeId",
            "val$adManagerNativeId",
            "val$adMobNativeId",
            "val$backupAdNetwork",
            "val$placementStatus",
            "val$adStatus",
            "val$context",
            "val$darkTheme",
            "val$startAppNativeAd"
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iput-boolean p3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$darkTheme:Z

    iput-object p4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$adStatus:Ljava/lang/String;

    iput p6, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$placementStatus:I

    iput-object p7, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$backupAdNetwork:Ljava/lang/String;

    iput-object p8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$adMobNativeId:Ljava/lang/String;

    iput-object p9, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$adManagerNativeId:Ljava/lang/String;

    iput-object p10, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$fanNativeId:Ljava/lang/String;

    iput-object p11, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$appLovinNativeId:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$legacyGDPR:Z

    iput-object p13, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$nativeAdStyle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$adStatus:Ljava/lang/String;

    iget v3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$placementStatus:I

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$backupAdNetwork:Ljava/lang/String;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$adMobNativeId:Ljava/lang/String;

    iget-object v6, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$adManagerNativeId:Ljava/lang/String;

    iget-object v7, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$fanNativeId:Ljava/lang/String;

    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$appLovinNativeId:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$darkTheme:Z

    iget-boolean v10, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$legacyGDPR:Z

    iget-object v11, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$nativeAdStyle:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->loadBackupNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    const-string p1, "AdNetwork"

    const-string v0, "ad failed"

    .line 354
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    const-string p1, "STARTAPP_ADS"

    const-string v0, "ad loaded"

    .line 320
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeAd:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->getNativeAds()Ljava/util/ArrayList;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 328
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz p1, :cond_2

    .line 333
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 334
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getSecondaryImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 335
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->isApp()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Install"

    goto :goto_1

    :cond_1
    const-string v1, "Open"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->registerViewForInteraction(Landroid/view/View;)V

    .line 341
    :cond_2
    iget-boolean p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->val$darkTheme:Z

    if-eqz p1, :cond_3

    .line 342
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeBackground:Landroid/widget/LinearLayout;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 344
    :cond_3
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeBackground:Landroid/widget/LinearLayout;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method
