.class public Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
.super Ljava/lang/Object;
.source "NativeAdFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solodroid/ads/sdk/format/NativeAdFragment;
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

.field mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

.field nativeAd:Lcom/applovin/mediation/MaxAd;

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

.field view:Landroid/view/View;


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

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 91
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adStatus:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adNetwork:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->backupAdNetwork:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adMobNativeId:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeId:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeId:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->appLovinNativeId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 98
    iput v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->placementStatus:I

    const/4 v1, 0x0

    .line 99
    iput-boolean v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    .line 100
    iput-boolean v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->legacyGDPR:Z

    .line 102
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdStyle:Ljava/lang/String;

    .line 105
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)Landroid/app/Activity;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdStyle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->loadNativeAd()V

    return-object p0
.end method

.method public createNativeAdView(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAdStyle"
        }
    .end annotation

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "video_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "video_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "news"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 850
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_medium_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 851
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 852
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 853
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 854
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 855
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 856
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 857
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 858
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    goto/16 :goto_1

    .line 839
    :pswitch_0
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_video_small_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 840
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 841
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 842
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 843
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 844
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 845
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 846
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 847
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    goto/16 :goto_1

    .line 828
    :pswitch_1
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_video_large_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 829
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 830
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 831
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 832
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 833
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 834
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 835
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 836
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    goto :goto_1

    .line 817
    :pswitch_2
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_radio_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 818
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 819
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 820
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 821
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 822
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 823
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 824
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 825
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    goto :goto_1

    .line 806
    :pswitch_3
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_news_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 807
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 808
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 809
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 810
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 811
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 812
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 813
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 814
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    .line 861
    :goto_1
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

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

.method public createNativeAdViewDark(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAdStyle"
        }
    .end annotation

    .line 866
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "video_small"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "video_large"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "radio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "news"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 912
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_medium_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 913
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 914
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 915
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 916
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 917
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 918
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 919
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 920
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    goto/16 :goto_1

    .line 901
    :pswitch_0
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_video_small_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 902
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 903
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 904
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 905
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 906
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 907
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 908
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 909
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    goto/16 :goto_1

    .line 890
    :pswitch_1
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_video_large_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 891
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 892
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 893
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 894
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 895
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 896
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 897
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 898
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    goto :goto_1

    .line 879
    :pswitch_2
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_radio_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 880
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 881
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 882
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 883
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 884
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 885
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 886
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 887
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    goto :goto_1

    .line 868
    :pswitch_3
    new-instance p1, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v0, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_news_template_view:I

    invoke-direct {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v0, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 869
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 870
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 871
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 872
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 873
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 874
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    sget v0, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 875
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object p1

    .line 876
    invoke-virtual {p1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object p1

    .line 923
    :goto_1
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, p1, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

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

.method synthetic lambda$loadBackupNativeAd$3$com-solodroid-ads-sdk-format-NativeAdFragment$Builder(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 508
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method synthetic lambda$loadBackupNativeAd$4$com-solodroid-ads-sdk-format-NativeAdFragment$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 518
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 520
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 522
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 524
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 525
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 527
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 529
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 530
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 531
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 532
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadBackupNativeAd$5$com-solodroid-ads-sdk-format-NativeAdFragment$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 553
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 555
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 557
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 559
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 560
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 561
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 562
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 565
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 566
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 567
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadNativeAd$0$com-solodroid-ads-sdk-format-NativeAdFragment$Builder(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 200
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method synthetic lambda$loadNativeAd$1$com-solodroid-ads-sdk-format-NativeAdFragment$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 210
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 212
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 214
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 217
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 219
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 221
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 222
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 223
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadNativeAd$2$com-solodroid-ads-sdk-format-NativeAdFragment$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 244
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 246
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 248
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 251
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 253
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 256
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 257
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public loadBackupNativeAd()V
    .locals 6

    .line 488
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->placementStatus:I

    if-eqz v0, :cond_10

    .line 490
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->native_ad_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    .line 492
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->admob_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/TemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    .line 493
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 494
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    .line 496
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->google_ad_manager_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    .line 497
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 498
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    .line 500
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->fan_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    .line 502
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    .line 503
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeImage:Landroid/widget/ImageView;

    .line 504
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeIcon:Landroid/widget/ImageView;

    .line 505
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeTitle:Landroid/widget/TextView;

    .line 506
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeDescription:Landroid/widget/TextView;

    .line 507
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeButton:Landroid/widget/Button;

    .line 508
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda3;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeBackground:Landroid/widget/LinearLayout;

    .line 510
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->applovin_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    .line 512
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->backupAdNetwork:Ljava/lang/String;

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

    .line 584
    :pswitch_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_b

    .line 585
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 586
    new-instance v1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 587
    invoke-virtual {v1, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 588
    invoke-virtual {v1, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 589
    invoke-virtual {v1, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 590
    new-instance v2, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$8;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;)V

    .line 628
    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    goto/16 :goto_1

    :cond_b
    const-string v1, "StartApp Native Ad has been loaded"

    .line 630
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 550
    :pswitch_1
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_c

    .line 551
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda5;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 552
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$7;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$7;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 569
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 577
    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "Ad Manager Native Ad has been loaded"

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 515
    :pswitch_2
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/TemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_d

    .line 516
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adMobNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda4;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 517
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$6;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$6;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 534
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_1

    :cond_d
    const-string v1, "AdMob Native Ad has been loaded"

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 788
    :pswitch_3
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 635
    :pswitch_4
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    .line 636
    new-instance v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$9;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$9;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 738
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto :goto_1

    .line 745
    :pswitch_5
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_f

    .line 746
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->appLovinNativeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 747
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$10;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$10;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    .line 775
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    if-eqz v0, :cond_e

    .line 776
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdStyle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->createNativeAdViewDark(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto :goto_1

    .line 778
    :cond_e
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdStyle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->createNativeAdView(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto :goto_1

    :cond_f
    const-string v1, "AppLovin Native Ad has been loaded"

    .line 781
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

    .line 180
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->placementStatus:I

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->native_ad_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    .line 184
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->admob_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/TemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    .line 185
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 186
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    .line 188
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->google_ad_manager_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    .line 189
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 190
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    .line 192
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->fan_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    .line 194
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    .line 195
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeImage:Landroid/widget/ImageView;

    .line 196
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeIcon:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeTitle:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeDescription:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeButton:Landroid/widget/Button;

    .line 200
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeBackground:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->applovin_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    .line 204
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adNetwork:Ljava/lang/String;

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

    .line 435
    :pswitch_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 436
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->appLovinNativeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 437
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$5;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$5;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    .line 466
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdStyle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->createNativeAdViewDark(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto/16 :goto_1

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdStyle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->createNativeAdView(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto/16 :goto_1

    :cond_2
    const-string v1, "AppLovin Native Ad has been loaded"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 382
    :pswitch_1
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 383
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 384
    new-instance v1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 385
    invoke-virtual {v1, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v3}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 387
    invoke-virtual {v1, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 388
    new-instance v2, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$4;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$4;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;)V

    .line 426
    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    goto/16 :goto_1

    :cond_3
    const-string v1, "StartApp Native Ad has been loaded"

    .line 428
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 274
    :pswitch_2
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    .line 275
    new-instance v0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$3;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$3;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 377
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto :goto_1

    .line 241
    :pswitch_3
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda2;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 243
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$2;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$2;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 260
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 267
    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    goto :goto_1

    :cond_4
    const-string v1, "Ad Manager Native Ad has been loaded"

    .line 269
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 207
    :pswitch_4
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/TemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adMobNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$1;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder$1;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;)V

    .line 226
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_1

    :cond_5
    const-string v1, "AdMob Native Ad has been loaded"

    .line 235
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

.method public setAdManagerNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adManagerNativeId"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adManagerNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdMobNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adMobNativeId"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adMobNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adNetwork"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStatus"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->adStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setAppLovinNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLovinNativeId"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->appLovinNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupAdNetwork"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->backupAdNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setDarkTheme(Z)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "darkTheme"
        }
    .end annotation

    .line 164
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->darkTheme:Z

    return-object p0
.end method

.method public setFanNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fanNativeId"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->fanNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyGDPR"
        }
    .end annotation

    .line 169
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->legacyGDPR:Z

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

    .line 798
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->native_ad_view_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdViewContainer:Landroid/widget/LinearLayout;

    .line 799
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setNativeAdStyle(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeAdStyle"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->nativeAdStyle:Ljava/lang/String;

    return-object p0
.end method

.method public setPadding(IIII)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
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

    .line 114
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->setNativeAdPadding(IIII)V

    return-object p0
.end method

.method public setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementStatus"
        }
    .end annotation

    .line 159
    iput p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->placementStatus:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdFragment$Builder;->view:Landroid/view/View;

    return-object p0
.end method
