.class Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;
.super Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;
.source "FacebookAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/facebook/FacebookAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnifiedAdMapper"
.end annotation


# instance fields
.field private mNativeAd:Lcom/facebook/ads/NativeAd;

.field private mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

.field final synthetic this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/NativeAd;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 756
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Lcom/facebook/ads/NativeBannerAd;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;-><init>()V

    .line 765
    iput-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    return-void
.end method

.method private containsRequiredFieldsForNativeBannerAd(Lcom/facebook/ads/NativeBannerAd;)Z
    .locals 1

    .line 934
    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p1}, Lcom/facebook/ads/NativeBannerAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private containsRequiredFieldsForUnifiedNativeAd(Lcom/facebook/ads/NativeAd;)Z
    .locals 1

    .line 920
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getRating(Lcom/facebook/ads/NativeAdBase$Rating;)Ljava/lang/Double;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    .line 1008
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase$Rating;->getValue()D

    move-result-wide v2

    mul-double v2, v2, v0

    invoke-virtual {p1}, Lcom/facebook/ads/NativeAdBase$Rating;->getScale()D

    move-result-wide v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public mapUnifiedNativeAd(Landroid/content/Context;Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;)V
    .locals 6

    .line 777
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1500(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result v0

    const-string v1, "social_context"

    const-string v2, "id"

    const-string v3, "com.google.ads.mediation.facebook"

    const-string v4, "Ad from Facebook doesn\'t have all assets required for the Native Banner Ad format."

    const/16 v5, 0x6c

    if-eqz v0, :cond_3

    .line 778
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->containsRequiredFieldsForNativeBannerAd(Lcom/facebook/ads/NativeBannerAd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    invoke-direct {p1, v5, v4, v3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 782
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-interface {p2, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingFailed(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setBody(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_1

    .line 791
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {v0, v3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_0

    .line 793
    :cond_1
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    .line 794
    invoke-virtual {v4}, Lcom/facebook/ads/NativeBannerAd;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/net/Uri;)V

    .line 793
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_0

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 798
    new-instance v3, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {v3, v4, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/graphics/drawable/Drawable;)V

    .line 799
    invoke-virtual {p0, v3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 801
    :goto_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 802
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setAdvertiser(Ljava/lang/String;)V

    .line 804
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 805
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeBannerAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 806
    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeBannerAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 807
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 809
    :cond_3
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->containsRequiredFieldsForUnifiedNativeAd(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 810
    new-instance p1, Lcom/google/android/gms/ads/AdError;

    invoke-direct {p1, v5, v4, v3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 813
    sget-object v0, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-interface {p2, p1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingFailed(Lcom/google/android/gms/ads/AdError;)V

    return-void

    .line 819
    :cond_4
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setHeadline(Ljava/lang/String;)V

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 821
    new-instance v3, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v5, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 822
    invoke-virtual {v5}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/net/Uri;)V

    .line 821
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setImages(Ljava/util/List;)V

    .line 824
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setBody(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_6

    .line 826
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_5

    .line 827
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {v0, v3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;)V

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_1

    .line 829
    :cond_5
    new-instance v0, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    .line 830
    invoke-virtual {v4}, Lcom/facebook/ads/NativeAd;->getAdIcon()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/ads/NativeAdBase$Image;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/net/Uri;)V

    .line 829
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    goto :goto_1

    .line 833
    :cond_6
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getPreloadedIconViewDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 834
    new-instance v3, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;

    iget-object v4, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-direct {v3, v4, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$FacebookAdapterNativeAdImage;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter;Landroid/graphics/drawable/Drawable;)V

    .line 835
    invoke-virtual {p0, v3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V

    .line 837
    :goto_1
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setCallToAction(Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setAdvertiser(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    new-instance v3, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper$1;

    invoke-direct {v3, p0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper$1;-><init>(Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;)V

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaView;->setListener(Lcom/facebook/ads/MediaViewListener;)V

    .line 887
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setMediaView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 888
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setHasVideoContent(Z)V

    .line 891
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdStarRating()Lcom/facebook/ads/NativeAdBase$Rating;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->getRating(Lcom/facebook/ads/NativeAdBase$Rating;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 893
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setStarRating(Ljava/lang/Double;)V

    .line 895
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 896
    iget-object v3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v3}, Lcom/facebook/ads/NativeAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 897
    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-virtual {v2}, Lcom/facebook/ads/NativeAd;->getAdSocialContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 898
    invoke-virtual {p0, v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setExtras(Landroid/os/Bundle;)V

    .line 900
    :goto_2
    new-instance v0, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v0, p1}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    .line 902
    iget-object v1, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1500(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 903
    new-instance v1, Lcom/facebook/ads/AdOptionsView;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    goto :goto_3

    .line 905
    :cond_8
    new-instance v1, Lcom/facebook/ads/AdOptionsView;

    iget-object v2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    invoke-direct {v1, p1, v2, v0}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 907
    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setAdChoicesContent(Landroid/view/View;)V

    .line 908
    invoke-interface {p2}, Lcom/google/ads/mediation/facebook/FacebookAdapter$NativeAdMapperListener;->onMappingSuccess()V

    return-void
.end method

.method public trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 p3, 0x1

    .line 945
    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setOverrideImpressionRecording(Z)V

    .line 948
    invoke-virtual {p0, p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->setOverrideClickHandling(Z)V

    .line 951
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 952
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 953
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "3003"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 956
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    .line 960
    :cond_1
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p2}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1500(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez v1, :cond_2

    .line 964
    sget-object p1, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string p2, "Missing or invalid native ad icon asset. Facebook impression recording might be impacted for this ad."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 969
    :cond_2
    instance-of p2, v1, Landroid/widget/ImageView;

    if-nez p2, :cond_3

    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 972
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "Native ad icon asset is rendered with an incompatible class type. Facebook impression recording might be impacted for this ad. Expected: ImageView, actual: %s."

    .line 970
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 973
    sget-object p2, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 977
    :cond_3
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2, p1, v1}, Lcom/facebook/ads/NativeBannerAd;->registerViewForInteraction(Landroid/view/View;Landroid/widget/ImageView;)V

    return-void

    .line 981
    :cond_4
    instance-of p2, v1, Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    .line 982
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object p3

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Landroid/widget/ImageView;Ljava/util/List;)V

    goto :goto_1

    .line 984
    :cond_5
    sget-object p2, Lcom/google/ads/mediation/facebook/FacebookMediationAdapter;->TAG:Ljava/lang/String;

    const-string p3, "Native icon asset is not of type ImageView.Calling registerViewForInteraction() without a reference to the icon view."

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object p2, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    iget-object p3, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {p3}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1600(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Lcom/facebook/ads/MediaView;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v0}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public untrackView(Landroid/view/View;)V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->this$0:Lcom/google/ads/mediation/facebook/FacebookAdapter;

    invoke-static {v0}, Lcom/google/ads/mediation/facebook/FacebookAdapter;->access$1500(Lcom/google/ads/mediation/facebook/FacebookAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeBannerAd:Lcom/facebook/ads/NativeBannerAd;

    if-eqz v0, :cond_0

    .line 994
    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    goto :goto_0

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/facebook/FacebookAdapter$UnifiedAdMapper;->mNativeAd:Lcom/facebook/ads/NativeAd;

    if-eqz v0, :cond_1

    .line 996
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->unregisterView()V

    .line 998
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->untrackView(Landroid/view/View;)V

    return-void
.end method
