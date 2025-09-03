.class public Lcom/startapp/d2;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/d2$b;
    }
.end annotation


# static fields
.field private static final n:Z = false

.field private static final o:Ljava/lang/String; = "d2"

.field private static final p:I = 0x7530

.field private static final q:Ljava/lang/String; = "\r\n"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/startapp/j8;

.field private c:Lcom/startapp/nd;

.field private d:Lcom/startapp/networkTest/controller/LocationController;

.field private e:Lcom/startapp/b5;

.field private f:Lcom/startapp/w7;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Random;

.field private l:F

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/d2;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/startapp/b5;

    invoke-direct {v0, p1}, Lcom/startapp/b5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/d2;->e:Lcom/startapp/b5;

    .line 6
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startapp/y4;->PROJECT_ID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/d2;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/startapp/y4;->CONNECTIVITY_TEST_HOSTNAME()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/d2;->h:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/startapp/y4;->CONNECTIVITY_TEST_FILENAME()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/d2;->i:Ljava/lang/String;

    .line 10
    invoke-virtual {v0}, Lcom/startapp/y4;->CONNECTIVITY_TEST_IP()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/d2;->j:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/startapp/d2;->k:Ljava/util/Random;

    .line 13
    invoke-virtual {v0}, Lcom/startapp/y4;->CONNECTIVITY_TEST_MIN_BATTERY_LEVEL()F

    move-result v1

    iput v1, p0, Lcom/startapp/d2;->l:F

    .line 14
    invoke-virtual {v0}, Lcom/startapp/y4;->CONNECTIVITY_TEST_ENABLED_IN_ROAMING()Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/d2;->m:Z

    .line 16
    new-instance v0, Lcom/startapp/networkTest/controller/LocationController;

    invoke-direct {v0, p1}, Lcom/startapp/networkTest/controller/LocationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/d2;->d:Lcom/startapp/networkTest/controller/LocationController;

    .line 17
    new-instance v0, Lcom/startapp/j8;

    invoke-direct {v0, p1}, Lcom/startapp/j8;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/d2;->b:Lcom/startapp/j8;

    .line 18
    new-instance v0, Lcom/startapp/nd;

    invoke-direct {v0, p1}, Lcom/startapp/nd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/d2;->c:Lcom/startapp/nd;

    return-void
.end method

.method public static synthetic a(Lcom/startapp/d2;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic a(Lcom/startapp/d2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/startapp/d2;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "(?:[0-9]{1,3}\\.){3}[0-9]{1,3}"

    const-string v1, "XXX"

    .line 21
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "([A-Fa-f0-9]{1,4}::?){1,7}[A-Fa-f0-9]{1,4}"

    .line 22
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public static synthetic b(Lcom/startapp/d2;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/startapp/d2;->l:F

    return p0
.end method

.method public static synthetic c(Lcom/startapp/d2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/startapp/d2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->j:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/startapp/d2;)Lcom/startapp/w7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->f:Lcom/startapp/w7;

    return-object p0
.end method

.method public static synthetic f(Lcom/startapp/d2;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startapp/d2;->m:Z

    return p0
.end method

.method public static synthetic g(Lcom/startapp/d2;)Lcom/startapp/j8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->b:Lcom/startapp/j8;

    return-object p0
.end method

.method public static synthetic h(Lcom/startapp/d2;)Lcom/startapp/nd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->c:Lcom/startapp/nd;

    return-object p0
.end method

.method public static synthetic i(Lcom/startapp/d2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic j(Lcom/startapp/d2;)Lcom/startapp/b5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->e:Lcom/startapp/b5;

    return-object p0
.end method

.method public static synthetic k(Lcom/startapp/d2;)Lcom/startapp/networkTest/controller/LocationController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->d:Lcom/startapp/networkTest/controller/LocationController;

    return-object p0
.end method

.method public static synthetic l(Lcom/startapp/d2;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic m(Lcom/startapp/d2;)Ljava/util/Random;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/d2;->k:Ljava/util/Random;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/startapp/d2;->d:Lcom/startapp/networkTest/controller/LocationController;

    sget-object v1, Lcom/startapp/networkTest/controller/LocationController$ProviderMode;->a:Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    invoke-virtual {v0, v1}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController$ProviderMode;)V

    .line 4
    iget-object v0, p0, Lcom/startapp/d2;->b:Lcom/startapp/j8;

    invoke-virtual {v0}, Lcom/startapp/j8;->x()V

    .line 5
    iget-object v0, p0, Lcom/startapp/d2;->c:Lcom/startapp/nd;

    invoke-virtual {v0}, Lcom/startapp/nd;->f()V

    return-void
.end method

.method public a(Lcom/startapp/w7;)V
    .locals 2

    .line 6
    iput-object p1, p0, Lcom/startapp/d2;->f:Lcom/startapp/w7;

    .line 8
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ge p1, v1, :cond_0

    .line 9
    new-instance p1, Lcom/startapp/d2$b;

    invoke-direct {p1, p0}, Lcom/startapp/d2$b;-><init>(Lcom/startapp/d2;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/startapp/d2$b;

    invoke-direct {p1, p0}, Lcom/startapp/d2$b;-><init>(Lcom/startapp/d2;)V

    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/networkTest/threads/ThreadManager;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/startapp/d2;->d:Lcom/startapp/networkTest/controller/LocationController;

    invoke-virtual {v0}, Lcom/startapp/networkTest/controller/LocationController;->f()V

    .line 3
    iget-object v0, p0, Lcom/startapp/d2;->b:Lcom/startapp/j8;

    invoke-virtual {v0}, Lcom/startapp/j8;->y()V

    .line 4
    iget-object v0, p0, Lcom/startapp/d2;->c:Lcom/startapp/nd;

    invoke-virtual {v0}, Lcom/startapp/nd;->g()V

    return-void
.end method
