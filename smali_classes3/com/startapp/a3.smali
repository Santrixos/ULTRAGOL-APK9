.class public Lcom/startapp/a3;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final h:Ljava/lang/String; = "a3"

.field private static final i:Z = false


# instance fields
.field private a:Landroid/app/Application;

.field private b:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:Z

.field private f:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startapp/networkTest/startapp/CoverageMapperManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/startapp/a3;->c:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/startapp/a3;->d:I

    .line 4
    iput-boolean v0, p0, Lcom/startapp/a3;->e:Z

    .line 7
    new-instance v0, Lcom/startapp/a3$a;

    invoke-direct {v0, p0}, Lcom/startapp/a3$a;-><init>(Lcom/startapp/a3;)V

    iput-object v0, p0, Lcom/startapp/a3;->g:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/startapp/a3;->a:Landroid/app/Application;

    .line 21
    iput-object p2, p0, Lcom/startapp/a3;->f:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/startapp/a3;->c:I

    .line 4
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->FOREGROUND_TEST_CT_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/startapp/a3;->c()V

    .line 6
    invoke-direct {p0}, Lcom/startapp/a3;->g()V

    .line 9
    :cond_0
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->FOREGROUND_TEST_NIR_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/startapp/a3;->f()V

    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/startapp/a3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startapp/a3;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/startapp/a3;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startapp/a3;->d:I

    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/startapp/a3;->c:I

    .line 4
    invoke-direct {p0}, Lcom/startapp/a3;->i()V

    .line 5
    invoke-direct {p0}, Lcom/startapp/a3;->j()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/startapp/a3;->a:Landroid/app/Application;

    new-instance v1, Lcom/startapp/a3$b;

    invoke-direct {v1, p0}, Lcom/startapp/a3$b;-><init>(Lcom/startapp/a3;)V

    invoke-static {v0, v1}, Lcom/startapp/networkTest/startapp/NetworkTester;->runTests(Landroid/content/Context;Lcom/startapp/networkTest/startapp/NetworkTester$b;)V

    return-void
.end method

.method public static synthetic c(Lcom/startapp/a3;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startapp/a3;->e:Z

    return p0
.end method

.method public static synthetic d(Lcom/startapp/a3;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/a3;->b:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method private f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/a3;->f:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    invoke-virtual {v0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->c()V

    return-void
.end method

.method private g()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startapp/a3;->j()V

    .line 3
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/y4;->FOREGROUND_TEST_CT_SCHEDULE_INTERVAL()J

    move-result-wide v5

    const-wide/16 v0, 0x0

    cmp-long v2, v5, v0

    if-lez v2, :cond_0

    .line 5
    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/threads/ThreadManager;->d()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/a3;->g:Ljava/lang/Runnable;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/a3;->b:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/a3;->f:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    invoke-virtual {v0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->f()V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/a3;->b:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/startapp/a3;->b:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/startapp/a3;->c:I

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/startapp/a3;->c:I

    .line 2
    iget-object v0, p0, Lcom/startapp/a3;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 3
    iget-object v0, p0, Lcom/startapp/a3;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/a3;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 2
    iget-object v0, p0, Lcom/startapp/a3;->a:Landroid/app/Application;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/startapp/a3;->c:I

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/startapp/a3;->d:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/startapp/a3;->d:I

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/startapp/a3;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/startapp/a3;->d:I

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/startapp/a3;->e:Z

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/startapp/a3;->a()V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    iput-boolean p1, p0, Lcom/startapp/a3;->e:Z

    .line 2
    iget v0, p0, Lcom/startapp/a3;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/startapp/a3;->d:I

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/startapp/a3;->b()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method
