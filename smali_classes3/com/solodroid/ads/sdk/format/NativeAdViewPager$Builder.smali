.class public Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
.super Ljava/lang/Object;
.source "NativeAdViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solodroid/ads/sdk/format/NativeAdViewPager;
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

.field private placementStatus:I

.field progressBarAd:Landroid/widget/ProgressBar;

.field startappNativeAd:Landroid/view/View;

.field startappNativeBackground:Landroid/widget/LinearLayout;

.field startappNativeButton:Landroid/widget/Button;

.field startappNativeDescription:Landroid/widget/TextView;

.field startappNativeIcon:Landroid/widget/ImageView;

.field startappNativeImage:Landroid/widget/ImageView;

.field startappNativeTitle:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "view"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 93
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adStatus:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adNetwork:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->backupAdNetwork:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adMobNativeId:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeId:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeId:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->appLovinNativeId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 100
    iput v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->placementStatus:I

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    .line 102
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->legacyGDPR:Z

    .line 105
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    .line 106
    iput-object p2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Landroid/app/Activity;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->loadNativeAd()V

    return-object p0
.end method

.method public createNativeAdView()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 3

    .line 767
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_large_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 768
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 769
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 770
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 771
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 772
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 773
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 774
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 775
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    .line 776
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v1, v0, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    return-object v1
.end method

.method public createNativeAdViewDark()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;
    .locals 3

    .line 780
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    sget v1, Lcom/solodroid/ads/sdk/R$layout;->gnt_applovin_dark_large_template_view:I

    invoke-direct {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;-><init>(I)V

    sget v1, Lcom/solodroid/ads/sdk/R$id;->title_text_view:I

    .line 781
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setTitleTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->body_text_view:I

    .line 782
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setBodyTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->advertiser_textView:I

    .line 783
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setAdvertiserTextViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->icon_image_view:I

    .line 784
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setIconImageViewId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view_container:I

    .line 785
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setMediaContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_options_view:I

    .line 786
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setOptionsContentViewGroupId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    sget v1, Lcom/solodroid/ads/sdk/R$id;->cta_button:I

    .line 787
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->setCallToActionButtonId(I)Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;

    move-result-object v0

    .line 789
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v1, v0, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdViewBinder;Landroid/content/Context;)V

    return-object v1
.end method

.method synthetic lambda$loadBackupNativeAd$3$com-solodroid-ads-sdk-format-NativeAdViewPager$Builder(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v1"
        }
    .end annotation

    .line 483
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method synthetic lambda$loadBackupNativeAd$4$com-solodroid-ads-sdk-format-NativeAdViewPager$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 495
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 497
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 499
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 501
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 502
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 504
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 507
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 508
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 509
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadBackupNativeAd$5$com-solodroid-ads-sdk-format-NativeAdViewPager$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 531
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 533
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 534
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 535
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 537
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 538
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 539
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 540
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 543
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 544
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 545
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadNativeAd$0$com-solodroid-ads-sdk-format-NativeAdViewPager$Builder(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v1"
        }
    .end annotation

    .line 184
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method synthetic lambda$loadNativeAd$1$com-solodroid-ads-sdk-format-NativeAdViewPager$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 196
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 197
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 198
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 200
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 202
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 203
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 205
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 208
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/TemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 209
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/TemplateView;->setVisibility(I)V

    .line 210
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$loadNativeAd$2$com-solodroid-ads-sdk-format-NativeAdViewPager$Builder(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "NativeAd"
        }
    .end annotation

    .line 231
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 233
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 235
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundDark:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v2, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 238
    new-instance v1, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    invoke-direct {v1}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->withMainBackgroundColor(Landroid/graphics/drawable/ColorDrawable;)Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/solodroid/ads/sdk/util/NativeTemplateStyle$Builder;->build()Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setStyles(Lcom/solodroid/ads/sdk/util/NativeTemplateStyle;)V

    .line 240
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    sget v1, Lcom/solodroid/ads/sdk/R$color;->colorBackgroundLight:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/nativead/MediaView;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 243
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v0, p1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 244
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public loadBackupNativeAd()V
    .locals 7

    .line 465
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->placementStatus:I

    if-eqz v0, :cond_7

    .line 467
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->admob_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/TemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    .line 468
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 469
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    .line 471
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->google_ad_manager_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    .line 472
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 473
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    .line 475
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->fan_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    .line 477
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeAd:Landroid/view/View;

    .line 478
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeImage:Landroid/widget/ImageView;

    .line 479
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeIcon:Landroid/widget/ImageView;

    .line 480
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeTitle:Landroid/widget/TextView;

    .line 481
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeDescription:Landroid/widget/TextView;

    .line 482
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeButton:Landroid/widget/Button;

    .line 483
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda0;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeBackground:Landroid/widget/LinearLayout;

    .line 485
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->applovin_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    .line 486
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->progress_bar_ad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->backupAdNetwork:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/16 v6, 0x8

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "fan_bidding_admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "fan_bidding_ad_manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "fan_bidding_applovin_max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v1, "startapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "applovin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "google_ad_manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "unity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_7
    const-string v3, "admob"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_8
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_9
    const-string v1, "fan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_a
    const-string v1, "applovin_max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v0, "AdNetwork"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 713
    :pswitch_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 714
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->appLovinNativeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 715
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$10;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$10;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    .line 743
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->createNativeAdViewDark()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto/16 :goto_2

    .line 746
    :cond_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->createNativeAdView()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "AppLovin Native Ad has been loaded"

    .line 749
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 658
    :pswitch_1
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 659
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 660
    new-instance v1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 661
    invoke-virtual {v1, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 662
    invoke-virtual {v1, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 663
    invoke-virtual {v1, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 664
    new-instance v2, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$9;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$9;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;)V

    .line 703
    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    goto/16 :goto_2

    :cond_3
    const-string v1, "StartApp Native Ad has been loaded"

    .line 705
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 563
    :pswitch_2
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 564
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    .line 565
    new-instance v0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$8;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$8;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 649
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    .line 650
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "FAN Native Ad has been loaded"

    .line 652
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 528
    :pswitch_3
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 529
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda2;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 530
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$7;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$7;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 547
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 555
    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    goto :goto_2

    :cond_5
    const-string v1, "Ad Manager Native Ad has been loaded"

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 492
    :pswitch_4
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/TemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 493
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adMobNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda1;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 494
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$6;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$6;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 511
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_2

    :cond_6
    const-string v1, "AdMob Native Ad has been loaded"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_7
    :goto_2
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

.method public loadNativeAd()V
    .locals 7

    .line 166
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->placementStatus:I

    if-eqz v0, :cond_7

    .line 168
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->admob_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/TemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    .line 169
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->mediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 170
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeBackground:Landroid/widget/LinearLayout;

    .line 172
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->google_ad_manager_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    .line 173
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_media_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerMediaView:Lcom/google/android/gms/ads/nativead/MediaView;

    .line 174
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->ad_manager_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeBackground:Landroid/widget/LinearLayout;

    .line 176
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->fan_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAdLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    .line 178
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeAd:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeImage:Landroid/widget/ImageView;

    .line 180
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_icon:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeIcon:Landroid/widget/ImageView;

    .line 181
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeTitle:Landroid/widget/TextView;

    .line 182
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_description:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeDescription:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeButton:Landroid/widget/Button;

    .line 184
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda3;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->startapp_native_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeBackground:Landroid/widget/LinearLayout;

    .line 186
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->applovin_native_ad_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    .line 187
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->view:Landroid/view/View;

    sget v1, Lcom/solodroid/ads/sdk/R$id;->progress_bar_ad:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adNetwork:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/16 v6, 0x8

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "fan_bidding_admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "fan_bidding_ad_manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "fan_bidding_applovin_max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v1, "startapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v1, "applovin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "google_ad_manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v1, "unity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_7
    const-string v3, "admob"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :sswitch_8
    const-string v1, "fan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_9
    const-string v1, "applovin_max"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v0, "AdNetwork"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 411
    :pswitch_0
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->applovinNativeAd:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 412
    new-instance v0, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->appLovinNativeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    .line 413
    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$5;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$5;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->setNativeAdListener(Lcom/applovin/mediation/nativeAds/MaxNativeAdListener;)V

    .line 442
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->createNativeAdViewDark()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto/16 :goto_2

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->nativeAdLoader:Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->createNativeAdView()Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAdLoader;->loadAd(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    goto/16 :goto_2

    :cond_2
    const-string v1, "AppLovin Native Ad has been loaded"

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 357
    :pswitch_1
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->startappNativeAd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    .line 358
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;-><init>(Landroid/content/Context;)V

    .line 359
    new-instance v1, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v1}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    .line 360
    invoke-virtual {v1, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 361
    invoke-virtual {v1, v4}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 362
    invoke-virtual {v1, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    move-result-object v1

    .line 363
    new-instance v2, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$4;

    invoke-direct {v2, p0, v0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$4;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;)V

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    goto/16 :goto_2

    :cond_3
    const-string v1, "StartApp Native Ad has been loaded"

    .line 403
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 262
    :pswitch_2
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAdLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    new-instance v0, Lcom/facebook/ads/NativeAd;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/NativeAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    .line 264
    new-instance v0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;

    invoke-direct {v0, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$3;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 348
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1}, Lcom/facebook/ads/NativeAd;->buildLoadAdConfig()Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/NativeAdListener;)Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder;->build()Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;

    move-result-object v0

    .line 349
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/NativeAd;->loadAd(Lcom/facebook/ads/NativeAdBase$NativeLoadAdConfig;)V

    goto/16 :goto_2

    :cond_4
    const-string v1, "FAN Native Ad has been loaded"

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 228
    :pswitch_3
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeAd:Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/AdManagerTemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_5

    .line 229
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda5;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$2;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$2;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 247
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 254
    invoke-static {}, Lcom/solodroid/ads/sdk/util/Tools;->getGoogleAdManagerRequest()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    goto :goto_2

    :cond_5
    const-string v1, "Ad Manager Native Ad has been loaded"

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 193
    :pswitch_4
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->admobNativeAd:Lcom/solodroid/ads/sdk/util/TemplateView;

    invoke-virtual {v1}, Lcom/solodroid/ads/sdk/util/TemplateView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    .line 194
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adMobNativeId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$$ExternalSyntheticLambda4;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 195
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$1;

    invoke-direct {v1, p0}, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder$1;-><init>(Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->legacyGDPR:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/solodroid/ads/sdk/util/Tools;->getAdRequest(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_2

    :cond_6
    const-string v1, "AdMob Native Ad has been loaded"

    .line 221
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->progressBarAd:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_7
    :goto_2
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

.method public setAdManagerNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adManagerNativeId"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adManagerNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdMobNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adMobNativeId"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adMobNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adNetwork"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setAdStatus(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adStatus"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->adStatus:Ljava/lang/String;

    return-object p0
.end method

.method public setAppLovinNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appLovinNativeId"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->appLovinNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setBackupAdNetwork(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backupAdNetwork"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->backupAdNetwork:Ljava/lang/String;

    return-object p0
.end method

.method public setDarkTheme(Z)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "darkTheme"
        }
    .end annotation

    .line 155
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->darkTheme:Z

    return-object p0
.end method

.method public setFanNativeId(Ljava/lang/String;)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fanNativeId"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->fanNativeId:Ljava/lang/String;

    return-object p0
.end method

.method public setLegacyGDPR(Z)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "legacyGDPR"
        }
    .end annotation

    .line 160
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->legacyGDPR:Z

    return-object p0
.end method

.method public setPlacementStatus(I)Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "placementStatus"
        }
    .end annotation

    .line 150
    iput p1, p0, Lcom/solodroid/ads/sdk/format/NativeAdViewPager$Builder;->placementStatus:I

    return-object p0
.end method
