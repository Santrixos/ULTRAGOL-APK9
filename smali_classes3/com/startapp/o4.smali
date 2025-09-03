.class public Lcom/startapp/o4;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Lcom/startapp/l4;

.field public final b:Lcom/startapp/r3;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/startapp/c2;

.field public final f:Lcom/startapp/c3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/c3<",
            "Lcom/startapp/i4;",
            "Lcom/startapp/k4;",
            "Lcom/startapp/n4;",
            "Lcom/startapp/t4;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lcom/startapp/k4;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/atomic/AtomicLong;

.field public final j:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/lang/Runnable;

.field public final l:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Lcom/startapp/n4;

.field public final n:Lcom/startapp/b3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/b3<",
            "Lcom/startapp/i4;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startapp/l4;Lcom/startapp/r3;Ljava/util/concurrent/Executor;Lcom/startapp/d3;Lcom/startapp/c2;Lcom/startapp/c3;Lcom/startapp/d3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/l4;",
            "Lcom/startapp/r3;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/startapp/d3<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/startapp/c2;",
            "Lcom/startapp/c3<",
            "Lcom/startapp/i4;",
            "Lcom/startapp/k4;",
            "Lcom/startapp/n4;",
            "Lcom/startapp/t4;",
            ">;",
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/o4;->h:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/startapp/o4;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    new-instance v0, Lcom/startapp/o4$a;

    invoke-direct {v0, p0}, Lcom/startapp/o4$a;-><init>(Lcom/startapp/o4;)V

    iput-object v0, p0, Lcom/startapp/o4;->j:Lcom/startapp/d3;

    .line 28
    new-instance v0, Lcom/startapp/o4$b;

    invoke-direct {v0, p0}, Lcom/startapp/o4$b;-><init>(Lcom/startapp/o4;)V

    iput-object v0, p0, Lcom/startapp/o4;->k:Ljava/lang/Runnable;

    .line 42
    new-instance v0, Lcom/startapp/o4$c;

    invoke-direct {v0, p0}, Lcom/startapp/o4$c;-><init>(Lcom/startapp/o4;)V

    iput-object v0, p0, Lcom/startapp/o4;->l:Lcom/startapp/d3;

    .line 62
    new-instance v0, Lcom/startapp/o4$d;

    invoke-direct {v0, p0}, Lcom/startapp/o4$d;-><init>(Lcom/startapp/o4;)V

    iput-object v0, p0, Lcom/startapp/o4;->m:Lcom/startapp/n4;

    .line 429
    new-instance v0, Lcom/startapp/o4$g;

    invoke-direct {v0, p0}, Lcom/startapp/o4$g;-><init>(Lcom/startapp/o4;)V

    iput-object v0, p0, Lcom/startapp/o4;->n:Lcom/startapp/b3;

    .line 430
    iput-object p1, p0, Lcom/startapp/o4;->a:Lcom/startapp/l4;

    .line 431
    iput-object p2, p0, Lcom/startapp/o4;->b:Lcom/startapp/r3;

    .line 432
    iput-object p3, p0, Lcom/startapp/o4;->c:Ljava/util/concurrent/Executor;

    .line 433
    iput-object p4, p0, Lcom/startapp/o4;->d:Lcom/startapp/d3;

    .line 434
    iput-object p5, p0, Lcom/startapp/o4;->e:Lcom/startapp/c2;

    .line 435
    iput-object p6, p0, Lcom/startapp/o4;->f:Lcom/startapp/c3;

    .line 436
    iput-object p7, p0, Lcom/startapp/o4;->g:Lcom/startapp/d3;

    return-void
.end method


# virtual methods
.method public final a(Lcom/startapp/j4;)Lcom/startapp/k4;
    .locals 7

    .line 91
    iget-object v0, p0, Lcom/startapp/o4;->h:Ljava/util/Map;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/startapp/o4;->h:Ljava/util/Map;

    .line 93
    iget-object v2, p1, Lcom/startapp/j4;->a:Ljava/lang/String;

    .line 94
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 98
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 101
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/startapp/k4;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 104
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    return-object v1

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/startapp/o4;->g:Lcom/startapp/d3;

    invoke-interface {v0}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->d()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v2, p1, Lcom/startapp/j4;->a:Ljava/lang/String;

    .line 114
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsCategoryConfig;

    if-eqz v0, :cond_2

    .line 116
    new-instance v1, Lcom/startapp/k4;

    .line 117
    iget-object v2, p1, Lcom/startapp/j4;->b:Lcom/startapp/k4;

    .line 118
    invoke-direct {v1, v2, v0}, Lcom/startapp/k4;-><init>(Lcom/startapp/k4;Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsCategoryConfig;)V

    :cond_2
    if-nez v1, :cond_3

    .line 119
    iget-object v1, p1, Lcom/startapp/j4;->b:Lcom/startapp/k4;

    .line 120
    :cond_3
    iget-object v2, p0, Lcom/startapp/o4;->h:Ljava/util/Map;

    monitor-enter v2

    .line 122
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    add-long/2addr v3, v5

    .line 123
    iget-object v0, p0, Lcom/startapp/o4;->h:Ljava/util/Map;

    .line 124
    iget-object p1, p1, Lcom/startapp/j4;->a:Ljava/lang/String;

    .line 125
    new-instance v5, Landroid/util/Pair;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v5, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 127
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a()V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/startapp/o4;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/startapp/o4;->a:Lcom/startapp/l4;

    iget-object v1, p0, Lcom/startapp/o4;->l:Lcom/startapp/d3;

    monitor-enter v0

    .line 49
    :try_start_0
    iget-object v2, v0, Lcom/startapp/l4;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v0

    .line 50
    iget-object v0, p0, Lcom/startapp/o4;->e:Lcom/startapp/c2;

    iget-object v1, p0, Lcom/startapp/o4;->j:Lcom/startapp/d3;

    .line 51
    iget-object v2, v0, Lcom/startapp/c2;->c:Ljava/util/List;

    monitor-enter v2

    .line 52
    :try_start_1
    iget-object v3, v0, Lcom/startapp/c2;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    iget-object v0, v0, Lcom/startapp/c2;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    iget-object v0, p0, Lcom/startapp/o4;->e:Lcom/startapp/c2;

    .line 57
    iget-object v1, v0, Lcom/startapp/c2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 62
    :cond_2
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    .line 64
    iget-object v2, v0, Lcom/startapp/c2;->a:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    if-eqz v2, :cond_6

    .line 66
    new-instance v3, Lcom/startapp/b2;

    invoke-direct {v3, v0}, Lcom/startapp/b2;-><init>(Lcom/startapp/c2;)V

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->addDefaultNetworkActiveListener(Landroid/net/ConnectivityManager$OnNetworkActiveListener;)V

    .line 67
    iget-object v3, v0, Lcom/startapp/c2;->b:Lcom/startapp/d3;

    invoke-interface {v3}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/sdk/adsbase/remoteconfig/ConnectivityHelperMetadata;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 68
    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/remoteconfig/ConnectivityHelperMetadata;->a()Lcom/startapp/sdk/adsbase/remoteconfig/ConnectivityHelperMetadata$Transport;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_6

    const/16 v5, 0x18

    if-lt v1, v5, :cond_4

    .line 69
    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/remoteconfig/ConnectivityHelperMetadata$Transport;->a()[[I

    move-result-object v5

    invoke-static {v1, v5}, Lcom/startapp/wb;->a(I[[I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    new-instance v4, Lcom/startapp/b;

    iget-object v1, v0, Lcom/startapp/c2;->a:Landroid/content/Context;

    invoke-direct {v4, v1, v2}, Lcom/startapp/b;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    goto :goto_1

    .line 71
    :cond_4
    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/remoteconfig/ConnectivityHelperMetadata$Transport;->b()[[I

    move-result-object v3

    invoke-static {v1, v3}, Lcom/startapp/wb;->a(I[[I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 72
    new-instance v4, Lcom/startapp/v;

    iget-object v1, v0, Lcom/startapp/c2;->a:Landroid/content/Context;

    invoke-direct {v4, v1, v2}, Lcom/startapp/v;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    .line 80
    invoke-virtual {v4}, Lcom/startapp/c2$a;->b()V

    .line 82
    iput-object v4, v0, Lcom/startapp/c2;->e:Lcom/startapp/c2$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 88
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 89
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/startapp/o4;->b:Lcom/startapp/r3;

    new-instance v1, Lcom/startapp/q4;

    invoke-direct {v1, p0}, Lcom/startapp/q4;-><init>(Lcom/startapp/o4;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 90
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/startapp/o4;->b:Lcom/startapp/r3;

    iget-object v1, p0, Lcom/startapp/o4;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1, p1, p2}, Lcom/startapp/r3;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lcom/startapp/i4;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/startapp/i4;->a:Lcom/startapp/j4;

    .line 2
    invoke-virtual {p0, v0}, Lcom/startapp/o4;->a(Lcom/startapp/j4;)Lcom/startapp/k4;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/startapp/o4;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 4
    iget-wide v3, v0, Lcom/startapp/k4;->f:J

    add-long/2addr v1, v3

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 6
    invoke-virtual {p0, v1, v2}, Lcom/startapp/o4;->a(J)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/startapp/o4;->a:Lcom/startapp/l4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-wide v4, p1, Lcom/startapp/i4;->b:J

    .line 14
    invoke-static {v4, v5, v2, v3}, Lcom/startapp/l4;->a(JJ)V

    .line 16
    invoke-virtual {v1}, Lcom/startapp/m2;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 20
    :try_start_0
    invoke-static {v1, v4, v5}, Lcom/startapp/l4;->a(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v6

    .line 22
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "send"

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "attempt"

    const/4 v3, 0x1

    add-int/2addr v6, v3

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "events"

    const-string v6, "rowid = ?"

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 30
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 31
    invoke-virtual {v1, v2, v7, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 38
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 41
    iget-object v1, p0, Lcom/startapp/o4;->m:Lcom/startapp/n4;

    invoke-virtual {p0, p1, v0, v1}, Lcom/startapp/o4;->a(Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 42
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 43
    throw p1
.end method

.method public a(Lcom/startapp/i4;IJ)V
    .locals 7

    const-string v0, "rowid = ?"

    const-string v1, "events"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 163
    iget-object p2, p0, Lcom/startapp/o4;->a:Lcom/startapp/l4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    iget-wide v4, p1, Lcom/startapp/i4;->b:J

    .line 165
    invoke-static {v4, v5, p3, p4}, Lcom/startapp/l4;->a(JJ)V

    .line 167
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 168
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "sendSuccess"

    invoke-virtual {p1, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    invoke-virtual {p2}, Lcom/startapp/m2;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    new-array p3, v3, [Ljava/lang/String;

    .line 174
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    .line 175
    invoke-virtual {p2, v1, p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    .line 176
    invoke-virtual {p0, p1, p2}, Lcom/startapp/o4;->a(J)V

    goto :goto_2

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/startapp/o4;->g:Lcom/startapp/d3;

    invoke-interface {p2}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    if-eqz p2, :cond_1

    .line 180
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->g()I

    move-result p2

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 181
    :goto_0
    iget-object v4, p0, Lcom/startapp/o4;->a:Lcom/startapp/l4;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    iget-wide v5, p1, Lcom/startapp/i4;->b:J

    .line 183
    invoke-static {v5, v6, p3, p4}, Lcom/startapp/l4;->a(JJ)V

    .line 185
    invoke-virtual {v4}, Lcom/startapp/m2;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 189
    :try_start_0
    invoke-static {p1, v5, v6}, Lcom/startapp/l4;->a(Landroid/database/sqlite/SQLiteDatabase;J)I

    move-result v4

    if-lt v4, p2, :cond_2

    new-array p2, v3, [Ljava/lang/String;

    .line 195
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v2

    .line 196
    invoke-virtual {p1, v1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 202
    :cond_2
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "sendFailure"

    .line 203
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-array p3, v3, [Ljava/lang/String;

    .line 209
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    .line 210
    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 221
    iget-object p1, p0, Lcom/startapp/o4;->g:Lcom/startapp/d3;

    invoke-interface {p1}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    const-wide/16 p2, 0x3e8

    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->h()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 225
    :cond_3
    invoke-virtual {p0, p2, p3}, Lcom/startapp/o4;->a(J)V

    :goto_2
    return-void

    :catchall_0
    move-exception p2

    .line 226
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 227
    throw p2
.end method

.method public a(Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/startapp/o4;->f:Lcom/startapp/c3;

    invoke-interface {v0, p1, p2, p3}, Lcom/startapp/c3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 235
    iget-object p1, p0, Lcom/startapp/o4;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 237
    invoke-interface {p3, p1, p2}, Lcom/startapp/n4;->a(Lcom/startapp/i4;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/startapp/i4;Lcom/startapp/n4;)V
    .locals 10

    .line 128
    iget-object p2, p0, Lcom/startapp/o4;->g:Lcom/startapp/d3;

    invoke-interface {p2}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    if-eqz p2, :cond_4

    .line 129
    iget-boolean p2, p2, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->dns:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object p2, p1, Lcom/startapp/i4;->a:Lcom/startapp/j4;

    .line 131
    invoke-virtual {p0, p2}, Lcom/startapp/o4;->a(Lcom/startapp/j4;)Lcom/startapp/k4;

    move-result-object v5

    .line 133
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 134
    iget-wide v2, v5, Lcom/startapp/k4;->a:D

    cmpl-double p2, v0, v2

    if-ltz p2, :cond_1

    return-void

    .line 135
    :cond_1
    iget-boolean p2, v5, Lcom/startapp/k4;->d:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 136
    iget-object p2, p0, Lcom/startapp/o4;->b:Lcom/startapp/r3;

    new-instance v1, Lcom/startapp/o4$e;

    invoke-direct {v1, p0, p1, v5, v0}, Lcom/startapp/o4$e;-><init>(Lcom/startapp/o4;Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p2, p0, Lcom/startapp/o4;->e:Lcom/startapp/c2;

    invoke-virtual {p2}, Lcom/startapp/c2;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 143
    iget-object p2, p0, Lcom/startapp/o4;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 144
    iget-wide v3, v5, Lcom/startapp/k4;->f:J

    add-long/2addr v1, v3

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v7, v1, v3

    const-wide/16 v1, 0x0

    cmp-long p2, v7, v1

    if-lez p2, :cond_3

    .line 146
    iget-object p2, p0, Lcom/startapp/o4;->b:Lcom/startapp/r3;

    new-instance v9, Lcom/startapp/o4$f;

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, p0

    move-wide v2, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/startapp/o4$f;-><init>(Lcom/startapp/o4;JLcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V

    invoke-interface {p2, v9, v7, v8}, Lcom/startapp/r3;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p0, p1, v5, v0}, Lcom/startapp/o4;->a(Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/o4;->b:Lcom/startapp/r3;

    iget-object v1, p0, Lcom/startapp/o4;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/startapp/r3;->a(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/startapp/o4;->e:Lcom/startapp/c2;

    invoke-virtual {v0}, Lcom/startapp/c2;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/startapp/o4;->g:Lcom/startapp/d3;

    invoke-interface {v0}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    const-wide/32 v1, 0x493e0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/wb;->e(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 8
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/startapp/o4;->a(J)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/startapp/o4;->d:Lcom/startapp/d3;

    invoke-interface {v0}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/startapp/o4;->g:Lcom/startapp/d3;

    invoke-interface {v2}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->g()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 18
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/startapp/o4;->a:Lcom/startapp/l4;

    iget-object v3, p0, Lcom/startapp/o4;->n:Lcom/startapp/b3;

    invoke-virtual {v2, v3, v1, v0}, Lcom/startapp/l4;->a(Lcom/startapp/b3;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
