.class public Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
.super Ljava/lang/Object;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solodroid/ads/sdk/format/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdNetwork"


# instance fields
.field private final activity:Landroid/app/Activity;

.field adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

.field adManagerNativeBackground:Landroid/widget/LinearLayout;

.field private adManagerNativeId:Ljava/lang/String;

.field private adMobNativeId:Ljava/lang/String;

.field private adNetwork:Ljava/lang/String;

.field private adStatus:Ljava/lang/String;

.field admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

.field admobNativeBackground:Landroid/widget/LinearLayout;

.field private appLovinNativeId:Ljava/lang/String;

.field applovinNativeAd:Landroid/widget/FrameLayout;

.field private backupAdNetwork:Ljava/lang/String;

.field private darkTheme:Z

.field fanNativeAd:Lcom/facebook/ads/NativeAd;

.field fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

.field private fanNativeId:Ljava/lang/String;

.field private legacyGDPR:Z

.field maxAd:Lcom/applovin/mediation/MaxAd;

.field mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

.field private nativeAdStyle:Ljava/lang/String;

.field nativeAdViewContainer:Landroid/widget/LinearLayout;

.field private placementStatus:I

.field startappNativeAd:Landroid/view/View;

.field startappNativeBackground:Landroid/widget/LinearLayout;

.field startappNativeButton:Landroid/widget/Button;

.field startappNativeDescription:Landroid/widget/TextView;

.field startappNativeIcon:Landroid/widget/ImageView;

.field startappNativeImage:Landroid/widget/ImageView;

.field startappNativeTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adStatus:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adNetwork:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->backupAdNetwork:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adMobNativeId:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeId:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeId:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->appLovinNativeId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 96
    iput v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->placementStatus:I

    const/4 v1, 0x0

    .line 97
    iput-boolean v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    .line 98
    iput-boolean v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->legacyGDPR:Z

    .line 100
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdStyle:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Landroid/app/Activity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdStyle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->loadNativeAd()V

    return-object p0
.end method

.method public createNativeAdView()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdStyle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video_small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "video_large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "news"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 844
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_medium_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 845
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 846
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 847
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 848
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 849
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 850
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 851
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    goto/16 :goto_1

    .line 833
    :pswitch_0
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_video_small_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 834
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 835
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 836
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 837
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 838
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 839
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 840
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 841
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    goto/16 :goto_1

    .line 822
    :pswitch_1
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_video_large_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 823
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 824
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 825
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 826
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 827
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 828
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 829
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 830
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    goto :goto_1

    .line 811
    :pswitch_2
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_radio_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 812
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 813
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 814
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 815
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 816
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 817
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 818
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 819
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    goto :goto_1

    .line 800
    :pswitch_3
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_news_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 801
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 802
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 803
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 804
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 805
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 806
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 807
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    .line 855
    :goto_1
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v1, v0, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    return-object v1

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

.method public createNativeAdViewDark()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 3

    .line 861
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdStyle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video_small"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "video_large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "radio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "news"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 907
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_medium_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 908
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 909
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 910
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 911
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 912
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 913
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 914
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    goto/16 :goto_1

    .line 896
    :pswitch_0
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_video_small_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 897
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 898
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 899
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 900
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 901
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 902
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 903
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 904
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    goto/16 :goto_1

    .line 885
    :pswitch_1
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_video_large_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 886
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 887
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 888
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 889
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 890
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 891
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 892
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    goto :goto_1

    .line 874
    :pswitch_2
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_radio_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 875
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 876
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 877
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 878
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 879
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 880
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 881
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    goto :goto_1

    .line 863
    :pswitch_3
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_news_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 864
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 865
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 866
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 867
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 868
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 869
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 870
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 871
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    .line 918
    :goto_1
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v1, v0, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    return-object v1

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

.method synthetic lambda$loadBackupNativeAd$3$com-solodroid-ads-sdk-format-NativeAd$Builder(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 501
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method synthetic lambda$loadBackupNativeAd$4$com-solodroid-ads-sdk-format-NativeAd$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 511
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 513
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 515
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 517
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 518
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 520
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 523
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 524
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 525
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadBackupNativeAd$5$com-solodroid-ads-sdk-format-NativeAd$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 546
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 548
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 550
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 552
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 553
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 555
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 558
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 559
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 560
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadNativeAd$0$com-solodroid-ads-sdk-format-NativeAd$Builder(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 193
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method synthetic lambda$loadNativeAd$1$com-solodroid-ads-sdk-format-NativeAd$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 203
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 205
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 207
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 210
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 212
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 215
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 216
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadNativeAd$2$com-solodroid-ads-sdk-format-NativeAd$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 237
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 239
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 241
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 244
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 245
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 246
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 249
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 250
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public loadBackupNativeAd()V
    .locals 6

    .line 483
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->placementStatus:I

    if-eqz v0, :cond_10

    .line 485
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->native_ad_view_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    .line 487
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->admob_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/TemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    .line 488
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 489
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    .line 491
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->google_ad_manager_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    .line 492
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_media_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 493
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_background:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    .line 495
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeAd:Landroid/view/View;

    .line 496
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_image:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeImage:Landroid/widget/ImageView;

    .line 497
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeIcon:Landroid/widget/ImageView;

    .line 498
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeTitle:Landroid/widget/TextView;

    .line 499
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_description:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeDescription:Landroid/widget/TextView;

    .line 500
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeButton:Landroid/widget/Button;

    .line 501
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_background:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeBackground:Landroid/widget/LinearLayout;

    .line 503
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->applovin_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    .line 505
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->backupAdNetwork:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x3

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    const-string v0, "AdNetwork"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 686
    :pswitch_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_b

    .line 687
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 688
    new-instance v1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 689
    invoke-virtual {v1, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 690
    invoke-virtual {v1, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 691
    invoke-virtual {v1, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 692
    new-instance v2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$9;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$9;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;)V

    .line 731
    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    goto/16 :goto_1

    :cond_b
    const-string v1, "StartApp Native Ad has been loaded"

    .line 733
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 543
    :pswitch_1
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_c

    .line 544
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda2;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 545
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$7;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$7;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 562
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 570
    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "Ad Manager Native Ad has been loaded"

    .line 572
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 508
    :pswitch_2
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/TemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    .line 509
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adMobNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 510
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$6;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$6;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 527
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_1

    :cond_d
    const-string v1, "AdMob Native Ad has been loaded"

    .line 537
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 783
    :pswitch_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 577
    :pswitch_4
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    .line 578
    new-instance v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$8;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 681
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    .line 682
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto :goto_1

    .line 740
    :pswitch_5
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_f

    .line 741
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->appLovinNativeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 742
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$10;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    .line 770
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    if-eqz v0, :cond_e

    .line 771
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->createNativeAdViewDark()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto :goto_1

    .line 773
    :cond_e
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->createNativeAdView()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto :goto_1

    :cond_f
    const-string v1, "AppLovin Native Ad has been loaded"

    .line 776
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_a
        0x18b13 -> :sswitch_9
        0x33af38 -> :sswitch_8
        0x58603fd -> :sswitch_7
        0x6a45775 -> :sswitch_6
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
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public loadNativeAd()V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->placementStatus:I

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->native_ad_view_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    .line 177
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->admob_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/TemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    .line 178
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 179
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    .line 181
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->google_ad_manager_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    .line 182
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_media_view:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 183
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_background:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    .line 185
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->fan_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    .line 187
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeAd:Landroid/view/View;

    .line 188
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_image:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeImage:Landroid/widget/ImageView;

    .line 189
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeIcon:Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeTitle:Landroid/widget/TextView;

    .line 191
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_description:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeDescription:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_button:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeButton:Landroid/widget/Button;

    .line 193
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda3;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_background:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeBackground:Landroid/widget/LinearLayout;

    .line 195
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->applovin_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    .line 197
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adNetwork:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "fan_bidding_admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "fan_bidding_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "fan_bidding_applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_3
    const-string v2, "startapp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "applovin"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "unity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_7
    const-string v2, "admob"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_8
    const-string v2, "fan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v2, "applovin_max"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    :cond_0
    :goto_0
    const-string v0, "AdNetwork"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 428
    :pswitch_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->appLovinNativeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 430
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$5;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    .line 462
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->createNativeAdViewDark()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto/16 :goto_1

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->createNativeAdView()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "AppLovin Native Ad has been loaded"

    .line 468
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 375
    :pswitch_1
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance v1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 378
    invoke-virtual {v1, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v3}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 380
    invoke-virtual {v1, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 381
    new-instance v2, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$4;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$4;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;)V

    .line 419
    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    goto/16 :goto_1

    :cond_3
    const-string v1, "StartApp Native Ad has been loaded"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 267
    :pswitch_2
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    .line 268
    new-instance v0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$3;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$3;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 370
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto :goto_1

    .line 234
    :pswitch_3
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda5;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 236
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$2;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$2;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 253
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 260
    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    goto :goto_1

    :cond_4
    const-string v1, "Ad Manager Native Ad has been loaded"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 200
    :pswitch_4
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/TemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 201
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adMobNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$$ExternalSyntheticLambda4;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$1;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder$1;-><init>(Lcom/solodroid/ads/sdk/format/NativeAd$Builder;)V

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_1

    :cond_5
    const-string v1, "AdMob Native Ad has been loaded"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_9
        0x18b13 -> :sswitch_8
        0x58603fd -> :sswitch_7
        0x6a45775 -> :sswitch_6
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
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAdManagerNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adManagerNativeId"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adManagerNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdMobNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adMobNativeId"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adMobNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adNetwork"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStatus"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->adStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setAppLovinNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLovinNativeId"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->appLovinNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupAdNetwork"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->backupAdNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setDarkTheme(Z)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "darkTheme"
        }
    .end annotation

    .line 157
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->darkTheme:Z

    return-object p0
.end method

.method public setFanNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fanNativeId"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->fanNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyGDPR"
        }
    .end annotation

    .line 162
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->legacyGDPR:Z

    return-object p0
.end method

.method public setNativeAdPadding(IIII)V
    .locals 2
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

    .line 792
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->native_ad_view_container:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    .line 793
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setNativeAdStyle(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAdStyle"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->nativeAdStyle:Ljava/lang/String;

    return-object p0
.end method

.method public setPadding(IIII)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
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

    .line 112
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->setNativeAdPadding(IIII)V

    return-object p0
.end method

.method public setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/NativeAd$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementStatus"
        }
    .end annotation

    .line 152
    iput p1, p0, Lcom/solodroid/ads/sdk/format/NativeAd$Builder;->placementStatus:I

    return-object p0
.end method
