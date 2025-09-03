.class Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;
.super Ljava/lang/Object;
.source "NativeAdFragment.java"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


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

.field final synthetic val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;


# direct methods
.method constructor <init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$startAppNativeAd"
        }
    .end annotation

    .line 590
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

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

    .line 623
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 624
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string p1, "AdNetwork"

    const-string v0, "StartApp Native Ad failed loaded"

    .line 625
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    const-string p1, "AdNetwork"

    const-string v0, "StartApp Native Ad loaded"

    .line 593
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->val$startAppNativeAd:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->getNativeAds()Ljava/util/ArrayList;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 601
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StartApp Native Ad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz p1, :cond_2

    .line 606
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeImage:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 607
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->isApp()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Install"

    goto :goto_1

    :cond_1
    const-string v1, "Open"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->registerViewForInteraction(Landroid/view/View;)V

    .line 613
    :cond_2
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->access$200(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 614
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeBackground:Landroid/widget/LinearLayout;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_2

    .line 616
    :cond_3
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeBackground:Landroid/widget/LinearLayout;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :goto_2
    return-void
.end method
