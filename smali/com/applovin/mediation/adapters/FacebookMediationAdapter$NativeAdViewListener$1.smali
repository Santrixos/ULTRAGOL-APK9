.class Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;
.super Ljava/lang/Object;
.source "FacebookMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->renderNativeAdView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;)V
    .locals 0

    .line 973
    iput-object p1, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 977
    iget-object v0, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v0, v0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 978
    iget-object v1, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v1, v1, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    invoke-static {v1, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$700(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Landroid/app/Activity;)Landroid/content/Context;

    move-result-object v1

    .line 980
    new-instance v2, Lcom/facebook/ads/MediaView;

    invoke-direct {v2, v1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 981
    new-instance v3, Lcom/facebook/ads/MediaView;

    invoke-direct {v3, v1}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 983
    new-instance v4, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    invoke-direct {v4}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;-><init>()V

    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    .line 984
    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setAdFormat(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 985
    invoke-static {v5}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$600(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/NativeAd;->getAdHeadline()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setTitle(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 986
    invoke-static {v5}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$600(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/NativeAd;->getAdvertiserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setAdvertiser(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 987
    invoke-static {v5}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$600(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/NativeAd;->getAdBodyText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setBody(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 988
    invoke-static {v5}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$600(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/ads/NativeAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setCallToAction(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    move-result-object v4

    .line 989
    invoke-virtual {v4, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setIconView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    move-result-object v4

    .line 990
    invoke-virtual {v4, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setMediaView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    move-result-object v4

    new-instance v5, Lcom/facebook/ads/AdOptionsView;

    iget-object v6, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v6, v6, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 991
    invoke-static {v6}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$600(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, v1, v6, v7}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    invoke-virtual {v4, v5}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setOptionsView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    move-result-object v1

    .line 992
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->build()Lcom/applovin/mediation/nativeAds/MaxNativeAd;

    move-result-object v1

    .line 996
    iget-object v4, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v4, v4, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->serverParameters:Landroid/os/Bundle;

    const-string v5, "template"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "vertical"

    .line 997
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const v7, 0x8b7914

    if-eqz v6, :cond_3

    .line 999
    sget v6, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    if-ge v6, v7, :cond_0

    .line 1001
    iget-object v6, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v6, v6, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    const-string v7, "Vertical native banners are only supported on MAX SDK 9.14.5 and above. Default native template will be used."

    invoke-virtual {v6, v7}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->log(Ljava/lang/String;)V

    .line 1004
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1006
    iget-object v4, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v4, v4, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->adFormat:Lcom/applovin/mediation/MaxAdFormat;

    sget-object v5, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    if-ne v4, v5, :cond_1

    const-string v4, "vertical_leader_template"

    goto :goto_0

    :cond_1
    const-string v4, "vertical_media_banner_template"

    .line 1007
    :goto_0
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    invoke-static {v5, v1, v4, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$800(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v0

    goto :goto_3

    .line 1011
    :cond_2
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    invoke-static {v5, v1, v4, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$800(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v0

    goto :goto_3

    .line 1014
    :cond_3
    sget v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    if-ge v5, v7, :cond_5

    .line 1016
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 1017
    invoke-static {v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    const-string v4, "no_body_banner_template"

    .line 1016
    :goto_1
    invoke-static {v5, v1, v4, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$800(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v0

    goto :goto_3

    .line 1022
    :cond_5
    iget-object v5, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v5, v5, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    .line 1023
    invoke-static {v4}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-string v4, "media_banner_template"

    .line 1022
    :goto_2
    invoke-static {v5, v1, v4, v0}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$800(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Landroid/app/Activity;)Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    move-result-object v0

    .line 1027
    :goto_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1028
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getIconView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getIconContentView()Landroid/widget/FrameLayout;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1030
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getIconContentView()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1033
    :cond_7
    sget v5, Lcom/applovin/sdk/AppLovinSdk;->VERSION_CODE:I

    const v6, 0xa7d8c0

    if-lt v5, v6, :cond_8

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getMediaContentViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getMediaContentView()Landroid/widget/FrameLayout;

    move-result-object v5

    .line 1034
    :goto_4
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getMediaView()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    .line 1036
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    :cond_9
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 1040
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_a
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getCallToActionButton()Landroid/widget/Button;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 1044
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getCallToActionButton()Landroid/widget/Button;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    :cond_b
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getAdvertiserTextView()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1048
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getAdvertiserTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    :cond_c
    invoke-virtual {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getBodyTextView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1052
    invoke-virtual {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->getBodyTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    :cond_d
    iget-object v1, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v1, v1, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/FacebookMediationAdapter;

    invoke-static {v1}, Lcom/applovin/mediation/adapters/FacebookMediationAdapter;->access$600(Lcom/applovin/mediation/adapters/FacebookMediationAdapter;)Lcom/facebook/ads/NativeAd;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    .line 1057
    iget-object v1, p0, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;

    iget-object v1, v1, Lcom/applovin/mediation/adapters/FacebookMediationAdapter$NativeAdViewListener;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    invoke-interface {v1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoaded(Landroid/view/View;)V

    return-void
.end method
