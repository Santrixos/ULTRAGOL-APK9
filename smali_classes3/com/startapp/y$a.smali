.class public Lcom/startapp/y$a;
.super Ljava/lang/Thread;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:[Landroid/system/StructPollfd;

.field public final synthetic b:Lcom/startapp/y;


# direct methods
.method public constructor <init>(Lcom/startapp/y;[Landroid/system/StructPollfd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/startapp/y$a;->a:[Landroid/system/StructPollfd;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/startapp/y$a;->a:[Landroid/system/StructPollfd;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2
    iget-object v8, v0, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 4
    iget-object v2, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v2}, Lcom/startapp/y;->a(Lcom/startapp/y;)I

    move-result v9

    new-array v10, v9, [B

    const/4 v11, 0x0

    .line 8
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v2}, Lcom/startapp/y;->b(Lcom/startapp/y;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v2}, Lcom/startapp/y;->d(Lcom/startapp/y;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v2}, Lcom/startapp/y;->e(Lcom/startapp/y;)I

    move-result v2

    iget-object v3, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v3}, Lcom/startapp/y;->g(Lcom/startapp/y;)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/startapp/y$a;->a:[Landroid/system/StructPollfd;

    iget-object v3, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v3}, Lcom/startapp/y;->h(Lcom/startapp/y;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v2

    .line 22
    iget-object v3, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v3}, Lcom/startapp/y;->d(Lcom/startapp/y;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    if-ltz v2, :cond_0

    .line 28
    iget-short v2, v0, Landroid/system/StructPollfd;->revents:S

    invoke-static {}, Lcom/startapp/y;->a()S

    move-result v3

    if-ne v2, v3, :cond_0

    .line 30
    iput-short v1, v0, Landroid/system/StructPollfd;->revents:S

    const/4 v4, 0x0

    const/16 v6, 0x40

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v10

    move v5, v9

    .line 31
    invoke-static/range {v2 .. v7}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    .line 33
    invoke-static {v10}, Lcom/startapp/y;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    .line 34
    iget-object v3, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v3}, Lcom/startapp/y;->i(Lcom/startapp/y;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 38
    iget-object v4, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v4}, Lcom/startapp/y;->i(Lcom/startapp/y;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v6, v4, v2

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v4}, Lcom/startapp/y;->j(Lcom/startapp/y;)J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 41
    iget-object v2, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v2}, Lcom/startapp/y;->c(Lcom/startapp/y;)Lcom/startapp/e8;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v12, v11, 0x1

    move v3, v11

    :try_start_1
    invoke-interface/range {v2 .. v7}, Lcom/startapp/e8;->a(IJJ)V

    .line 42
    iget-object v2, p0, Lcom/startapp/y$a;->b:Lcom/startapp/y;

    invoke-static {v2}, Lcom/startapp/y;->f(Lcom/startapp/y;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v11, v12

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move v11, v12

    goto :goto_1

    :catchall_1
    move-exception v2

    .line 66
    :goto_1
    invoke-static {v2}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method
