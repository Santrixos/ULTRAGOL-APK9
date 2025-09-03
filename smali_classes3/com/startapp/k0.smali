.class public Lcom/startapp/k0;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/k0$b;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String; = "k0"

.field private static final t:Z = false


# instance fields
.field private a:Lcom/startapp/e4;

.field private b:Landroid/content/Context;

.field private c:Lcom/startapp/j8;

.field private d:Lcom/startapp/nd;

.field private e:Lcom/startapp/networkTest/controller/LocationController;

.field private f:Lcom/startapp/a1;

.field private g:Lcom/startapp/networkTest/results/P3TestResult;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/i8;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/startapp/b5;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startapp/e4;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/startapp/k0;->l:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/startapp/k0;->m:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/startapp/k0;->n:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/startapp/k0;->o:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/startapp/k0;->p:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/startapp/k0;->q:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/startapp/k0;->r:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lcom/startapp/k0;->a:Lcom/startapp/e4;

    .line 23
    iput-object p2, p0, Lcom/startapp/k0;->b:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/startapp/y4;->PROJECT_ID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/k0;->i:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/startapp/b5;

    iget-object v1, p0, Lcom/startapp/k0;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/b5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/k0;->j:Lcom/startapp/b5;

    .line 30
    invoke-direct {p0, p2, p1}, Lcom/startapp/k0;->a(Landroid/content/Context;Lcom/startapp/y4;)V

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ISpeedtestListener is NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/startapp/k0;)Lcom/startapp/e4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->a:Lcom/startapp/e4;

    return-object p0
.end method

.method public static synthetic a(Lcom/startapp/k0;Lcom/startapp/networkTest/results/P3TestResult;)Lcom/startapp/networkTest/results/P3TestResult;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/k0;->g:Lcom/startapp/networkTest/results/P3TestResult;

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/startapp/y4;)V
    .locals 2

    .line 4
    new-instance v0, Lcom/startapp/j8;

    invoke-direct {v0, p1}, Lcom/startapp/j8;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/k0;->c:Lcom/startapp/j8;

    .line 5
    new-instance v0, Lcom/startapp/nd;

    invoke-direct {v0, p1}, Lcom/startapp/nd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/k0;->d:Lcom/startapp/nd;

    .line 6
    new-instance v0, Lcom/startapp/networkTest/controller/LocationController;

    iget-object v1, p0, Lcom/startapp/k0;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/networkTest/controller/LocationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/k0;->e:Lcom/startapp/networkTest/controller/LocationController;

    .line 7
    new-instance v0, Lcom/startapp/a1;

    iget-object v1, p0, Lcom/startapp/k0;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/a1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/k0;->f:Lcom/startapp/a1;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/k0;->h:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p2}, Lcom/startapp/y4;->BANDWDITH_TEST_MANAGER_GET_IMEI_IMSI()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "phone"

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/startapp/k0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/startapp/k0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->r:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/startapp/k0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic e(Lcom/startapp/k0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/startapp/k0;)Lcom/startapp/b5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->j:Lcom/startapp/b5;

    return-object p0
.end method

.method public static synthetic g(Lcom/startapp/k0;)Lcom/startapp/a1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->f:Lcom/startapp/a1;

    return-object p0
.end method

.method public static synthetic h(Lcom/startapp/k0;)Lcom/startapp/networkTest/controller/LocationController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->e:Lcom/startapp/networkTest/controller/LocationController;

    return-object p0
.end method

.method public static synthetic i(Lcom/startapp/k0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic j(Lcom/startapp/k0;)Lcom/startapp/j8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->c:Lcom/startapp/j8;

    return-object p0
.end method

.method public static synthetic k(Lcom/startapp/k0;)Lcom/startapp/nd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/k0;->d:Lcom/startapp/nd;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/startapp/networkTest/results/P3TestResult;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/startapp/k0;->g:Lcom/startapp/networkTest/results/P3TestResult;

    return-object v0
.end method

.method public a(Lcom/startapp/networkTest/controller/LocationController$ProviderMode;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/startapp/k0;->e:Lcom/startapp/networkTest/controller/LocationController;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController$ProviderMode;)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/startapp/k0;->c:Lcom/startapp/j8;

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p1}, Lcom/startapp/j8;->x()V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/startapp/k0;->d:Lcom/startapp/nd;

    if-eqz p1, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/startapp/nd;->f()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/startapp/k0;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/startapp/i8;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/startapp/i8;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/startapp/k0;->a(Ljava/lang/String;IIIIZ)V

    return-void
.end method

.method public a(Ljava/lang/String;IIIIZ)V
    .locals 11

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, p0

    iput-object v0, v9, Lcom/startapp/k0;->h:Ljava/util/ArrayList;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 25
    new-instance v0, Lcom/startapp/k0$b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/startapp/k0$b;-><init>(Lcom/startapp/k0;Ljava/lang/String;IIIIZ)V

    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/startapp/k0$b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/startapp/k0$b;-><init>(Lcom/startapp/k0;Ljava/lang/String;IIIIZ)V

    .line 28
    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/networkTest/threads/ThreadManager;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Void;

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 2
    sget-object v0, Lcom/startapp/networkTest/controller/LocationController$ProviderMode;->d:Lcom/startapp/networkTest/controller/LocationController$ProviderMode;

    invoke-virtual {p0, v0}, Lcom/startapp/k0;->a(Lcom/startapp/networkTest/controller/LocationController$ProviderMode;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/startapp/k0;->r:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/startapp/k0;->e:Lcom/startapp/networkTest/controller/LocationController;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/startapp/networkTest/controller/LocationController;->f()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/startapp/k0;->c:Lcom/startapp/j8;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/startapp/j8;->y()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/startapp/k0;->d:Lcom/startapp/nd;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/startapp/nd;->g()V

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/startapp/k0;->m:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/k0;->p:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/k0;->l:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/k0;->q:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/k0;->k:Ljava/lang/String;

    return-void
.end method
