.class public Lcom/startapp/sdk/ads/nativead/NativeAdDetails;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/sdk/ads/nativead/NativeAdInterface;


# instance fields
.field public final a:Lcom/startapp/sdk/adsbase/model/AdDetails;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/graphics/Bitmap;

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Lcom/startapp/hd;

.field public h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public i:Landroid/view/View$OnAttachStateChangeListener;

.field public j:Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;

.field public k:Lcom/startapp/q7;

.field public final l:Lcom/startapp/j9$a;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/adsbase/model/AdDetails;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->e:Z

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->h:Ljava/lang/ref/WeakReference;

    .line 14
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$a;

    invoke-direct {v0, p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$a;-><init>(Lcom/startapp/sdk/ads/nativead/NativeAdDetails;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->l:Lcom/startapp/j9$a;

    .line 23
    iput-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    return-void
.end method

.method public static a(Lcom/startapp/sdk/ads/nativead/NativeAdDetails;Landroid/view/View;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    sget-object p1, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$f;->a:[I

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getCampaignAction()Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/model/AdDetails;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/model/AdDetails;->g()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    iget-object v4, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v2, v0, v3}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;)V

    goto/16 :goto_1

    .line 16
    :cond_1
    sget-object p1, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->f:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    invoke-static {v0, p1}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)Z

    move-result p1

    .line 17
    iget-object v2, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/model/AdDetails;->A()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 18
    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/model/AdDetails;->g()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/model/AdDetails;->u()[Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/model/AdDetails;->p()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-direct {v4, p1}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    .line 19
    sget-object p1, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 20
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->z()J

    move-result-wide v5

    .line 21
    sget-object p1, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 22
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->y()J

    move-result-wide v7

    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    .line 23
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/model/AdDetails;->B()Z

    move-result v9

    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/model/AdDetails;->C()Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 24
    invoke-static/range {v0 .. v12}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;JJZLjava/lang/Boolean;ZLjava/lang/Runnable;)V

    goto :goto_1

    .line 25
    :cond_2
    iget-object v2, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/model/AdDetails;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/model/AdDetails;->u()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    iget-object v5, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {v5}, Lcom/startapp/sdk/adsbase/model/AdDetails;->B()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    const/4 v5, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;ZZ)V

    .line 33
    :goto_1
    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->j:Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;

    if-eqz p1, :cond_4

    .line 34
    invoke-interface {p1, p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;->adClicked(Lcom/startapp/sdk/ads/nativead/NativeAdInterface;)V

    :cond_4
    return-void
.end method

.method public static synthetic a(Lcom/startapp/sdk/ads/nativead/NativeAdDetails;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->e:Z

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->g:Lcom/startapp/hd;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->d:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->j:Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0, p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;->adNotDisplayed(Lcom/startapp/sdk/ads/nativead/NativeAdInterface;)V

    :cond_1
    return-void

    .line 70
    :cond_2
    new-instance v7, Lcom/startapp/j9;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 71
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    .line 72
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->w()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->f:Ljava/lang/String;

    invoke-direct {v4, v0}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->h()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/model/AdDetails;->h()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_0

    .line 77
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 78
    sget-object v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 79
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->p()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    move-object v1, v7

    .line 80
    invoke-direct/range {v1 .. v6}, Lcom/startapp/j9;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;J)V

    .line 82
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->l:Lcom/startapp/j9$a;

    .line 83
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v7, Lcom/startapp/j9;->j:Ljava/lang/ref/WeakReference;

    .line 84
    sget-object v0, Lcom/startapp/sdk/ads/banner/BannerMetaData;->b:Lcom/startapp/sdk/ads/banner/BannerMetaData;

    .line 85
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/BannerMetaData;->a()Lcom/startapp/sdk/ads/banner/BannerOptions;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/startapp/hd;

    iget-object v2, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->h:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v7, v0}, Lcom/startapp/hd;-><init>(Ljava/lang/ref/WeakReference;Lcom/startapp/j9;Lcom/startapp/sdk/ads/banner/BannerOptions;)V

    iput-object v1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->g:Lcom/startapp/hd;

    .line 87
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$e;

    invoke-direct {v0, p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$e;-><init>(Lcom/startapp/sdk/ads/nativead/NativeAdDetails;)V

    .line 88
    iput-object v0, v1, Lcom/startapp/hd;->c:Lcom/startapp/hd$a;

    .line 89
    invoke-virtual {v1}, Lcom/startapp/hd;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    invoke-virtual {v1}, Lcom/startapp/hd;->run()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->h:Ljava/lang/ref/WeakReference;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->i:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/startapp/e7;

    invoke-direct {v0, p0}, Lcom/startapp/e7;-><init>(Lcom/startapp/sdk/ads/nativead/NativeAdDetails;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->i:Landroid/view/View$OnAttachStateChangeListener;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->i:Landroid/view/View$OnAttachStateChangeListener;

    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a()V

    :goto_1
    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->unregisterView()V

    return-void
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getCampaignAction()Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;
    .locals 2

    .line 1
    sget-object v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;->OPEN_MARKET:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;

    .line 2
    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/model/AdDetails;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;->LAUNCH_APP:Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;

    :cond_0
    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstalls()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public getRating()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->q()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    return v0
.end method

.method public getSecondaryImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSecondaryImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public isApp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->y()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isBelowMinCPM()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a:Lcom/startapp/sdk/adsbase/model/AdDetails;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/AdDetails;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadImages(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$b;

    invoke-direct {v0, p0, p2}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$b;-><init>(Lcom/startapp/sdk/ads/nativead/NativeAdDetails;Ljava/lang/Runnable;)V

    .line 20
    new-instance p2, Lcom/startapp/f1;

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, p1, v1, v0, v2}, Lcom/startapp/f1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/f1$b;I)V

    invoke-virtual {p2}, Lcom/startapp/f1;->a()V

    .line 21
    new-instance p2, Lcom/startapp/f1;

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getSecondaryImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p2, p1, v1, v0, v2}, Lcom/startapp/f1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/f1$b;I)V

    invoke-virtual {p2}, Lcom/startapp/f1;->a()V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$c;

    invoke-direct {v0, p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$c;-><init>(Lcom/startapp/sdk/ads/nativead/NativeAdDetails;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;)V

    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$d;

    invoke-direct {v0, p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails$d;-><init>(Lcom/startapp/sdk/ads/nativead/NativeAdDetails;)V

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->a(Landroid/view/View;)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->registerViewForInteraction(Landroid/view/View;)V

    .line 21
    :goto_1
    iput-object p3, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->j:Lcom/startapp/sdk/ads/nativead/NativeAdDisplayListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "         Title: ["

    .line 6
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n         Description: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]...\n         Rating: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getRating()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "]\n         Installs: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getInstalls()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n         Category: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n         PackageName: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\n         CampaginAction: ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->getCampaignAction()Lcom/startapp/sdk/ads/nativead/StartAppNativeAd$CampaignAction;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->g:Lcom/startapp/hd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/hd;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->g:Lcom/startapp/hd;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5
    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    if-eqz v0, :cond_1

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdDetails;->i:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method
