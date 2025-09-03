.class public Lcom/solodroid/ads/sdk/format/AppOpenAdManager;
.super Ljava/lang/Object;
.source "AppOpenAdManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppOpenAd"


# instance fields
.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private isLoadingAd:Z

.field public isShowingAd:Z

.field private loadTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isLoadingAd:Z

    .line 23
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isShowingAd:Z

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->loadTime:J

    return-void
.end method

.method static synthetic access$002(Lcom/solodroid/ads/sdk/format/AppOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p1
.end method

.method static synthetic access$102(Lcom/solodroid/ads/sdk/format/AppOpenAdManager;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isLoadingAd:Z

    return p1
.end method

.method static synthetic access$202(Lcom/solodroid/ads/sdk/format/AppOpenAdManager;J)J
    .locals 0

    .line 18
    iput-wide p1, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->loadTime:J

    return-wide p1
.end method

.method static synthetic lambda$showAdIfAvailable$0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public isAdAvailable()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->wasLoadTimeLessThanNHoursAgo(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "adManagerAppOpenAdUnitId"
        }
    .end annotation

    .line 45
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isLoadingAd:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isLoadingAd:Z

    .line 50
    new-instance v1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$1;

    invoke-direct {v2, p0}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$1;-><init>(Lcom/solodroid/ads/sdk/format/AppOpenAdManager;)V

    invoke-static {p1, p2, v1, v0, v2}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;ILcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showAdIfAvailable(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "activity",
            "appOpenAdUnitId"
        }
    .end annotation

    .line 104
    new-instance v0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;Ljava/lang/String;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;)V

    return-void
.end method

.method public showAdIfAvailable(Landroid/app/Activity;Ljava/lang/String;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "activity",
            "appOpenAdUnitId",
            "onShowAdCompleteListener"
        }
    .end annotation

    .line 117
    iget-boolean v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isShowingAd:Z

    const-string v1, "AppOpenAd"

    if-eqz v0, :cond_0

    const-string p1, "The app open ad is already showing."

    .line 118
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "The app open ad is not ready yet."

    .line 124
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-interface {p3}, Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;->onShowAdComplete()V

    .line 126
    invoke-virtual {p0, p1, p2}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->loadAd(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "Will show ad."

    .line 130
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    new-instance v1, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager$2;-><init>(Lcom/solodroid/ads/sdk/format/AppOpenAdManager;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    const/4 p2, 0x1

    .line 163
    iput-boolean p2, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isShowingAd:Z

    .line 164
    iget-object p2, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public wasLoadTimeLessThanNHoursAgo(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numHours"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->loadTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    mul-long p1, p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
