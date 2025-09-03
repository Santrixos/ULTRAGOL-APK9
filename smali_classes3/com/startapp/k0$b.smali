.class public Lcom/startapp/k0$b;
.super Landroid/os/AsyncTask;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/startapp/networkTest/results/LatencyResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:[Ljava/lang/String;

.field private g:Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

.field private h:Z

.field public final synthetic i:Lcom/startapp/k0;


# direct methods
.method public constructor <init>(Lcom/startapp/k0;Ljava/lang/String;IIIIZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/startapp/k0$b;->a:Ljava/lang/String;

    .line 3
    iput p3, p0, Lcom/startapp/k0$b;->b:I

    .line 4
    iput p4, p0, Lcom/startapp/k0$b;->c:I

    .line 5
    iput p5, p0, Lcom/startapp/k0$b;->d:I

    .line 6
    iput p6, p0, Lcom/startapp/k0$b;->e:I

    .line 7
    iput-boolean p7, p0, Lcom/startapp/k0$b;->h:Z

    const/16 p2, 0xc8

    if-ge p4, p2, :cond_0

    .line 10
    iput p2, p0, Lcom/startapp/k0$b;->c:I

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 13
    invoke-static {p1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object p1

    sget-object p2, Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;->e:Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;

    sget-object p3, Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;->a:Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;

    iget p4, p0, Lcom/startapp/k0$b;->b:I

    iget p5, p0, Lcom/startapp/k0$b;->d:I

    mul-int p4, p4, p5

    int-to-long p4, p4

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/startapp/e4;->a(Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;J)V

    .line 15
    :cond_1
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/startapp/b5;->k()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/k0$b;->f:[Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Lcom/startapp/b5;->j()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/networkTest/enums/LtrCriteriaTypes;->valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/k0$b;->g:Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    return-void
.end method

.method public static synthetic a(Lcom/startapp/k0$b;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/startapp/k0$b;->b:I

    return p0
.end method

.method private a(JI)Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;
    .locals 1

    .line 403
    new-instance v0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;

    invoke-direct {v0}, Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;-><init>()V

    .line 405
    iput-wide p1, v0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;->Delta:J

    .line 407
    iget-object p1, p0, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {p1}, Lcom/startapp/k0;->j(Lcom/startapp/k0;)Lcom/startapp/j8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/j8;->h()Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object p1

    .line 408
    iget-object p2, p1, Lcom/startapp/networkTest/data/RadioInfo;->ConnectionType:Lcom/startapp/networkTest/enums/ConnectionTypes;

    iput-object p2, v0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;->ConnectionType:Lcom/startapp/networkTest/enums/ConnectionTypes;

    .line 409
    iget-object p2, p1, Lcom/startapp/networkTest/data/RadioInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    iput-object p2, v0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 410
    iget-object p2, p1, Lcom/startapp/networkTest/data/RadioInfo;->NrAvailable:Lcom/startapp/networkTest/enums/ThreeStateShort;

    iput-object p2, v0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;->NrAvailable:Lcom/startapp/networkTest/enums/ThreeStateShort;

    .line 411
    iget-object p2, p1, Lcom/startapp/networkTest/data/RadioInfo;->NrState:Ljava/lang/String;

    iput-object p2, v0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;->NrState:Ljava/lang/String;

    .line 412
    iget p1, p1, Lcom/startapp/networkTest/data/RadioInfo;->RXLevel:I

    iput p1, v0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;->RxLev:I

    .line 414
    iput p3, v0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;->Rtt:I

    return-object v0
.end method

.method public static synthetic a(Lcom/startapp/k0$b;JI)Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startapp/k0$b;->a(JI)Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;

    move-result-object p0

    return-object p0
.end method

.method private a([Ljava/lang/String;Lcom/startapp/networkTest/enums/LtrCriteriaTypes;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/startapp/networkTest/enums/LtrCriteriaTypes;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/startapp/e6;",
            ">;"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 435
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 438
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/b5;->q()Ljava/util/Set;

    move-result-object v2

    .line 439
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    if-eqz v2, :cond_1

    .line 441
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 442
    const-class v5, Lcom/startapp/e6;

    invoke-static {v4, v5}, Lcom/startapp/r5;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/startapp/e6;

    if-eqz v4, :cond_0

    .line 444
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    :cond_1
    array-length v2, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v6, p1, v5

    .line 451
    new-instance v7, Lcom/startapp/e6;

    invoke-direct {v7}, Lcom/startapp/e6;-><init>()V

    .line 452
    iput-object v6, v7, Lcom/startapp/e6;->address:Ljava/lang/String;

    .line 453
    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 456
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/startapp/e6;

    const/4 v5, 0x0

    .line 457
    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_3

    .line 458
    aget-object v6, p1, v5

    iget-object v7, v3, Lcom/startapp/e6;->address:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 459
    invoke-virtual {v1, v5, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 464
    :cond_5
    sget-object p1, Lcom/startapp/k0$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_9

    const/4 p2, 0x3

    if-eq p1, p2, :cond_8

    const/4 p2, 0x4

    if-eq p1, p2, :cond_7

    const/4 p2, 0x5

    if-eq p1, p2, :cond_6

    goto :goto_3

    .line 496
    :cond_6
    new-instance p1, Lcom/startapp/k0$b$c;

    invoke-direct {p1, p0}, Lcom/startapp/k0$b$c;-><init>(Lcom/startapp/k0$b;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 502
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 503
    :cond_7
    new-instance p1, Lcom/startapp/k0$b$b;

    invoke-direct {p1, p0}, Lcom/startapp/k0$b$b;-><init>(Lcom/startapp/k0$b;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 509
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 510
    :cond_8
    new-instance p1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-static {v1, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 511
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_9
    move-object v0, v1

    goto :goto_3

    .line 512
    :cond_a
    new-instance p1, Lcom/startapp/e6;

    invoke-direct {p1}, Lcom/startapp/e6;-><init>()V

    .line 513
    iput-object p3, p1, Lcom/startapp/e6;->address:Ljava/lang/String;

    .line 514
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startapp/e6;",
            ">;)V"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 429
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/e6;

    .line 430
    invoke-virtual {v1}, Lcom/startapp/e6;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {}, Lcom/startapp/a5;->c()Lcom/startapp/b5;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/startapp/b5;->d(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Lcom/startapp/networkTest/results/LatencyResult;
    .locals 30

    move-object/from16 v7, p0

    const-string v8, "ping6"

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    return-object v9

    .line 8
    :cond_0
    iget-boolean v0, v7, Lcom/startapp/k0$b;->h:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, v7, Lcom/startapp/k0$b;->f:[Ljava/lang/String;

    iget-object v1, v7, Lcom/startapp/k0$b;->g:Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    iget-object v2, v7, Lcom/startapp/k0$b;->a:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/startapp/k0$b;->a([Ljava/lang/String;Lcom/startapp/networkTest/enums/LtrCriteriaTypes;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, v7, Lcom/startapp/k0$b;->f:[Ljava/lang/String;

    sget-object v1, Lcom/startapp/networkTest/enums/LtrCriteriaTypes;->e:Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    iget-object v2, v7, Lcom/startapp/k0$b;->a:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2}, Lcom/startapp/k0$b;->a([Ljava/lang/String;Lcom/startapp/networkTest/enums/LtrCriteriaTypes;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v10, v0

    move-object v0, v9

    const/4 v12, 0x0

    .line 17
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_1c

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 22
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/startapp/e6;

    .line 23
    iget v0, v6, Lcom/startapp/e6;->totalTests:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v6, Lcom/startapp/e6;->totalTests:I

    .line 24
    iget-object v0, v6, Lcom/startapp/e6;->address:Ljava/lang/String;

    iput-object v0, v7, Lcom/startapp/k0$b;->a:Ljava/lang/String;

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    new-instance v3, Lcom/startapp/networkTest/results/LatencyResult;

    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->b(Lcom/startapp/k0;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v1}, Lcom/startapp/k0;->f(Lcom/startapp/k0;)Lcom/startapp/b5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/b5;->p()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lcom/startapp/networkTest/results/LatencyResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->g(Lcom/startapp/k0;)Lcom/startapp/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/a1;->a()Lcom/startapp/networkTest/data/BatteryInfo;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->BatteryInfoOnStart:Lcom/startapp/networkTest/data/BatteryInfo;

    .line 30
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->h(Lcom/startapp/k0;)Lcom/startapp/networkTest/controller/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/controller/LocationController;->c()Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->LocationInfoOnStart:Lcom/startapp/networkTest/data/LocationInfo;

    .line 31
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->i(Lcom/startapp/k0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/p2;->h(Landroid/content/Context;)Lcom/startapp/networkTest/enums/ScreenStates;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/LatencyResult;->ScreenStateOnStart:Lcom/startapp/networkTest/enums/ScreenStates;

    .line 32
    sget-object v0, Lcom/startapp/networkTest/enums/MeasurementTypes;->h:Lcom/startapp/networkTest/enums/MeasurementTypes;

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->MeasurementType:Lcom/startapp/networkTest/enums/MeasurementTypes;

    .line 33
    invoke-static {}, Lcom/startapp/ua;->e()Lcom/startapp/networkTest/data/TimeInfo;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->TimeInfoOnStart:Lcom/startapp/networkTest/data/TimeInfo;

    .line 34
    iget-object v1, v3, Lcom/startapp/networkTest/results/BaseResult;->GUID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/startapp/u3;->a(Lcom/startapp/networkTest/data/TimeInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/LatencyResult;->LtrId:Ljava/lang/String;

    .line 35
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->i(Lcom/startapp/k0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/p2;->e(Landroid/content/Context;)Lcom/startapp/h6;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->MemoryInfoOnStart:Lcom/startapp/h6;

    .line 36
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->j(Lcom/startapp/k0;)Lcom/startapp/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/j8;->h()Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->RadioInfoOnStart:Lcom/startapp/networkTest/data/RadioInfo;

    .line 37
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->k(Lcom/startapp/k0;)Lcom/startapp/nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/nd;->c()Lcom/startapp/networkTest/data/WifiInfo;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->WifiInfoOnStart:Lcom/startapp/networkTest/data/WifiInfo;

    .line 38
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->k(Lcom/startapp/k0;)Lcom/startapp/nd;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/p2;->a(Lcom/startapp/nd;)Lcom/startapp/db;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->TrafficInfoOnStart:Lcom/startapp/db;

    .line 39
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->i(Lcom/startapp/k0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/p2;->b(Landroid/content/Context;)Lcom/startapp/q2;

    move-result-object v0

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->DeviceInfo:Lcom/startapp/q2;

    .line 40
    invoke-static {}, Lcom/startapp/networkTest/startapp/NetworkTester;->isAppInForeground()I

    move-result v0

    iput v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->IsAppInForeground:I

    .line 41
    iget v0, v7, Lcom/startapp/k0$b;->b:I

    iput v0, v3, Lcom/startapp/networkTest/results/LatencyResult;->Pings:I

    .line 42
    iget v0, v7, Lcom/startapp/k0$b;->c:I

    iput v0, v3, Lcom/startapp/networkTest/results/LatencyResult;->Pause:I

    .line 43
    iget-object v1, v7, Lcom/startapp/k0$b;->a:Ljava/lang/String;

    iput-object v1, v3, Lcom/startapp/networkTest/results/P3TestResult;->Server:Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/startapp/networkTest/enums/IpVersions;->b:Lcom/startapp/networkTest/enums/IpVersions;

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->IpVersion:Lcom/startapp/networkTest/enums/IpVersions;

    const-string v2, "ping"

    .line 50
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :try_start_1
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 52
    instance-of v0, v9, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    .line 53
    sget-object v0, Lcom/startapp/networkTest/enums/IpVersions;->c:Lcom/startapp/networkTest/enums/IpVersions;

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->IpVersion:Lcom/startapp/networkTest/enums/IpVersions;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v8

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v9, 0x0

    .line 57
    :goto_2
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    move-object/from16 v18, v9

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -i "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/startapp/k0$b;->c:I

    move/from16 v23, v12

    int-to-double v11, v9

    const-wide v19, 0x408f400000000000L    # 1000.0

    div-double v11, v11, v19

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " -W "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/startapp/k0$b;->d:I

    int-to-double v11, v9

    div-double v11, v11, v19

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, " -c "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/startapp/k0$b;->b:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " -s "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/startapp/k0$b;->e:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 62
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x15

    const-string v11, ""

    if-eqz v0, :cond_7

    .line 67
    :try_start_2
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->i(Lcom/startapp/k0;)Landroid/content/Context;

    move-result-object v0

    const-string v12, "connectivity"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_6

    .line 69
    iget-object v12, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v12}, Lcom/startapp/k0;->i(Lcom/startapp/k0;)Landroid/content/Context;

    move-result-object v12

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v12, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 71
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v5, v12, :cond_3

    .line 73
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    .line 74
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v6

    goto :goto_5

    :cond_3
    if-lt v5, v2, :cond_6

    .line 82
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v5

    .line 83
    array-length v12, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v11

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v12, :cond_5

    move-object/from16 v24, v6

    :try_start_3
    aget-object v6, v5, v2

    .line 85
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 86
    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 87
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 89
    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v24

    goto :goto_4

    :cond_5
    move-object/from16 v24, v6

    move-object/from16 v0, v17

    goto :goto_5

    :cond_6
    move-object/from16 v24, v6

    move-object v0, v11

    :goto_5
    if-eqz v0, :cond_8

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -I "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v24, v6

    .line 103
    :goto_6
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    move-object/from16 v24, v6

    .line 107
    :cond_8
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v9, v1, [Z

    const/4 v5, 0x0

    aput-boolean v5, v9, v5

    new-array v12, v1, [I

    aput v5, v12, v5

    .line 119
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 120
    :try_start_5
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    .line 127
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    if-eqz v18, :cond_9

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    const/16 v6, 0x15

    if-lt v0, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    .line 131
    :goto_8
    :try_start_7
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-eqz v0, :cond_a

    .line 132
    :try_start_8
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v25, v8

    :try_start_9
    sget-object v8, Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;->j:Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v26, v10

    :try_start_a
    sget-object v10, Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;->a:Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-wide/from16 v27, v13

    :try_start_b
    iget v13, v7, Lcom/startapp/k0$b;->b:I

    iget v14, v7, Lcom/startapp/k0$b;->d:I

    mul-int v13, v13, v14

    int-to-long v13, v13

    invoke-interface {v0, v8, v10, v13, v14}, Lcom/startapp/e4;->a(Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;J)V

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v25, v8

    :goto_9
    move-object/from16 v26, v10

    :goto_a
    move-wide/from16 v27, v13

    :goto_b
    move-object/from16 v19, v1

    move/from16 v21, v6

    move-object/from16 v29, v9

    goto/16 :goto_15

    :cond_a
    move-object/from16 v25, v8

    move-object/from16 v26, v10

    move-wide/from16 v27, v13

    :goto_c
    if-nez v6, :cond_13

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/4 v0, 0x0

    .line 138
    :goto_d
    iget v8, v7, Lcom/startapp/k0$b;->b:I

    if-ge v0, v8, :cond_13

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 142
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 187
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 189
    invoke-static {v2}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 193
    :goto_e
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    const/4 v8, 0x0

    return-object v8

    :cond_b
    const/4 v8, 0x0

    .line 194
    :try_start_d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move-object/from16 v29, v9

    sub-long v8, v19, v13

    const/16 v17, -0x1

    if-eqz v10, :cond_11

    .line 199
    :try_start_e
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_11

    .line 200
    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object/from16 v19, v1

    .line 204
    :try_start_f
    array-length v1, v10

    move-object/from16 v20, v2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_d

    array-length v1, v10

    const/16 v2, 0x9

    if-ne v1, v2, :cond_c

    goto :goto_f

    :cond_c
    const/4 v1, -0x1

    goto :goto_10

    .line 205
    :cond_d
    :goto_f
    array-length v1, v10

    add-int/lit8 v1, v1, -0x2

    :goto_10
    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    const/4 v2, 0x7

    if-ne v1, v2, :cond_12

    .line 209
    :cond_e
    aget-object v1, v10, v1

    const-string v2, "time="

    invoke-virtual {v1, v2, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v29, v1

    aget v17, v12, v1

    add-int/lit8 v17, v17, 0x1

    aput v17, v12, v1

    .line 215
    iget-object v1, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 216
    iget-object v1, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    int-to-float v10, v0

    move/from16 v21, v6

    :try_start_10
    iget v6, v7, Lcom/startapp/k0$b;->b:I

    int-to-float v6, v6

    div-float/2addr v10, v6

    if-gez v2, :cond_f

    const/4 v6, 0x0

    goto :goto_11

    :cond_f
    move v6, v2

    :goto_11
    invoke-interface {v1, v10, v6}, Lcom/startapp/e4;->b(FI)V

    goto :goto_13

    :cond_10
    move/from16 v21, v6

    goto :goto_13

    :catchall_6
    move-exception v0

    goto :goto_12

    :catchall_7
    move-exception v0

    move-object/from16 v19, v1

    :goto_12
    move/from16 v21, v6

    goto :goto_15

    :cond_11
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    :cond_12
    move/from16 v21, v6

    const/4 v2, -0x1

    .line 221
    :goto_13
    invoke-direct {v7, v8, v9, v2}, Lcom/startapp/k0$b;->a(JI)Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v6, v21

    move-object/from16 v9, v29

    goto/16 :goto_d

    :catchall_8
    move-exception v0

    goto :goto_15

    :catchall_9
    move-exception v0

    goto/16 :goto_b

    :cond_13
    move-object/from16 v19, v1

    move/from16 v21, v6

    move-object/from16 v29, v9

    .line 231
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_14

    :catchall_a
    move-exception v0

    move-object v1, v0

    .line 233
    invoke-static {v1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_14
    move-object/from16 v1, v19

    goto :goto_19

    :catchall_b
    move-exception v0

    move-object/from16 v19, v1

    move/from16 v21, v6

    move-object/from16 v25, v8

    move-object/from16 v29, v9

    move-object/from16 v26, v10

    move-wide/from16 v27, v13

    goto :goto_15

    :catchall_c
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v25, v8

    move-object/from16 v29, v9

    move-object/from16 v26, v10

    move-wide/from16 v27, v13

    const/16 v21, 0x0

    :goto_15
    move-object/from16 v1, v19

    goto :goto_17

    :catchall_d
    move-exception v0

    move-object/from16 v19, v1

    move-object/from16 v25, v8

    move-object/from16 v29, v9

    move-object/from16 v26, v10

    move-wide/from16 v27, v13

    goto :goto_16

    :catchall_e
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v29, v9

    move-object/from16 v26, v10

    move-wide/from16 v27, v13

    const/4 v1, 0x0

    :goto_16
    const/4 v5, 0x0

    const/16 v21, 0x0

    .line 238
    :goto_17
    :try_start_12
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    if-eqz v5, :cond_14

    .line 243
    :try_start_13
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    goto :goto_18

    :catchall_f
    move-exception v0

    move-object v2, v0

    .line 245
    invoke-static {v2}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_14
    :goto_18
    if-eqz v1, :cond_15

    :goto_19
    move/from16 v6, v21

    .line 237
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    move/from16 v21, v6

    :cond_15
    if-eqz v21, :cond_16

    .line 255
    sget-object v0, Lcom/startapp/networkTest/enums/MeasurementTypes;->i:Lcom/startapp/networkTest/enums/MeasurementTypes;

    iput-object v0, v3, Lcom/startapp/networkTest/results/P3TestResult;->MeasurementType:Lcom/startapp/networkTest/enums/MeasurementTypes;

    .line 257
    new-instance v0, Lcom/startapp/y;

    iget v1, v7, Lcom/startapp/k0$b;->b:I

    iget v2, v7, Lcom/startapp/k0$b;->c:I

    iget v5, v7, Lcom/startapp/k0$b;->d:I

    iget v6, v7, Lcom/startapp/k0$b;->e:I

    move-object/from16 v17, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v5

    move/from16 v22, v6

    invoke-direct/range {v17 .. v22}, Lcom/startapp/y;-><init>(Ljava/net/InetAddress;IIII)V

    .line 258
    new-instance v8, Lcom/startapp/k0$b$a;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object v9, v3

    move-object/from16 v3, v29

    move-object v10, v4

    move-object v4, v12

    const/4 v11, 0x1

    move-object v5, v10

    move-object/from16 v13, v24

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/startapp/k0$b$a;-><init>(Lcom/startapp/k0$b;[Z[ILjava/util/ArrayList;Lcom/startapp/y;)V

    invoke-virtual {v0, v8}, Lcom/startapp/y;->a(Lcom/startapp/e8;)V

    .line 285
    invoke-virtual {v0}, Lcom/startapp/y;->c()V

    goto :goto_1a

    :cond_16
    move-object v9, v3

    move-object v10, v4

    move-object/from16 v13, v24

    const/4 v11, 0x1

    .line 289
    :goto_1a
    sget-object v0, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->p:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->TestEndState:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 290
    sget-object v0, Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;->a:Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->TestErrorReason:Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;

    const/4 v1, 0x0

    aget-boolean v0, v29, v1

    .line 292
    iput-boolean v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->Success:Z

    aget v0, v12, v1

    .line 293
    iput v0, v9, Lcom/startapp/networkTest/results/LatencyResult;->SuccessfulPings:I

    .line 295
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 296
    invoke-virtual {v9, v10}, Lcom/startapp/networkTest/results/LatencyResult;->calculateStats(Ljava/util/ArrayList;)V

    .line 297
    iget-object v0, v9, Lcom/startapp/networkTest/results/LatencyResult;->MeasurementPoints:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Lcom/startapp/networkTest/results/P3TestResult;->calcRatShare(Ljava/util/ArrayList;)V

    .line 300
    :cond_17
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->g(Lcom/startapp/k0;)Lcom/startapp/a1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/a1;->a()Lcom/startapp/networkTest/data/BatteryInfo;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->BatteryInfoOnEnd:Lcom/startapp/networkTest/data/BatteryInfo;

    .line 301
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->h(Lcom/startapp/k0;)Lcom/startapp/networkTest/controller/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/controller/LocationController;->c()Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->LocationInfoOnEnd:Lcom/startapp/networkTest/data/LocationInfo;

    .line 302
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->i(Lcom/startapp/k0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/p2;->h(Landroid/content/Context;)Lcom/startapp/networkTest/enums/ScreenStates;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/LatencyResult;->ScreenStateOnEnd:Lcom/startapp/networkTest/enums/ScreenStates;

    .line 303
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->i(Lcom/startapp/k0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/p2;->e(Landroid/content/Context;)Lcom/startapp/h6;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->MemoryInfoOnEnd:Lcom/startapp/h6;

    .line 304
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->j(Lcom/startapp/k0;)Lcom/startapp/j8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/j8;->h()Lcom/startapp/networkTest/data/RadioInfo;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->RadioInfoOnEnd:Lcom/startapp/networkTest/data/RadioInfo;

    .line 305
    invoke-static {}, Lcom/startapp/ua;->e()Lcom/startapp/networkTest/data/TimeInfo;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->TimeInfoOnEnd:Lcom/startapp/networkTest/data/TimeInfo;

    .line 306
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->k(Lcom/startapp/k0;)Lcom/startapp/nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/nd;->c()Lcom/startapp/networkTest/data/WifiInfo;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->WifiInfoOnEnd:Lcom/startapp/networkTest/data/WifiInfo;

    .line 307
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->k(Lcom/startapp/k0;)Lcom/startapp/nd;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/p2;->a(Lcom/startapp/nd;)Lcom/startapp/db;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->TrafficInfoOnEnd:Lcom/startapp/db;

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v15

    iput-wide v0, v9, Lcom/startapp/networkTest/results/LatencyResult;->DurationOverallNoSleep:J

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v0, v27

    iput-wide v0, v9, Lcom/startapp/networkTest/results/LatencyResult;->DurationOverall:J

    .line 311
    iget-object v0, v7, Lcom/startapp/k0$b;->g:Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    sget-object v1, Lcom/startapp/networkTest/enums/LtrCriteriaTypes;->e:Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    if-ne v0, v1, :cond_18

    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->c(Lcom/startapp/k0;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    :cond_18
    iget-object v0, v7, Lcom/startapp/k0$b;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapp/s9;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1b
    iput-object v0, v9, Lcom/startapp/networkTest/results/LatencyResult;->AirportCode:Ljava/lang/String;

    .line 312
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->d(Lcom/startapp/k0;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->Meta:Ljava/lang/String;

    .line 313
    iget-object v0, v7, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0}, Lcom/startapp/k0;->e(Lcom/startapp/k0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/startapp/networkTest/results/P3TestResult;->QuestionnaireName:Ljava/lang/String;

    const/4 v2, 0x0

    aget-boolean v0, v29, v2

    if-eqz v0, :cond_19

    .line 317
    iget v0, v13, Lcom/startapp/e6;->successfulTests:I

    add-int/2addr v0, v11

    iput v0, v13, Lcom/startapp/e6;->successfulTests:I

    move-object v0, v9

    goto :goto_1d

    :cond_19
    add-int/lit8 v12, v23, 0x1

    move-object v0, v9

    move-object/from16 v8, v25

    move-object/from16 v10, v26

    const/4 v9, 0x0

    goto/16 :goto_1

    :catchall_10
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_1a

    .line 318
    :try_start_14
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    goto :goto_1c

    :catchall_11
    move-exception v0

    move-object v3, v0

    .line 320
    invoke-static {v3}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_1c
    if-eqz v1, :cond_1b

    .line 324
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 326
    :cond_1b
    throw v2

    :cond_1c
    move-object/from16 v26, v10

    .line 397
    :goto_1d
    iget-object v1, v7, Lcom/startapp/k0$b;->g:Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    sget-object v2, Lcom/startapp/networkTest/enums/LtrCriteriaTypes;->e:Lcom/startapp/networkTest/enums/LtrCriteriaTypes;

    if-eq v1, v2, :cond_1d

    move-object/from16 v1, v26

    .line 398
    invoke-direct {v7, v1}, Lcom/startapp/k0$b;->a(Ljava/util/List;)V

    .line 400
    :cond_1d
    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->CLEAR_LTR_LOCATION_INFO()Z

    move-result v1

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1e

    .line 401
    new-instance v1, Lcom/startapp/networkTest/data/LocationInfo;

    invoke-direct {v1}, Lcom/startapp/networkTest/data/LocationInfo;-><init>()V

    iput-object v1, v0, Lcom/startapp/networkTest/results/P3TestResult;->LocationInfoOnStart:Lcom/startapp/networkTest/data/LocationInfo;

    .line 402
    new-instance v1, Lcom/startapp/networkTest/data/LocationInfo;

    invoke-direct {v1}, Lcom/startapp/networkTest/data/LocationInfo;-><init>()V

    iput-object v1, v0, Lcom/startapp/networkTest/results/P3TestResult;->LocationInfoOnEnd:Lcom/startapp/networkTest/data/LocationInfo;

    :cond_1e
    return-object v0
.end method

.method public a(Lcom/startapp/networkTest/results/LatencyResult;)V
    .locals 4

    .line 415
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {v0, p1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;Lcom/startapp/networkTest/results/P3TestResult;)Lcom/startapp/networkTest/results/P3TestResult;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 420
    iget-object p1, p0, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {p1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 421
    iget-object p1, p0, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {p1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object p1

    sget-object v2, Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;->r:Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;

    sget-object v3, Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;->a:Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/startapp/e4;->a(Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;J)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object p1, p0, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {p1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 426
    iget-object p1, p0, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {p1}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object p1

    sget-object v2, Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;->t:Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;

    sget-object v3, Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;->a:Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;

    invoke-interface {p1, v2, v3, v0, v1}, Lcom/startapp/e4;->a(Lcom/startapp/networkTest/speedtest/SpeedtestEngineStatus;Lcom/startapp/networkTest/speedtest/SpeedtestEngineError;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/k0$b;->a([Ljava/lang/Void;)Lcom/startapp/networkTest/results/LatencyResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startapp/networkTest/results/LatencyResult;

    invoke-virtual {p0, p1}, Lcom/startapp/k0$b;->a(Lcom/startapp/networkTest/results/LatencyResult;)V

    return-void
.end method
