.class Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;
.super Ljava/lang/Object;
.source "NativeAdViewHolder.java"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->loadBackupNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

.field final synthetic val$darkTheme:Z

.field final synthetic val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$darkTheme",
            "val$startAppNativeAd"
        }
    .end annotation

    .line 608
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iput-boolean p3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->val$darkTheme:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 642
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeAd:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "AdNetwork"

    const-string v0, "ad failed"

    .line 644
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

    .line 611
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeAd:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->getNativeAds()Ljava/util/ArrayList;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 619
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz p1, :cond_2

    .line 624
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 625
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getSecondaryImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 626
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 627
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

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

    .line 629
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->registerViewForInteraction(Landroid/view/View;)V

    .line 632
    :cond_2
    iget-boolean p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->val$darkTheme:Z

    if-eqz p1, :cond_3

    .line 633
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeBackground:Landroid/widget/LinearLayout;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 635
    :cond_3
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeBackground:Landroid/widget/LinearLayout;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method
