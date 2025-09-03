.class public abstract Lcom/startapp/sdk/ads/banner/BannerBase;
.super Landroid/widget/RelativeLayout;
.source "Sta"


# instance fields
.field public a:Z

.field public b:Lcom/startapp/sdk/adsbase/model/AdPreferences;

.field public c:Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

.field public d:I

.field public e:Z

.field public f:Landroid/graphics/Point;

.field public g:Z

.field public h:I

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Lcom/startapp/hd;

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public final o:Ljava/lang/Runnable;

.field public final p:Landroid/os/Handler;

.field public final q:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->a:Z

    .line 5
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->d:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->e:Z

    .line 10
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->g:Z

    .line 11
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x186a0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const v3, 0x9876543

    add-int/2addr v2, v3

    iput v2, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->h:I

    add-int/2addr v2, v1

    .line 12
    iput v2, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->i:I

    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->l:Z

    .line 18
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->m:Z

    .line 23
    new-instance v0, Lcom/startapp/sdk/ads/banner/BannerBase$a;

    invoke-direct {v0, p0}, Lcom/startapp/sdk/ads/banner/BannerBase$a;-><init>(Lcom/startapp/sdk/ads/banner/BannerBase;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->o:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Landroid/os/Handler;

    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/startapp/sdk/ads/banner/BannerBase$b;

    invoke-direct {v2, p0}, Lcom/startapp/sdk/ads/banner/BannerBase$b;-><init>(Lcom/startapp/sdk/ads/banner/BannerBase;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->p:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->q:Ljava/lang/Object;

    .line 52
    :try_start_0
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->r()Lcom/startapp/b9;

    move-result-object p1

    const/16 v0, 0x200

    .line 54
    invoke-virtual {p1, v0}, Lcom/startapp/b9;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/startapp/sdk/ads/banner/BannerBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 57
    iput-boolean p3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->a:Z

    .line 60
    iput p3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->d:I

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->e:Z

    .line 65
    iput-boolean p3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->g:Z

    .line 66
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const v2, 0x9876543

    add-int/2addr v1, v2

    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->h:I

    add-int/2addr v1, v0

    .line 67
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->i:I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 72
    iput-boolean p3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->l:Z

    .line 73
    iput-boolean p3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->m:Z

    .line 78
    new-instance p3, Lcom/startapp/sdk/ads/banner/BannerBase$a;

    invoke-direct {p3, p0}, Lcom/startapp/sdk/ads/banner/BannerBase$a;-><init>(Lcom/startapp/sdk/ads/banner/BannerBase;)V

    iput-object p3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->o:Ljava/lang/Runnable;

    .line 88
    new-instance p3, Landroid/os/Handler;

    .line 89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/startapp/sdk/ads/banner/BannerBase$b;

    invoke-direct {v1, p0}, Lcom/startapp/sdk/ads/banner/BannerBase$b;-><init>(Lcom/startapp/sdk/ads/banner/BannerBase;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->p:Landroid/os/Handler;

    .line 100
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->q:Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/startapp/sdk/ads/banner/BannerBase;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 10
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->isFirstLoad()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;->a:Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;

    .line 12
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;->a()Lcom/startapp/sdk/adsbase/adrules/AdRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adrules/AdRules;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/BannerBase;->setFirstLoad(Z)V

    .line 14
    sget-object v0, Lcom/startapp/e;->d:Lcom/startapp/e;

    .line 15
    new-instance v1, Lcom/startapp/d;

    sget-object v2, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->b:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 16
    iget-object v3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 17
    invoke-direct {v1, v2, v3}, Lcom/startapp/d;-><init>(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/startapp/e;->a(Lcom/startapp/d;)V

    :cond_1
    return-void
.end method

.method public abstract a(I)V
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/startapp/o0;

    invoke-direct {v0, p1, p2}, Lcom/startapp/o0;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    iget-object p1, v0, Lcom/startapp/o0;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/ads/banner/BannerBase;->setAdTag(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/startapp/j9;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->k:Lcom/startapp/hd;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/startapp/sdk/ads/banner/BannerMetaData;->b:Lcom/startapp/sdk/ads/banner/BannerMetaData;

    .line 3
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/BannerMetaData;->a()Lcom/startapp/sdk/ads/banner/BannerOptions;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/startapp/hd;

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->g()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/startapp/hd;-><init>(Landroid/view/View;Lcom/startapp/j9;Lcom/startapp/sdk/ads/banner/BannerOptions;)V

    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->k:Lcom/startapp/hd;

    .line 5
    invoke-virtual {v1}, Lcom/startapp/hd;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/startapp/hd;->run()V

    :cond_1
    return-void
.end method

.method public a(Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 3

    .line 18
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->a:Z

    sget v1, Lcom/startapp/a0;->a:I

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 29
    :goto_1
    invoke-virtual {p1, v0}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->setHardwareAccelerated(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->p:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->f()I

    move-result v0

    return v0
.end method

.method public abstract d()I
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()I
.end method

.method public g()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public abstract getBidToken()Ljava/lang/String;
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->n:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getHeightInDp()I
.end method

.method public abstract getWidthInDp()I
.end method

.method public h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->i()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->getWidthInDp()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->getHeightInDp()I

    move-result v1

    invoke-static {v0, v1}, Lcom/startapp/qb;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    const/16 v0, 0xa9

    .line 5
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x1000000

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public abstract hideBanner()V
.end method

.method public abstract i()V
.end method

.method public isClicked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->l:Z

    return v0
.end method

.method public isFirstLoad()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->e:Z

    return v0
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->k:Lcom/startapp/hd;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/hd;->a()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->k:Lcom/startapp/hd;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->c:Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;->a:Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;

    .line 6
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;->a()Lcom/startapp/sdk/adsbase/adrules/AdRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adrules/AdRules;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->c:Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->l()V

    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    sget-object v0, Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;->a:Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;

    .line 21
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adrules/AdaptMetaData;->a()Lcom/startapp/sdk/adsbase/adrules/AdRules;

    move-result-object v0

    sget-object v1, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->b:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 22
    iget-object v2, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->j:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/adsbase/adrules/AdRules;->a(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Ljava/lang/String;)Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->c:Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

    .line 24
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->l()V

    goto :goto_1

    .line 27
    :cond_3
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->hideBanner()V

    :cond_4
    :goto_1
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->p:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->p:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract l()V
.end method

.method public loadAd()V
    .locals 3

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Lcom/startapp/qb;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/startapp/sdk/ads/banner/BannerBase;->loadAd(II)V

    return-void
.end method

.method public loadAd(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->r()Lcom/startapp/b9;

    move-result-object v0

    const/16 v1, 0x400

    .line 8
    invoke-virtual {v0, v1}, Lcom/startapp/b9;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :catchall_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->f:Landroid/graphics/Point;

    .line 17
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->k()V

    return-void
.end method

.method public m()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->o:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 8
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->A()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 9
    iget-object v2, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->p:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    iget-object v3, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->p:Landroid/os/Handler;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 12
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->r()Lcom/startapp/b9;

    move-result-object v0

    const/16 v1, 0x1000

    .line 6
    invoke-virtual {v0, v1}, Lcom/startapp/b9;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->a:Z

    .line 15
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->m()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->a:Z

    .line 4
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->b()V

    .line 5
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->k:Lcom/startapp/hd;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/startapp/hd;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->k:Lcom/startapp/hd;

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 6
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "bannerId"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/BannerBase;->a(I)V

    const-string v0, "adRulesResult"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->c:Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

    const-string v0, "adPreferences"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->b:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    const-string v0, "offset"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->d:I

    const-string v0, "firstLoad"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->e:Z

    const-string v0, "shouldReloadBanner"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->m:Z

    const-string v0, "upperState"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->isClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/startapp/sdk/ads/banner/BannerBase;->setClicked(Z)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->m:Z

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->d()I

    move-result v2

    const-string v3, "bannerId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "upperState"

    .line 9
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->c:Lcom/startapp/sdk/adsbase/adrules/AdRulesResult;

    const-string v2, "adRulesResult"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 11
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->b:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    const-string v2, "adPreferences"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 12
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->d:I

    const-string v2, "offset"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->e:Z

    const-string v2, "firstLoad"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->m:Z

    const-string v2, "shouldReloadBanner"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    iget-boolean p1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->m:Z

    if-eqz p1, :cond_0

    .line 5
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->m:Z

    .line 6
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->j()V

    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->a:Z

    .line 10
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->m()V

    goto :goto_0

    .line 12
    :cond_1
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->a:Z

    .line 13
    invoke-virtual {p0}, Lcom/startapp/sdk/ads/banner/BannerBase;->b()V

    :goto_0
    return-void
.end method

.method public abstract setAdTag(Ljava/lang/String;)V
.end method

.method public setClicked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->l:Z

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->n:Ljava/lang/String;

    return-void
.end method

.method public setFirstLoad(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/BannerBase;->e:Z

    return-void
.end method
