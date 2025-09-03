.class public Lcom/startapp/eb;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final a:Ljava/lang/String; = "eb"

.field private static b:[Ljava/lang/String; = null

.field private static c:[Ljava/lang/String; = null

.field private static d:Z = true

.field private static e:Ljava/lang/reflect/Method;

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    const-class v2, Landroid/net/TrafficStats;

    const-string v3, "getRxBytes"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/startapp/eb;->e:Ljava/lang/reflect/Method;

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 4
    invoke-static {v2}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 8
    :goto_0
    :try_start_1
    const-class v2, Landroid/net/TrafficStats;

    const-string v3, "getTxBytes"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/startapp/eb;->f:Ljava/lang/reflect/Method;

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 11
    invoke-static {v2}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    .line 15
    :goto_1
    :try_start_2
    const-class v2, Landroid/net/TrafficStats;

    const-string v3, "getMobileIfaces"

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/startapp/eb;->g:Ljava/lang/reflect/Method;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 4

    .line 49
    sget-object v0, Lcom/startapp/eb;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/statistics/rx_bytes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/startapp/eb;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a()V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "eth"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    sget-object v4, Lcom/startapp/eb;->b:[Ljava/lang/String;

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    .line 14
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 15
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 20
    :cond_2
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 23
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 24
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InetAddress;

    if-eqz v6, :cond_3

    .line 26
    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_0

    .line 32
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/la;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 40
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/startapp/eb;->c:[Ljava/lang/String;

    .line 41
    sput-boolean v1, Lcom/startapp/eb;->d:Z

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 42
    :try_start_1
    invoke-static {v2}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/startapp/eb;->c:[Ljava/lang/String;

    .line 45
    sput-boolean v1, Lcom/startapp/eb;->d:Z

    :goto_3
    return-void

    :catchall_1
    move-exception v2

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/startapp/eb;->c:[Ljava/lang/String;

    .line 47
    sput-boolean v1, Lcom/startapp/eb;->d:Z

    .line 48
    throw v2
.end method

.method public static declared-synchronized b()J
    .locals 11

    const-class v0, Lcom/startapp/eb;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 1
    :try_start_0
    sget-boolean v3, Lcom/startapp/eb;->d:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/startapp/eb;->c:[Ljava/lang/String;

    if-eqz v3, :cond_0

    array-length v3, v3

    if-gtz v3, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/startapp/eb;->a()V

    .line 4
    :cond_1
    sget-object v3, Lcom/startapp/eb;->c:[Ljava/lang/String;

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    .line 5
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 6
    invoke-static {v6}, Lcom/startapp/eb;->a(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    add-long/2addr v1, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/String;)J
    .locals 4

    .line 7
    sget-object v0, Lcom/startapp/eb;->f:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/statistics/tx_bytes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/startapp/eb;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized c()J
    .locals 11

    const-class v0, Lcom/startapp/eb;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 1
    :try_start_0
    sget-boolean v3, Lcom/startapp/eb;->d:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/startapp/eb;->c:[Ljava/lang/String;

    if-eqz v3, :cond_0

    array-length v3, v3

    if-gtz v3, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/startapp/eb;->a()V

    .line 4
    :cond_1
    sget-object v3, Lcom/startapp/eb;->c:[Ljava/lang/String;

    if-eqz v3, :cond_3

    array-length v4, v3

    if-lez v4, :cond_3

    .line 5
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 6
    invoke-static {v6}, Lcom/startapp/eb;->b(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    add-long/2addr v1, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static c(Ljava/lang/String;)J
    .locals 2

    .line 7
    invoke-static {p0}, Lcom/startapp/v9;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 8
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 9
    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private static d()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startapp/eb;->g:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    sput-object v0, Lcom/startapp/eb;->b:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized e()J
    .locals 11

    const-class v0, Lcom/startapp/eb;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 3
    :try_start_1
    invoke-static {v3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    move-wide v3, v1

    :goto_0
    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 8
    sget-object v1, Lcom/startapp/eb;->b:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 9
    invoke-static {}, Lcom/startapp/eb;->d()V

    goto :goto_2

    .line 12
    :cond_0
    sget-object v1, Lcom/startapp/eb;->b:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 13
    array-length v2, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v6, v1, v5

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/class/net/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/statistics/rx_bytes"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/startapp/eb;->c(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    add-long/2addr v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit v0

    return-wide v3

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized f()J
    .locals 11

    const-class v0, Lcom/startapp/eb;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 3
    :try_start_1
    invoke-static {v3}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    move-wide v3, v1

    :goto_0
    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    .line 8
    sget-object v1, Lcom/startapp/eb;->b:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 9
    invoke-static {}, Lcom/startapp/eb;->d()V

    goto :goto_2

    .line 12
    :cond_0
    sget-object v1, Lcom/startapp/eb;->b:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 13
    array-length v2, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_2

    aget-object v6, v1, v5

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/sys/class/net/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/statistics/tx_bytes"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/startapp/eb;->c(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    add-long/2addr v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit v0

    return-wide v3

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized g()J
    .locals 5

    const-class v0, Lcom/startapp/eb;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v1

    .line 2
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized h()J
    .locals 5

    const-class v0, Lcom/startapp/eb;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v1

    .line 2
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
