.class public Lcom/startapp/networkTest/startapp/CoverageMapperManager;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/networkTest/controller/LocationController$c;
.implements Lcom/startapp/k8;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/networkTest/startapp/CoverageMapperManager$OnNetworkInfoResultListener;
    }
.end annotation


# static fields
.field private static final A:I = 0x3e8

.field private static final B:I = 0x7d0

.field private static final s:Ljava/lang/String; = "CoverageMapperManager"

.field private static final t:J = 0x1L

.field private static final u:J = 0x2710L

.field private static final v:J = 0x2710L

.field private static final w:I = 0x1f4

.field private static final x:I = 0x2710

.field private static final y:I = 0x3e8

.field private static final z:I = 0x3e8


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/startapp/b7;

.field private c:Z

.field private d:J

.field private e:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:I

.field private k:J

.field private l:I

.field private m:J

.field private n:Lcom/startapp/networkTest/startapp/CoverageMapperManager$OnNetworkInfoResultListener;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/Runnable;

.field private q:Ljava/lang/Runnable;

.field private r:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->c:Z

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->j:I

    .line 13
    iput v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->l:I

    .line 229
    new-instance v0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$b;

    invoke-direct {v0, p0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager$b;-><init>(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)V

    iput-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->o:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$c;

    invoke-direct {v0, p0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager$c;-><init>(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)V

    iput-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->p:Ljava/lang/Runnable;

    .line 261
    new-instance v0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$d;

    invoke-direct {v0, p0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager$d;-><init>(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)V

    iput-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->q:Ljava/lang/Runnable;

    .line 279
    new-instance v0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$e;

    invoke-direct {v0, p0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager$e;-><init>(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)V

    iput-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->r:Landroid/content/BroadcastReceiver;

    .line 280
    new-instance v0, Lcom/startapp/b7;

    invoke-direct {v0, p1}, Lcom/startapp/b7;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    .line 281
    iput-object p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->h:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/startapp/networkTest/startapp/CoverageMapperManager;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->i:J

    return-wide p1
.end method

.method private a()V
    .locals 8

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->k:J

    .line 62
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->f:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/threads/ThreadManager;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->p:Ljava/lang/Runnable;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->f:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private a(Lcom/startapp/networkTest/data/LocationInfo;Lcom/startapp/networkTest/enums/TriggerEvents;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {p1, p2, p3}, Lcom/startapp/b7;->a(Lcom/startapp/networkTest/enums/TriggerEvents;Z)Lcom/startapp/networkTest/results/NetworkInformationResult;

    move-result-object p1

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0, p1, p2, p3}, Lcom/startapp/b7;->a(Lcom/startapp/networkTest/data/LocationInfo;Lcom/startapp/networkTest/enums/TriggerEvents;Z)Lcom/startapp/networkTest/results/NetworkInformationResult;

    move-result-object p1

    .line 74
    :goto_0
    iget-object p2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->n:Lcom/startapp/networkTest/startapp/CoverageMapperManager$OnNetworkInfoResultListener;

    if-eqz p2, :cond_1

    .line 75
    invoke-interface {p2, p1}, Lcom/startapp/networkTest/startapp/CoverageMapperManager$OnNetworkInfoResultListener;->onNetworkInfoResult(Lcom/startapp/networkTest/results/NetworkInformationResult;)V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/startapp/networkTest/startapp/CoverageMapperManager;Lcom/startapp/networkTest/data/LocationInfo;Lcom/startapp/networkTest/enums/TriggerEvents;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a(Lcom/startapp/networkTest/data/LocationInfo;Lcom/startapp/networkTest/enums/TriggerEvents;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->e:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method public static synthetic c(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->k:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->f:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method private d()V
    .locals 8

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->i:J

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    return-void

    .line 12
    :cond_0
    iput-wide v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->h:J

    .line 16
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->e:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    :cond_1
    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/threads/ThreadManager;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->o:Ljava/lang/Runnable;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->e:Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    return-void
.end method

.method public static synthetic e(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->d:J

    return-wide v0
.end method

.method public static synthetic f(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->m:J

    return-wide v0
.end method

.method public static synthetic g(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->g:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/telephony/CellLocation;I)V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0}, Lcom/startapp/b7;->b()Lcom/startapp/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/j8;->b()Lcom/startapp/y6;

    move-result-object v0

    iget v0, v0, Lcom/startapp/y6;->DefaultDataSimId:I

    if-ne v0, p2, :cond_5

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 37
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 38
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class v1, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 40
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 41
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 48
    :goto_0
    iget p2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->l:I

    const v1, 0x7fffffff

    if-eq p1, p2, :cond_4

    if-eq p2, v0, :cond_4

    if-lez p1, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 55
    :cond_3
    iput p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->l:I

    .line 56
    invoke-direct {p0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a()V

    goto :goto_2

    :cond_4
    :goto_1
    if-lez p1, :cond_5

    if-ge p1, v1, :cond_5

    .line 57
    iput p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->l:I

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Landroid/telephony/ServiceState;I)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0}, Lcom/startapp/b7;->b()Lcom/startapp/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/j8;->b()Lcom/startapp/y6;

    move-result-object v0

    iget v0, v0, Lcom/startapp/y6;->DefaultDataSimId:I

    if-ne v0, p2, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 25
    iget p2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->j:I

    if-nez p2, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->d()V

    .line 28
    :cond_0
    iput p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->j:I

    :cond_1
    return-void
.end method

.method public a(Lcom/startapp/networkTest/data/LocationInfo;)V
    .locals 6

    .line 5
    iget-object v0, p1, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    sget-object v1, Lcom/startapp/networkTest/enums/LocationProviders;->b:Lcom/startapp/networkTest/enums/LocationProviders;

    if-ne v0, v1, :cond_1

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->d:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 13
    :cond_0
    iput-wide v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->d:J

    .line 16
    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/threads/ThreadManager;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/startapp/networkTest/startapp/CoverageMapperManager$a;

    invoke-direct {v1, p0, p1}, Lcom/startapp/networkTest/startapp/CoverageMapperManager$a;-><init>(Lcom/startapp/networkTest/startapp/CoverageMapperManager;Lcom/startapp/networkTest/data/LocationInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/startapp/networkTest/startapp/CoverageMapperManager$OnNetworkInfoResultListener;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->n:Lcom/startapp/networkTest/startapp/CoverageMapperManager$OnNetworkInfoResultListener;

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->c:Z

    .line 8
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0, p0}, Lcom/startapp/b7;->a(Lcom/startapp/k8;)V

    .line 10
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0, p0}, Lcom/startapp/b7;->a(Lcom/startapp/networkTest/controller/LocationController$c;)V

    .line 12
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0}, Lcom/startapp/b7;->e()V

    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public c()V
    .locals 8

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->m:J

    .line 6
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/threads/ThreadManager;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->q:Ljava/lang/Runnable;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->g:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0, p0}, Lcom/startapp/b7;->b(Lcom/startapp/k8;)V

    .line 7
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0}, Lcom/startapp/b7;->c()V

    .line 8
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->b:Lcom/startapp/b7;

    invoke-virtual {v0}, Lcom/startapp/b7;->f()V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->r:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->c:Z

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method
