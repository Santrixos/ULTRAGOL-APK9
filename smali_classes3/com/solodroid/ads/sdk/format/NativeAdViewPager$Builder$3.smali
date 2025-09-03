.class Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;
.super Ljava/lang/Object;
.source "NativeAdViewPager.java"

# interfaces
.implements Lcom/facebook/ads/NativeAdListener;


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

    .line 264
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

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

    .line 278
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/NativeAdLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    if-eq v0, p1, :cond_0

    return-void

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object p1, p1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 287
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-static {p1}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 289
    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_fan_large_template_view:I

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v2, v2, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 290
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 293
    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_choices_container:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 294
    new-instance v2, Lcom/facebook/ads/AdOptionsView;

    iget-object v3, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-static {v3}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v4, v4, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object v5, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v5, v5, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 295
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 296
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 299
    sget v0, Lcom/solodroid/ads/sdk/R$id;->native_ad_title:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 300
    sget v2, Lcom/solodroid/ads/sdk/R$id;->native_ad_media:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/MediaView;

    .line 301
    sget v3, Lcom/solodroid/ads/sdk/R$id;->native_ad_icon:I

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/MediaView;

    .line 302
    sget v4, Lcom/solodroid/ads/sdk/R$id;->native_ad_social_context:I

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 303
    sget v5, Lcom/solodroid/ads/sdk/R$id;->native_ad_body:I

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 304
    sget v6, Lcom/solodroid/ads/sdk/R$id;->native_ad_sponsored_label:I

    invoke-virtual {p1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 305
    sget v7, Lcom/solodroid/ads/sdk/R$id;->native_ad_call_to_action:I

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 307
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->access$100(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 308
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_primary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_primary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_secondary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-static {v8}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->access$000(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Landroid/app/Activity;

    move-result-object v8

    sget v9, Lcom/solodroid/ads/sdk/R$color;->applovin_dark_secondary_text_color:I

    invoke-static {v8, v9}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    :cond_1
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v8, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v8, v8, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->hasCallToAction()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 319
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v1, v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->getSponsoredTranslation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    iget-object v0, v0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0, p1, v3, v2, v1}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
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

    .line 272
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;->this$0:Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->loadBackupNativeAd()V

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
