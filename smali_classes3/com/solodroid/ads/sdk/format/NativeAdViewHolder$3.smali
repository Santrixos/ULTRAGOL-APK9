.class Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;
.super Ljava/lang/Object;
.source "NativeAdViewHolder.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


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

    .line 201
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$adStatus:Ljava/lang/String;

    iput p4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$placementStatus:I

    iput-object p5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$backupAdNetwork:Ljava/lang/String;

    iput-object p6, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$adMobNativeId:Ljava/lang/String;

    iput-object p7, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$adManagerNativeId:Ljava/lang/String;

    iput-object p8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$fanNativeId:Ljava/lang/String;

    iput-object p9, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$appLovinNativeId:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$darkTheme:Z

    iput-boolean p11, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$legacyGDPR:Z

    iput-object p12, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$nativeAdStyle:Ljava/lang/String;

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

    .line 215
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    if-eq v0, p1, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 224
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$nativeAdStyle:Ljava/lang/String;

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

    .line 242
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_medium_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 233
    :pswitch_0
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_video_small_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 236
    :pswitch_1
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_video_large_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 239
    :pswitch_2
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_radio_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    goto :goto_1

    .line 230
    :pswitch_3
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_news_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 248
    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_choices_container:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 249
    new-instance v2, Lcom/facebook/ads/AdOptionsView;

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v4, v4, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v5, v5, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 250
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 251
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 254
    sget v0, Lcom/solodroid/ads/sdk/R$id;->native_ad_title:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    sget v2, Lcom/solodroid/ads/sdk/R$id;->native_ad_media:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/MediaView;

    .line 256
    sget v3, Lcom/solodroid/ads/sdk/R$id;->native_ad_icon:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/MediaView;

    .line 257
    sget v4, Lcom/solodroid/ads/sdk/R$id;->native_ad_social_context:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 258
    sget v5, Lcom/solodroid/ads/sdk/R$id;->native_ad_body:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 259
    sget v6, Lcom/solodroid/ads/sdk/R$id;->native_ad_sponsored_label:I

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 260
    sget v7, Lcom/solodroid/ads/sdk/R$id;->native_ad_call_to_action:I

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 262
    iget-boolean v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$darkTheme:Z

    if-eqz v8, :cond_5

    .line 263
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$context:Landroid/content/Context;

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_primary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$context:Landroid/content/Context;

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_primary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$context:Landroid/content/Context;

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_secondary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$context:Landroid/content/Context;

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_secondary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    :cond_5
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->hasCallToAction()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getSponsoredTranslation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

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
    .locals 12
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

    .line 209
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$adStatus:Ljava/lang/String;

    iget v3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$placementStatus:I

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$backupAdNetwork:Ljava/lang/String;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$adMobNativeId:Ljava/lang/String;

    iget-object v6, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$adManagerNativeId:Ljava/lang/String;

    iget-object v7, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$fanNativeId:Ljava/lang/String;

    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$appLovinNativeId:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$darkTheme:Z

    iget-boolean v10, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$legacyGDPR:Z

    iget-object v11, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;->val$nativeAdStyle:Ljava/lang/String;

    invoke-virtual/range {v0 .. v11}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->loadBackupNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

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
