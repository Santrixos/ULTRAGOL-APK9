.class public Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NativeAdViewHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdNetwork"


# instance fields
.field adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

.field adManagerNativeBackground:Landroid/widget/LinearLayout;

.field admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

.field admobNativeBackground:Landroid/widget/LinearLayout;

.field applovinNativeAd:Landroid/widget/FrameLayout;

.field fanNativeAd:Lcom/facebook/ads/NativeAd;

.field fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

.field maxNativeAd:Lcom/applovin/mediation/MaxAd;

.field mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

.field nativeAdViewContainer:Landroid/widget/LinearLayout;

.field startappNativeAd:Landroid/view/View;

.field startappNativeBackground:Landroid/widget/LinearLayout;

.field startappNativeButton:Landroid/widget/Button;

.field startappNativeDescription:Landroid/widget/TextView;

.field startappNativeIcon:Landroid/widget/ImageView;

.field startappNativeImage:Landroid/widget/ImageView;

.field startappNativeTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    sget v0, Lcom/solodroid/ads/sdk/R$id;->native_ad_view_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    .line 99
    sget v0, Lcom/solodroid/ads/sdk/R$id;->admob_native_ad_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/TemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    .line 100
    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 101
    sget v0, Lcom/solodroid/ads/sdk/R$id;->background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeBackground:Landroid/widget/LinearLayout;

    .line 104
    sget v0, Lcom/solodroid/ads/sdk/R$id;->google_ad_manager_native_ad_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    .line 105
    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_manager_media_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 106
    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_manager_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    .line 109
    sget v0, Lcom/solodroid/ads/sdk/R$id;->fan_native_ad_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    .line 112
    sget v0, Lcom/solodroid/ads/sdk/R$id;->startapp_native_ad_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeAd:Landroid/view/View;

    .line 113
    sget v0, Lcom/solodroid/ads/sdk/R$id;->startapp_native_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeImage:Landroid/widget/ImageView;

    .line 114
    sget v0, Lcom/solodroid/ads/sdk/R$id;->startapp_native_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeIcon:Landroid/widget/ImageView;

    .line 115
    sget v0, Lcom/solodroid/ads/sdk/R$id;->startapp_native_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeTitle:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/solodroid/ads/sdk/R$id;->startapp_native_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeDescription:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/solodroid/ads/sdk/R$id;->startapp_native_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeButton:Landroid/widget/Button;

    .line 118
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget v0, Lcom/solodroid/ads/sdk/R$id;->startapp_native_background:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeBackground:Landroid/widget/LinearLayout;

    .line 122
    sget v0, Lcom/solodroid/ads/sdk/R$id;->applovin_native_ad_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->applovinNativeAd:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public createNativeAdView(Landroid/content/Context;Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "nativeStyles"
        }
    .end annotation

    .line 711
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "video_small"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "video_large"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "radio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 757
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_medium_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 758
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 759
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 760
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 761
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 762
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 763
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 764
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 765
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    goto/16 :goto_1

    .line 746
    :pswitch_0
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_video_small_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 747
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 748
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 749
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 750
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 751
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 752
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 753
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 754
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    goto/16 :goto_1

    .line 735
    :pswitch_1
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_video_large_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 736
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 737
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 738
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 739
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 740
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 741
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 742
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 743
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    goto :goto_1

    .line 724
    :pswitch_2
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_radio_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 725
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 726
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 727
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 728
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 729
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 730
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 731
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 732
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    goto :goto_1

    .line 713
    :pswitch_3
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_news_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 714
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 715
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 716
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 717
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 718
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 719
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 720
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 721
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    .line 768
    :goto_1
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    invoke-direct {v0, p2, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    return-object v0

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

.method public createNativeAdViewDark(Landroid/content/Context;Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "nativeStyles"
        }
    .end annotation

    .line 773
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "video_small"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "video_large"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "radio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "news"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 819
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_medium_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 820
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 821
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 822
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 823
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 824
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 825
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 826
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 827
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    goto/16 :goto_1

    .line 808
    :pswitch_0
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_video_small_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 809
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 810
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 811
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 812
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 813
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 814
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 815
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 816
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    goto/16 :goto_1

    .line 797
    :pswitch_1
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_video_large_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 798
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 799
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 800
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 801
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 802
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 803
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 804
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 805
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    goto :goto_1

    .line 786
    :pswitch_2
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_radio_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 787
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 788
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 789
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 790
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 791
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 792
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 793
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 794
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    goto :goto_1

    .line 775
    :pswitch_3
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_news_template_view:I

    invoke-direct {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 776
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 777
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 778
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 779
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 780
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 781
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 782
    invoke-virtual {p2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p2

    .line 783
    invoke-virtual {p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p2

    .line 830
    :goto_1
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    invoke-direct {v0, p2, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    return-object v0

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

.method synthetic lambda$loadBackupNativeAd$3$com-solodroid-ads-sdk-format-NativeAdViewHolder(ZLandroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "darkTheme",
            "context",
            "NativeAd"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 425
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 426
    new-instance p2, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {p2}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object p1

    .line 427
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 428
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget p2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 430
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 431
    new-instance p2, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {p2}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object p1

    .line 432
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 433
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget p2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 435
    :goto_0
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 436
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {p1, p3}, Lcom/solodroid/ads/sdk/util/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 437
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 438
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadBackupNativeAd$4$com-solodroid-ads-sdk-format-NativeAdViewHolder(ZLandroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "darkTheme",
            "context",
            "NativeAd"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 460
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 461
    new-instance p2, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {p2}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object p1

    .line 462
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 463
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget p2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 465
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 466
    new-instance p2, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {p2}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object p1

    .line 467
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 468
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget p2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 470
    :goto_0
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 471
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {p1, p3}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 472
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 473
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadNativeAd$1$com-solodroid-ads-sdk-format-NativeAdViewHolder(ZLandroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "darkTheme",
            "context",
            "NativeAd"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 137
    new-instance p2, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {p2}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 139
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget p2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 141
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 142
    new-instance p2, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {p2}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object p1

    .line 143
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 144
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget p2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {p1, p3}, Lcom/solodroid/ads/sdk/util/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 148
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadNativeAd$2$com-solodroid-ads-sdk-format-NativeAdViewHolder(ZLandroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "darkTheme",
            "context",
            "NativeAd"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 170
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 171
    new-instance p2, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {p2}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object p1

    .line 172
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 173
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget p2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    sget v0, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 176
    new-instance p2, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {p2}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object p1

    .line 177
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {p2, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 178
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget p2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 180
    :goto_0
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 181
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {p1, p3}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 182
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$new$0$com-solodroid-ads-sdk-format-NativeAdViewHolder(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v1"
        }
    .end annotation

    .line 118
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public loadBackupNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "adStatus",
            "placementStatus",
            "backupAdNetwork",
            "adMobNativeId",
            "adManagerNativeId",
            "fanNativeId",
            "appLovinNativeId",
            "darkTheme",
            "legacyGDPR",
            "nativeAdStyle"
        }
    .end annotation

    const-string v0, "1"

    .line 416
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    if-eqz p3, :cond_10

    .line 418
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x3

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p3, "fan_bidding_admob"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 p2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string p3, "fan_bidding_ad_manager"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string p3, "fan_bidding_applovin_max"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x7

    goto :goto_0

    :sswitch_3
    const-string p3, "startapp"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x6

    goto :goto_0

    :sswitch_4
    const-string p3, "applovin"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 p2, 0x5

    goto :goto_0

    :sswitch_5
    const-string p3, "google_ad_manager"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_0

    :cond_5
    const/4 p2, 0x4

    goto :goto_0

    :sswitch_6
    const-string p3, "admob"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    goto :goto_0

    :cond_6
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_7
    const-string p3, "none"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    goto :goto_0

    :cond_7
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_8
    const-string p3, "fan"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    goto :goto_0

    :cond_8
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_9
    const-string p3, "applovin_max"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    goto :goto_0

    :cond_9
    const/4 p2, 0x0

    :goto_0
    const-string p3, "AdNetwork"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_1

    .line 602
    :pswitch_0
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_a

    .line 603
    new-instance p2, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-direct {p2, p1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 604
    new-instance p1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {p1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 605
    invoke-virtual {p1, v2}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object p1

    .line 606
    invoke-virtual {p1, v1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object p1

    .line 607
    invoke-virtual {p1, v2}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object p1

    .line 608
    new-instance p3, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;

    invoke-direct {p3, p0, p2, p9}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$9;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;Z)V

    .line 647
    invoke-virtual {p2, p1, p3}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    goto/16 :goto_1

    :cond_a
    const-string p1, "StartApp native ads has been loaded"

    .line 649
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 456
    :pswitch_1
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {p2}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_b

    .line 457
    new-instance p2, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {p2, p1, p6}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p3, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p9, p1}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda2;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;ZLandroid/content/Context;)V

    .line 458
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    new-instance p2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$7;

    invoke-direct {p2, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$7;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;)V

    .line 475
    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p1

    .line 482
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    .line 483
    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    goto/16 :goto_1

    :cond_b
    const-string p1, "Ad Manager Native Ad has been loaded"

    .line 485
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 421
    :pswitch_2
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {p2}, Lcom/solodroid/ads/sdk/util/TemplateView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_c

    .line 422
    new-instance p2, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {p2, p1, p5}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p3, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p9, p1}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;ZLandroid/content/Context;)V

    .line 423
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p2

    new-instance p3, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$6;

    invoke-direct {p3, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$6;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;)V

    .line 440
    invoke-virtual {p2, p3}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object p2

    .line 447
    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object p2

    .line 448
    check-cast p1, Landroid/app/Activity;

    invoke-static {p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_1

    :cond_c
    const-string p1, "AdMob native ads has been loaded"

    .line 450
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 697
    :pswitch_3
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 490
    :pswitch_4
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {p2}, Lcom/facebook/ads/NativeAdLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_d

    .line 491
    new-instance p2, Lcom/facebook/ads/NativeAd;

    invoke-direct {p2, p1, p7}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    .line 492
    new-instance p2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$8;

    invoke-direct {p2, p0, p1, p11, p9}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$8;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 594
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object p1

    .line 595
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {p2, p1}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto :goto_1

    :cond_d
    const-string p1, "FAN Native Ad has been loaded"

    .line 597
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 656
    :pswitch_5
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_f

    .line 657
    new-instance p2, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-direct {p2, p8, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 658
    new-instance p3, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$10;

    invoke-direct {p3, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$10;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;)V

    invoke-virtual {p2, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    if-eqz p9, :cond_e

    .line 687
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0, p1, p11}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->createNativeAdViewDark(Landroid/content/Context;Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto :goto_1

    .line 689
    :cond_e
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0, p1, p11}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->createNativeAdView(Landroid/content/Context;Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto :goto_1

    :cond_f
    const-string p1, "AppLovin Native ads has been loaded"

    .line 692
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_9
        0x18b13 -> :sswitch_8
        0x33af38 -> :sswitch_7
        0x58603fd -> :sswitch_6
        0x3b19f957 -> :sswitch_5
        0x4650da37 -> :sswitch_4
        0x4e7cc27f -> :sswitch_3
        0x774f6b4c -> :sswitch_2
        0x77badb81 -> :sswitch_1
        0x78ab620d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public loadNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "adStatus",
            "placementStatus",
            "adNetwork",
            "backupAdNetwork",
            "adMobNativeId",
            "adManagerNativeId",
            "fanNativeId",
            "appLovinNativeId",
            "darkTheme",
            "legacyGDPR",
            "nativeAdStyle"
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p4

    move/from16 v15, p10

    move-object/from16 v12, p12

    const-string v1, "1"

    move-object/from16 v5, p2

    .line 127
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz p3, :cond_f

    .line 129
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    :goto_0
    const-string v0, "AdNetwork"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 311
    :pswitch_0
    iget-object v1, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_9

    .line 312
    new-instance v11, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    invoke-direct {v11, v13}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 313
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 314
    invoke-virtual {v0, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v0

    .line 315
    invoke-virtual {v0, v3}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v10

    .line 317
    new-instance v9, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move/from16 v3, p10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v15, v9

    move-object/from16 v9, p7

    move-object v13, v10

    move-object/from16 v10, p8

    move-object v14, v11

    move-object/from16 v11, p9

    move/from16 v12, p11

    move-object/from16 v16, v13

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$4;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;ZLandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v16

    .line 357
    invoke-virtual {v14, v0, v15}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    goto/16 :goto_3

    :cond_9
    const-string v1, "StartApp native ads has been loaded"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 166
    :pswitch_1
    iget-object v1, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_a

    .line 167
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    move-object/from16 v7, p7

    invoke-direct {v0, v13, v7}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda4;

    invoke-direct {v1, v14, v15, v13}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda4;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;ZLandroid/content/Context;)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v12

    new-instance v11, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object v13, v11

    move/from16 v11, p11

    move-object v15, v12

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$2;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 185
    invoke-virtual {v15, v13}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    goto/16 :goto_2

    :cond_a
    const-string v1, "Ad Manager Native Ad has been loaded"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v7, p7

    .line 132
    iget-object v1, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/TemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_b

    .line 133
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    move-object/from16 v6, p6

    invoke-direct {v0, v13, v6}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;

    invoke-direct {v1, v14, v15, v13}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$$ExternalSyntheticLambda3;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;ZLandroid/content/Context;)V

    .line 134
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v12

    new-instance v11, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object v15, v11

    move/from16 v11, p11

    move-object v14, v12

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$1;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 151
    invoke-virtual {v14, v15}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 158
    move-object v1, v13

    check-cast v1, Landroid/app/Activity;

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_1

    :cond_b
    const-string v1, "AdMob native ads has been loaded"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v1, p0

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 199
    iget-object v1, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_c

    .line 200
    new-instance v0, Lcom/facebook/ads/NativeAd;

    move-object/from16 v8, p8

    invoke-direct {v0, v13, v8}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    .line 201
    new-instance v12, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object v13, v12

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$3;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 303
    iget-object v0, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    .line 304
    iget-object v1, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto/16 :goto_2

    :cond_c
    const-string v1, "FAN Native Ad has been loaded"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 366
    iget-object v1, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_e

    .line 367
    new-instance v12, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    move-object/from16 v9, p9

    invoke-direct {v12, v9, v13}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v12, v14, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 368
    new-instance v11, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v10, p10

    move-object v13, v11

    move/from16 v11, p11

    move-object v14, v12

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder$5;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v14, v13}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    if-eqz v15, :cond_d

    move-object/from16 v1, p0

    .line 401
    iget-object v0, v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    move-object/from16 v2, p1

    move-object/from16 v3, p12

    invoke-virtual {v1, v2, v3}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->createNativeAdViewDark(Landroid/content/Context;Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto :goto_3

    :cond_d
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p12

    .line 403
    iget-object v0, v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {v1, v2, v3}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->createNativeAdView(Landroid/content/Context;Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto :goto_3

    :cond_e
    move-object v1, v14

    const-string v2, "AppLovin Native ads has been loaded"

    .line 406
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    :goto_2
    move-object v1, v14

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_8
        0x18b13 -> :sswitch_7
        0x58603fd -> :sswitch_6
        0x3b19f957 -> :sswitch_5
        0x4650da37 -> :sswitch_4
        0x4e7cc27f -> :sswitch_3
        0x774f6b4c -> :sswitch_2
        0x77badb81 -> :sswitch_1
        0x78ab620d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setNativeAdPadding(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method
