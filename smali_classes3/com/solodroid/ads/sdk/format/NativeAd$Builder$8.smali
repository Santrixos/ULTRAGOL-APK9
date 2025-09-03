.class Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


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

    .line 578
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    if-eq v0, p1, :cond_0

    return-void

    .line 600
    :cond_0
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 602
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 606
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-static {v0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->access$100(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "video_small"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "video_large"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "radio"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "news"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 620
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_medium_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 611
    :pswitch_0
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_video_small_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 614
    :pswitch_1
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_video_large_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 617
    :pswitch_2
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_radio_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 608
    :pswitch_3
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_news_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 623
    :goto_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 626
    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_choices_container:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 627
    new-instance v2, Lcom/facebook/ads/AdOptionsView;

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-static {v3}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v4, v4, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v5, v5, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 628
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 629
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 632
    sget v0, Lcom/solodroid/ads/sdk/R$id;->native_ad_title:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 633
    sget v2, Lcom/solodroid/ads/sdk/R$id;->native_ad_icon:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/MediaView;

    .line 634
    sget v3, Lcom/solodroid/ads/sdk/R$id;->native_ad_media:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/MediaView;

    .line 635
    sget v4, Lcom/solodroid/ads/sdk/R$id;->native_ad_social_context:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 636
    sget v5, Lcom/solodroid/ads/sdk/R$id;->native_ad_body:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 637
    sget v6, Lcom/solodroid/ads/sdk/R$id;->native_ad_sponsored_label:I

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 638
    sget v7, Lcom/solodroid/ads/sdk/R$id;->native_ad_call_to_action:I

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 640
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->access$200(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 641
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_primary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 642
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_primary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 643
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_secondary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_secondary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    :cond_5
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->hasCallToAction()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 652
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getSponsoredTranslation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 657
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x338ad3 -> :sswitch_3
        0x67413fb -> :sswitch_2
        0x522baa77 -> :sswitch_1
        0x52938443 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ad",
            "adError"
        }
    .end annotation

    .line 586
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 587
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;->this$0:Lcom/solodroid/ads/sdk/format/NativeAd$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, p2}, Lcom/facebook/ads/NativeAdLayout;->setVisibility(I)V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    return-void
.end method

.method public onMediaDownloaded(Lcom/facebook/ads/Ad;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    return-void
.end method
