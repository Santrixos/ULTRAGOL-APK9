.class public Lcom/startapp/sdk/ads/video/h;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/startapp/sdk/adsbase/cache/CachedVideoAd;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lcom/startapp/sdk/adsbase/cache/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/startapp/sdk/adsbase/cache/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/ads/video/h;->a:Ljava/util/LinkedList;

    .line 18
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/h;->b:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/startapp/sdk/ads/video/h;->c:Ljava/util/concurrent/Executor;

    .line 20
    iput-object p3, p0, Lcom/startapp/sdk/ads/video/h;->d:Lcom/startapp/sdk/adsbase/cache/d;

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/h;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/startapp/sdk/ads/video/h;->a:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-le v4, p1, :cond_4

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapp/sdk/adsbase/cache/CachedVideoAd;

    .line 4
    iget-object v5, p0, Lcom/startapp/sdk/ads/video/h;->d:Lcom/startapp/sdk/adsbase/cache/d;

    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/cache/CachedVideoAd;->a()Ljava/lang/String;

    move-result-object v6

    .line 5
    monitor-enter v5

    .line 6
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v5, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/startapp/sdk/adsbase/cache/h;

    .line 8
    iget-object v7, v7, Lcom/startapp/sdk/adsbase/cache/h;->e:Lcom/startapp/sdk/adsbase/d;

    .line 9
    instance-of v8, v7, Lcom/startapp/sdk/ads/video/VideoEnabledAd;

    if-eqz v8, :cond_1

    .line 10
    check-cast v7, Lcom/startapp/sdk/ads/video/VideoEnabledAd;

    .line 11
    invoke-virtual {v7}, Lcom/startapp/sdk/ads/video/VideoEnabledAd;->w()Lcom/startapp/sdk/ads/video/VideoAdDetails;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 12
    invoke-virtual {v7}, Lcom/startapp/sdk/ads/video/VideoEnabledAd;->w()Lcom/startapp/sdk/ads/video/VideoAdDetails;

    move-result-object v8

    invoke-virtual {v8}, Lcom/startapp/sdk/ads/video/VideoAdDetails;->c()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 13
    invoke-virtual {v7}, Lcom/startapp/sdk/ads/video/VideoEnabledAd;->w()Lcom/startapp/sdk/ads/video/VideoAdDetails;

    move-result-object v7

    invoke-virtual {v7}, Lcom/startapp/sdk/ads/video/VideoAdDetails;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 15
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/cache/CachedVideoAd;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 16
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/cache/CachedVideoAd;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v5

    throw p1

    :cond_4
    return v3
.end method
