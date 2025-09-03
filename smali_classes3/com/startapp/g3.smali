.class public Lcom/startapp/g3;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/g3$b;,
        Lcom/startapp/g3$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "g3"

.field private static final f:Ljava/lang/String; = "ispinfo"

.field private static final g:Ljava/lang/String; = "anonymize"

.field private static h:Lcom/startapp/g3;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/startapp/networkTest/data/IspInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/startapp/networkTest/data/IspInfo;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startapp/g3;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/startapp/g3;->b:Z

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/g3;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/startapp/g3;
    .locals 1

    .line 2
    sget-object v0, Lcom/startapp/g3;->h:Lcom/startapp/g3;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/startapp/g3;

    invoke-direct {v0}, Lcom/startapp/g3;-><init>()V

    sput-object v0, Lcom/startapp/g3;->h:Lcom/startapp/g3;

    .line 5
    :cond_0
    sget-object v0, Lcom/startapp/g3;->h:Lcom/startapp/g3;

    return-object v0
.end method

.method public static synthetic a(Lcom/startapp/g3;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/g3;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/startapp/g3;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/g3;->b:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/startapp/networkTest/data/WifiInfo;)Lcom/startapp/networkTest/data/IspInfo;
    .locals 1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/startapp/g3;->b(Lcom/startapp/networkTest/data/WifiInfo;Z)Lcom/startapp/networkTest/data/IspInfo;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/startapp/networkTest/data/WifiInfo;Z)Lcom/startapp/networkTest/data/IspInfo;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/startapp/g3;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/startapp/g3;->c:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/startapp/networkTest/data/WifiInfo;->WifiBSSID_Full:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/networkTest/data/IspInfo;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-eqz p2, :cond_2

    .line 13
    iget-boolean p2, p0, Lcom/startapp/g3;->a:Z

    if-nez p2, :cond_2

    .line 14
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p2, v0, :cond_1

    .line 15
    new-instance p2, Lcom/startapp/g3$a;

    invoke-direct {p2, p0}, Lcom/startapp/g3$a;-><init>(Lcom/startapp/g3;)V

    new-array v0, v2, [Lcom/startapp/networkTest/data/WifiInfo;

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 17
    :cond_1
    new-instance p2, Lcom/startapp/g3$a;

    invoke-direct {p2, p0}, Lcom/startapp/g3$a;-><init>(Lcom/startapp/g3;)V

    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/networkTest/threads/ThreadManager;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-array v2, v2, [Lcom/startapp/networkTest/data/WifiInfo;

    aput-object p1, v2, v1

    invoke-virtual {p2, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 21
    :cond_2
    :goto_0
    new-instance p1, Lcom/startapp/networkTest/data/IspInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/IspInfo;-><init>()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(ZZ)Lcom/startapp/networkTest/data/IspInfo;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/startapp/g3;->d:Lcom/startapp/networkTest/data/IspInfo;

    if-eqz p1, :cond_0

    .line 25
    iget-boolean v1, p0, Lcom/startapp/g3;->b:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/startapp/g3;->b:Z

    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 26
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    const/4 v1, 0x0

    if-ge p1, p2, :cond_2

    .line 27
    new-instance p1, Lcom/startapp/g3$b;

    invoke-direct {p1, p0}, Lcom/startapp/g3$b;-><init>(Lcom/startapp/g3;)V

    new-array p2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 29
    :cond_2
    new-instance p1, Lcom/startapp/g3$b;

    invoke-direct {p1, p0}, Lcom/startapp/g3$b;-><init>(Lcom/startapp/g3;)V

    invoke-static {}, Lcom/startapp/networkTest/threads/ThreadManager;->b()Lcom/startapp/networkTest/threads/ThreadManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/networkTest/threads/ThreadManager;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 34
    new-instance v0, Lcom/startapp/networkTest/data/IspInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/IspInfo;-><init>()V

    :cond_4
    return-object v0
.end method

.method public b(Lcom/startapp/networkTest/data/WifiInfo;Z)Lcom/startapp/networkTest/data/IspInfo;
    .locals 2

    .line 2
    new-instance v0, Lcom/startapp/networkTest/data/IspInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/IspInfo;-><init>()V

    if-eqz p2, :cond_0

    .line 7
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->GEOIP_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ispinfo"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->GEOIP_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ispinfo"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "anonymize"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=false"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_0
    sget-object v1, Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;->b:Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;

    invoke-static {v1, p2}, Lcom/startapp/networkTest/net/WebApiClient;->a(Lcom/startapp/networkTest/net/WebApiClient$RequestMethod;Ljava/lang/String;)Lcom/startapp/kd;

    move-result-object p2

    .line 15
    iget-object v1, p2, Lcom/startapp/kd;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 16
    iget-object p2, p2, Lcom/startapp/kd;->b:Ljava/lang/String;

    const-class v1, Lcom/startapp/h5;

    invoke-static {p2, v1}, Lcom/startapp/r5;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapp/h5;

    if-eqz p2, :cond_2

    .line 18
    iget-object v1, p2, Lcom/startapp/h5;->AutonomousSystemNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/networkTest/data/IspInfo;->AutonomousSystemNumber:Ljava/lang/String;

    .line 19
    iget-object v1, p2, Lcom/startapp/h5;->AutonomousSystemOrganization:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/networkTest/data/IspInfo;->AutonomousSystemOrganization:Ljava/lang/String;

    .line 20
    iget-object v1, p2, Lcom/startapp/h5;->IpAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/networkTest/data/IspInfo;->IpAddress:Ljava/lang/String;

    .line 21
    iget-object v1, p2, Lcom/startapp/h5;->IspName:Ljava/lang/String;

    invoke-static {v1}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/networkTest/data/IspInfo;->IspName:Ljava/lang/String;

    .line 22
    iget-object p2, p2, Lcom/startapp/h5;->IspOrganizationalName:Ljava/lang/String;

    invoke-static {p2}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/startapp/networkTest/data/IspInfo;->IspOrganizationalName:Ljava/lang/String;

    const/4 p2, 0x1

    .line 23
    iput-boolean p2, v0, Lcom/startapp/networkTest/data/IspInfo;->SuccessfulIspLookup:Z

    if-eqz p1, :cond_1

    .line 26
    iget-object p2, p0, Lcom/startapp/g3;->c:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v1, p0, Lcom/startapp/g3;->c:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/startapp/networkTest/data/WifiInfo;->WifiBSSID_Full:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 31
    :cond_1
    iput-object v0, p0, Lcom/startapp/g3;->d:Lcom/startapp/networkTest/data/IspInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 36
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method
