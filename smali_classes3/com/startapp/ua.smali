.class public Lcom/startapp/ua;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/ua$a;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "ua"

.field private static final k:Ljava/lang/String; = "0.de.pool.ntp.org"

.field private static final l:J = 0x1b77400L

.field private static final m:I = 0x2710

.field private static final n:I = 0x7530


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Lcom/startapp/ba;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startapp/ua;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/startapp/ua;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/startapp/ua;->c:Z

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcom/startapp/ua;->e:J

    .line 15
    iput-wide v0, p0, Lcom/startapp/ua;->f:J

    .line 20
    iput-wide v0, p0, Lcom/startapp/ua;->g:J

    .line 25
    iput-wide v0, p0, Lcom/startapp/ua;->h:J

    .line 30
    new-instance v0, Lcom/startapp/ba;

    invoke-direct {v0}, Lcom/startapp/ba;-><init>()V

    iput-object v0, p0, Lcom/startapp/ua;->i:Lcom/startapp/ba;

    .line 32
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->NTP_SYNC_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/startapp/ua;->g()V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/startapp/ua;J)J
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/startapp/ua;->e:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/startapp/ua;)Lcom/startapp/ba;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/startapp/ua;->i:Lcom/startapp/ba;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/startapp/ua;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/startapp/ua;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/ua;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/startapp/ua;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/ua;->f:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/startapp/ua;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/startapp/ua;->f:J

    return-wide p1
.end method

.method private b()V
    .locals 5

    .line 4
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->NTP_SYNC_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/startapp/ua;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/startapp/ua;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/startapp/ua;->g()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/startapp/ua;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/startapp/ua;->b:Z

    return p1
.end method

.method public static synthetic c(Lcom/startapp/ua;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startapp/ua;->d:J

    return-wide p1
.end method

.method private c()Lcom/startapp/networkTest/data/TimeInfo;
    .locals 9

    .line 2
    new-instance v0, Lcom/startapp/networkTest/data/TimeInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/TimeInfo;-><init>()V

    .line 3
    iget-boolean v1, p0, Lcom/startapp/ua;->b:Z

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/startapp/ua;->c:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/startapp/networkTest/data/TimeInfo;->IsSynced:Z

    .line 5
    iget-boolean v2, p0, Lcom/startapp/ua;->c:Z

    const-wide/32 v3, 0x1b77400

    if-eqz v2, :cond_2

    iget-wide v5, p0, Lcom/startapp/ua;->g:J

    iget-wide v7, p0, Lcom/startapp/ua;->e:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    .line 7
    iget-wide v1, p0, Lcom/startapp/ua;->h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/startapp/ua;->g:J

    sub-long/2addr v5, v7

    add-long/2addr v5, v1

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->DeviceDriftMillis:J

    .line 9
    iget-wide v1, p0, Lcom/startapp/ua;->h:J

    sub-long v1, v5, v1

    iput-wide v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->MillisSinceLastSync:J

    .line 10
    sget-object v1, Lcom/startapp/networkTest/enums/TimeSources;->b:Lcom/startapp/networkTest/enums/TimeSources;

    iput-object v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->TimeSource:Lcom/startapp/networkTest/enums/TimeSources;

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v7, p0, Lcom/startapp/ua;->e:J

    sub-long/2addr v1, v7

    cmp-long v7, v1, v3

    if-lez v7, :cond_5

    .line 14
    invoke-direct {p0}, Lcom/startapp/ua;->b()V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_4

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/startapp/ua;->e:J

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 22
    invoke-direct {p0}, Lcom/startapp/ua;->b()V

    .line 25
    :cond_3
    iget-wide v1, p0, Lcom/startapp/ua;->f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/startapp/ua;->e:J

    sub-long/2addr v3, v5

    add-long v5, v3, v1

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    iput-wide v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->DeviceDriftMillis:J

    .line 27
    iget-wide v1, p0, Lcom/startapp/ua;->f:J

    sub-long v1, v5, v1

    iput-wide v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->MillisSinceLastSync:J

    .line 28
    sget-object v1, Lcom/startapp/networkTest/enums/TimeSources;->a:Lcom/startapp/networkTest/enums/TimeSources;

    iput-object v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->TimeSource:Lcom/startapp/networkTest/enums/TimeSources;

    goto :goto_2

    .line 33
    :cond_4
    invoke-direct {p0}, Lcom/startapp/ua;->b()V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 37
    sget-object v1, Lcom/startapp/networkTest/enums/TimeSources;->c:Lcom/startapp/networkTest/enums/TimeSources;

    iput-object v1, v0, Lcom/startapp/networkTest/data/TimeInfo;->TimeSource:Lcom/startapp/networkTest/enums/TimeSources;

    .line 40
    :cond_5
    :goto_2
    invoke-virtual {v0, v5, v6}, Lcom/startapp/networkTest/data/TimeInfo;->setMillis(J)V

    return-object v0
.end method

.method public static d()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/startapp/a5;->f()Lcom/startapp/ua;

    move-result-object v0

    invoke-direct {v0}, Lcom/startapp/ua;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Lcom/startapp/networkTest/data/TimeInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startapp/a5;->f()Lcom/startapp/ua;

    move-result-object v0

    invoke-direct {v0}, Lcom/startapp/ua;->c()Lcom/startapp/networkTest/data/TimeInfo;

    move-result-object v0

    return-object v0
.end method

.method private f()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/startapp/ua;->c:Z

    const-wide/32 v1, 0x1b77400

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/startapp/ua;->g:J

    iget-wide v5, p0, Lcom/startapp/ua;->e:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/startapp/ua;->e:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/startapp/ua;->b()V

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/startapp/ua;->h:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/startapp/ua;->g:J

    :goto_0
    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    return-wide v2

    .line 12
    :cond_1
    iget-boolean v0, p0, Lcom/startapp/ua;->b:Z

    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/startapp/ua;->e:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/startapp/ua;->b()V

    .line 18
    :cond_2
    iget-wide v0, p0, Lcom/startapp/ua;->f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/startapp/ua;->e:J

    goto :goto_0

    .line 24
    :cond_3
    invoke-direct {p0}, Lcom/startapp/ua;->b()V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private g()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 2
    new-instance v0, Lcom/startapp/ua$a;

    invoke-direct {v0, p0}, Lcom/startapp/ua$a;-><init>(Lcom/startapp/ua;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/startapp/ua$a;

    invoke-direct {v0, p0}, Lcom/startapp/ua$a;-><init>(Lcom/startapp/ua;)V

    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/networkTest/threads/ThreadManager;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 2

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/ua;->h:J

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/ua;->g:J

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/startapp/ua;->c:Z

    return-void
.end method
