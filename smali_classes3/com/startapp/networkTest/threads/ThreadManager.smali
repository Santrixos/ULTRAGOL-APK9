.class public Lcom/startapp/networkTest/threads/ThreadManager;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final d:Lcom/startapp/networkTest/threads/ThreadManager;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startapp/networkTest/threads/ThreadManager;

    invoke-direct {v0}, Lcom/startapp/networkTest/threads/ThreadManager;-><init>()V

    sput-object v0, Lcom/startapp/networkTest/threads/ThreadManager;->d:Lcom/startapp/networkTest/threads/ThreadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/startapp/h9;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    .line 3
    invoke-static {v2, v3, v4, v1, v2}, Lcom/startapp/networkTest/threads/ThreadManager;->a(IJLjava/util/concurrent/TimeUnit;Z)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/h9;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/startapp/networkTest/threads/ThreadManager;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    new-instance v0, Lcom/startapp/f9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadManager"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-Single"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const-wide/16 v5, 0x1e

    invoke-static {v4, v2, v5, v6, v1}, Lcom/startapp/networkTest/threads/ThreadManager;->a(IIJLjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/f9;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/startapp/networkTest/threads/ThreadManager;->b:Ljava/util/concurrent/ExecutorService;

    .line 8
    new-instance v0, Lcom/startapp/f9;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-Cached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v4, v2, v5, v6, v1}, Lcom/startapp/networkTest/threads/ThreadManager;->a(IIJLjava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/startapp/f9;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/startapp/networkTest/threads/ThreadManager;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private static a(IIJLjava/lang/String;)Ljava/util/concurrent/ExecutorService;
    .locals 10

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const/4 p0, 0x2

    if-ge p1, p0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/startapp/networkTest/threads/ThreadManager$1;

    invoke-direct {v6}, Lcom/startapp/networkTest/threads/ThreadManager$1;-><init>()V

    new-instance v7, Lcom/startapp/networkTest/threads/ThreadManager$a;

    invoke-direct {v7, p4}, Lcom/startapp/networkTest/threads/ThreadManager$a;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/startapp/networkTest/threads/ThreadManager$b;

    invoke-direct {v8}, Lcom/startapp/networkTest/threads/ThreadManager$b;-><init>()V

    move-object v0, v9

    move v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    const/4 p0, 0x1

    .line 35
    invoke-virtual {v9, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-object v9
.end method

.method private static a(IJLjava/util/concurrent/TimeUnit;Z)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 36
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 38
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 40
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x9

    if-lt p0, p1, :cond_0

    .line 41
    invoke-virtual {v0, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    :cond_0
    return-object v0
.end method

.method public static b()Lcom/startapp/networkTest/threads/ThreadManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/threads/ThreadManager;->d:Lcom/startapp/networkTest/threads/ThreadManager;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/threads/ThreadManager;->c:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/threads/ThreadManager;->b:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/threads/ThreadManager;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method
