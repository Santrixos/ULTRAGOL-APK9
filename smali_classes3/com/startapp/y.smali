.class public Lcom/startapp/y;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/y$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String; = "y"

.field private static final q:Z = false

.field private static final r:S

.field private static final s:I = 0x7

.field private static final t:I = 0x10

.field private static final u:I = 0x40

.field private static final v:S = 0x7777s


# instance fields
.field private a:Ljava/net/InetAddress;

.field private b:Lcom/startapp/e8;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/startapp/b4;

.field private g:S

.field private h:S

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:J

.field private o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/system/OsConstants;->POLLIN:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    int-to-short v0, v0

    sput-short v0, Lcom/startapp/y;->r:S

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-short v0, p0, Lcom/startapp/y;->g:S

    const/16 v0, 0x7777

    .line 3
    iput-short v0, p0, Lcom/startapp/y;->h:S

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/startapp/y;->i:Z

    .line 6
    iput-boolean v0, p0, Lcom/startapp/y;->j:Z

    .line 16
    iput-object p1, p0, Lcom/startapp/y;->a:Ljava/net/InetAddress;

    .line 17
    iput p4, p0, Lcom/startapp/y;->c:I

    .line 18
    iput p2, p0, Lcom/startapp/y;->e:I

    .line 19
    iput p3, p0, Lcom/startapp/y;->d:I

    .line 21
    instance-of p1, p1, Ljava/net/Inet6Address;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    const/16 p1, -0x80

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 28
    :goto_0
    new-instance p3, Lcom/startapp/b4;

    invoke-direct {p3, p1}, Lcom/startapp/b4;-><init>(B)V

    iput-object p3, p0, Lcom/startapp/y;->f:Lcom/startapp/b4;

    .line 29
    iput p5, p0, Lcom/startapp/y;->k:I

    add-int/2addr p5, p2

    .line 30
    iput p5, p0, Lcom/startapp/y;->l:I

    .line 31
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/startapp/y;->o:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic a(Lcom/startapp/y;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startapp/y;->l:I

    return p0
.end method

.method public static synthetic a()S
    .locals 1

    .line 2
    sget-short v0, Lcom/startapp/y;->r:S

    return v0
.end method

.method private a(Ljava/io/FileDescriptor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 7
    sget v0, Landroid/system/OsConstants;->IPPROTO_IP:I

    sget v2, Landroid/system/OsConstants;->IP_TOS:I

    invoke-static {p1, v0, v2, v1}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    const-class v0, Landroid/system/Os;

    const-string v2, "setsockoptInt"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const/4 v9, 0x3

    aput-object v5, v4, v9

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    .line 14
    sget p1, Landroid/system/OsConstants;->IPPROTO_IP:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    sget p1, Landroid/system/OsConstants;->IP_TOS:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v9

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic a([B)[B
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/startapp/y;->b([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/startapp/y;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startapp/y;->j:Z

    return p0
.end method

.method private static b([B)[B
    .locals 2

    .line 3
    array-length v0, p0

    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/startapp/y;)Lcom/startapp/e8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/y;->b:Lcom/startapp/e8;

    return-object p0
.end method

.method public static synthetic d(Lcom/startapp/y;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startapp/y;->i:Z

    return p0
.end method

.method public static synthetic e(Lcom/startapp/y;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startapp/y;->m:I

    return p0
.end method

.method public static synthetic f(Lcom/startapp/y;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startapp/y;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/startapp/y;->m:I

    return v0
.end method

.method public static synthetic g(Lcom/startapp/y;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startapp/y;->e:I

    return p0
.end method

.method public static synthetic h(Lcom/startapp/y;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startapp/y;->c:I

    return p0
.end method

.method public static synthetic i(Lcom/startapp/y;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/y;->o:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic j(Lcom/startapp/y;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/y;->n:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/startapp/e8;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/startapp/y;->b:Lcom/startapp/e8;

    return-void
.end method

.method public a(S)V
    .locals 0

    .line 4
    iput-short p1, p0, Lcom/startapp/y;->h:S

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startapp/y;->i:Z

    return-void
.end method

.method public c()V
    .locals 12

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startapp/y;->i:Z

    .line 5
    iget-object v1, p0, Lcom/startapp/y;->a:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet6Address;

    if-eqz v1, :cond_0

    .line 6
    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    .line 7
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    goto :goto_0

    .line 10
    :cond_0
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    .line 11
    sget v2, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    .line 14
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/startapp/y;->n:J

    .line 17
    :try_start_0
    sget v3, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v1, v3, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v2, :cond_6

    .line 21
    :try_start_1
    invoke-direct {p0, v1}, Lcom/startapp/y;->a(Ljava/io/FileDescriptor;)V

    .line 23
    new-instance v2, Landroid/system/StructPollfd;

    invoke-direct {v2}, Landroid/system/StructPollfd;-><init>()V

    .line 24
    iput-object v1, v2, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 25
    sget-short v3, Lcom/startapp/y;->r:S

    iput-short v3, v2, Landroid/system/StructPollfd;->events:S

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/system/StructPollfd;

    aput-object v2, v4, v0

    .line 28
    new-instance v2, Lcom/startapp/y$a;

    invoke-direct {v2, p0, v4}, Lcom/startapp/y$a;-><init>(Lcom/startapp/y;[Landroid/system/StructPollfd;)V

    .line 30
    iput-boolean v3, p0, Lcom/startapp/y;->j:Z

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/startapp/y;->n:J

    .line 33
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v4, 0x0

    .line 35
    :goto_1
    iget v5, p0, Lcom/startapp/y;->e:I

    if-ge v4, v5, :cond_4

    .line 42
    iget-boolean v5, p0, Lcom/startapp/y;->i:Z

    if-eqz v5, :cond_1

    goto :goto_3

    .line 46
    :cond_1
    iget v5, p0, Lcom/startapp/y;->k:I

    invoke-static {v5}, Lcom/startapp/b4;->a(I)[B

    move-result-object v5

    .line 52
    iget-object v6, p0, Lcom/startapp/y;->f:Lcom/startapp/b4;

    iget-short v7, p0, Lcom/startapp/y;->g:S

    add-int/lit8 v8, v7, 0x1

    int-to-short v8, v8

    iput-short v8, p0, Lcom/startapp/y;->g:S

    iget-short v8, p0, Lcom/startapp/y;->h:S

    invoke-virtual {v6, v7, v8, v5}, Lcom/startapp/b4;->a(SS[B)Ljava/nio/ByteBuffer;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 58
    :try_start_2
    invoke-static {v5}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    .line 59
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 60
    iget-object v9, p0, Lcom/startapp/y;->o:Landroid/util/SparseArray;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    iget-object v5, p0, Lcom/startapp/y;->a:Ljava/net/InetAddress;

    const/4 v7, 0x7

    invoke-static {v1, v6, v0, v5, v7}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gez v5, :cond_2

    goto :goto_3

    :catchall_0
    move-exception v5

    .line 70
    :try_start_3
    invoke-static {v5}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/startapp/y;->n:J

    sub-long v8, v5, v7

    .line 72
    iget-object v6, p0, Lcom/startapp/y;->b:Lcom/startapp/e8;

    const-wide/16 v10, -0x1

    move v7, v4

    invoke-interface/range {v6 .. v11}, Lcom/startapp/e8;->a(IJJ)V

    .line 73
    iget v5, p0, Lcom/startapp/y;->m:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/startapp/y;->m:I

    .line 76
    :cond_2
    iget v5, p0, Lcom/startapp/y;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-int/2addr v5, v3

    if-ge v4, v5, :cond_3

    .line 81
    :try_start_4
    iget v5, p0, Lcom/startapp/y;->d:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v5

    .line 83
    :try_start_5
    invoke-static {v5}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 88
    :cond_4
    :goto_3
    iput-boolean v0, p0, Lcom/startapp/y;->j:Z

    .line 89
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 90
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 95
    :cond_5
    :try_start_6
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 96
    iput-boolean v0, p0, Lcom/startapp/y;->j:Z

    goto :goto_4

    :catchall_2
    move-exception v2

    .line 97
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 98
    iput-boolean v0, p0, Lcom/startapp/y;->j:Z

    .line 99
    throw v2

    .line 102
    :cond_6
    :goto_4
    iget-boolean v0, p0, Lcom/startapp/y;->i:Z

    if-nez v0, :cond_7

    .line 103
    iget v0, p0, Lcom/startapp/y;->m:I

    :goto_5
    iget v1, p0, Lcom/startapp/y;->e:I

    if-ge v0, v1, :cond_7

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/startapp/y;->n:J

    sub-long v3, v1, v3

    .line 105
    iget-object v1, p0, Lcom/startapp/y;->b:Lcom/startapp/e8;

    const-wide/16 v5, -0x1

    move v2, v0

    invoke-interface/range {v1 .. v6}, Lcom/startapp/e8;->a(IJJ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catchall_3
    move-exception v0

    .line 109
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_7
    return-void
.end method
