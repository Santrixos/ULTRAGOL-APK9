.class public Lcom/startapp/t2;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final c:Ljava/lang/String; = "t2"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/startapp/t2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/t2;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic a(Lcom/startapp/t2;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/t2;->b:Ljava/net/InetAddress;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/startapp/t2;->a:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/startapp/t2$a;

    invoke-direct {v1, p0, p1}, Lcom/startapp/t2$a;-><init>(Lcom/startapp/t2;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    int-to-long p1, p2

    .line 20
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/startapp/t2;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 28
    :try_start_1
    iget-object p2, p0, Lcom/startapp/t2;->b:Ljava/net/InetAddress;

    if-eqz p2, :cond_0

    .line 32
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 33
    :cond_0
    new-instance p2, Ljava/net/UnknownHostException;

    invoke-direct {p2}, Ljava/net/UnknownHostException;-><init>()V

    throw p2

    :catchall_1
    move-exception p2

    .line 37
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2
.end method
