.class public Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;
.super Lcom/startapp/sdk/adsbase/Ad;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;,
        Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adEventDelegate:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;

.field public isLoading:Z

.field private listNativeAds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/sdk/ads/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation
.end field

.field private nativeAd:Lcom/startapp/sdk/ads/nativead/NativeAd;

.field private preferences:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->f:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-direct {p0, p1, v0}, Lcom/startapp/sdk/adsbase/Ad;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->isLoading:Z

    return-void
.end method

.method public static getPrivacyImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->a:Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivacyURL()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->a:Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->a:Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;

    .line 5
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->a:Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;

    .line 11
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 12
    :cond_2
    :goto_0
    sget-object v0, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->a:Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;

    .line 13
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationMetaData;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V
    .locals 0

    return-void
.end method

.method public final g()Lcom/startapp/sdk/adsbase/model/AdDetails;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->g()Lcom/startapp/sdk/adsbase/model/AdDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->g()Lcom/startapp/sdk/adsbase/model/AdDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNativeAds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/startapp/sdk/ads/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->getNativeAds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getNativeAds(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/startapp/sdk/ads/nativead/NativeAdDetails;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;->a:Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;

    .line 4
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;->a()Lcom/startapp/sdk/adsbase/adrules/AdRules;

    move-result-object v1

    sget-object v2, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->f:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-virtual {v1, v2, p1}, Lcom/startapp/sdk/adsbase/adrules/AdRules;->a(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    .line 7
    iput-object p1, v2, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/startapp/e;->d:Lcom/startapp/e;

    .line 10
    new-instance v2, Lcom/startapp/d;

    sget-object v3, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->f:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-direct {v2, v3, p1}, Lcom/startapp/d;-><init>(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/startapp/e;->a(Lcom/startapp/d;)V

    goto :goto_2

    .line 11
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v3, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    .line 14
    iget-object v4, v4, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    .line 15
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v2}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 17
    invoke-static {v2, p1, v3, v1}, Lcom/startapp/sdk/adsbase/a;->a([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method public getNumberOfAds()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/sdk/ads/nativead/NativeAd;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/JsonAd;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 9
    new-instance v4, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-direct {v4, v5}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;-><init>(Lcom/startapp/sdk/adsbase/model/AdDetails;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iput-object v2, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    .line 13
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->preferences:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->isAutoBitmapDownload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 15
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$a;

    invoke-direct {v0, p0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$a;-><init>(Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;I)V

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;

    .line 29
    iget-object v3, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->loadImages(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->i()V

    :cond_2
    return-void

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->i()V

    return-void
.end method

.method public final i()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->isLoading:Z

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Lcom/startapp/sdk/adsbase/Ad;->setErrorMessage(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->adEventDelegate:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, v1, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;->a:Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    .line 7
    iget-object v2, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    invoke-static {v2, v1, p0, v0}, Lcom/startapp/j;->b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/Ad;Z)V

    :cond_0
    return-void
.end method

.method public isBelowMinCPM()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/sdk/ads/nativead/NativeAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/Ad;->isBelowMinCPM()Z

    move-result v0

    return v0
.end method

.method public loadAd()Z
    .locals 2

    .line 1
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;)Z
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    move-result p1

    return p1
.end method

.method public loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z
    .locals 2

    .line 4
    new-instance v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;

    invoke-direct {v0, p0, p2}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;-><init>(Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->adEventDelegate:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;

    .line 5
    iput-object p1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->preferences:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    .line 6
    iget-boolean p2, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->isLoading:Z

    if-eqz p2, :cond_0

    const-string p1, "Ad is currently being loaded"

    .line 7
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/adsbase/Ad;->setErrorMessage(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->isLoading:Z

    .line 11
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAd;

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/startapp/sdk/ads/nativead/NativeAd;-><init>(Landroid/content/Context;Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->nativeAd:Lcom/startapp/sdk/ads/nativead/NativeAd;

    .line 12
    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->adEventDelegate:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$b;

    invoke-virtual {v0, p1, v1, p2}, Lcom/startapp/sdk/adsbase/Ad;->load(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Z)Z

    move-result p1

    return p1
.end method

.method public loadAd(Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z
    .locals 1

    .line 2
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->loadAd(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n===== StartAppNativeAd =====\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->getNumberOfAds()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd;->listNativeAds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "===== End StartAppNativeAd ====="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
