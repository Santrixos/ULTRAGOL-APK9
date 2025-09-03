.class public Lcom/startapp/sdk/components/ComponentLocator$m;
.super Lcom/startapp/y1;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/components/ComponentLocator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/y1<",
        "Lcom/startapp/o4;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/startapp/y1;

.field public final synthetic d:Lcom/startapp/sdk/components/ComponentLocator;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator;Landroid/content/Context;Lcom/startapp/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/components/ComponentLocator$m;->d:Lcom/startapp/sdk/components/ComponentLocator;

    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$m;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/startapp/sdk/components/ComponentLocator$m;->c:Lcom/startapp/y1;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 2
    new-instance v7, Lcom/startapp/sdk/components/ComponentLocator$j0;

    const-string v0, "info"

    invoke-direct {v7, v0}, Lcom/startapp/sdk/components/ComponentLocator$j0;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x5

    move-object v0, v8

    .line 3
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 5
    new-instance v9, Lcom/startapp/o4;

    new-instance v1, Lcom/startapp/l4;

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$m;->b:Landroid/content/Context;

    const-string v2, "StartApp-d6864f2502af7851"

    invoke-direct {v1, v0, v2}, Lcom/startapp/l4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$m;->c:Lcom/startapp/y1;

    .line 7
    invoke-virtual {v0}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/startapp/r3;

    new-instance v4, Lcom/startapp/sdk/components/i;

    invoke-direct {v4, p0, v8}, Lcom/startapp/sdk/components/i;-><init>(Lcom/startapp/sdk/components/ComponentLocator$m;Ljava/util/concurrent/ThreadPoolExecutor;)V

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$m;->d:Lcom/startapp/sdk/components/ComponentLocator;

    .line 15
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->e()Lcom/startapp/c2;

    move-result-object v5

    new-instance v6, Lcom/startapp/u4;

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$m;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/startapp/sdk/components/ComponentLocator$m;->d:Lcom/startapp/sdk/components/ComponentLocator;

    .line 16
    iget-object v7, v3, Lcom/startapp/sdk/components/ComponentLocator;->n:Lcom/startapp/y1;

    .line 17
    iget-object v3, v3, Lcom/startapp/sdk/components/ComponentLocator;->h:Lcom/startapp/y1;

    .line 18
    invoke-direct {v6, v0, v7, v3}, Lcom/startapp/u4;-><init>(Landroid/content/Context;Lcom/startapp/y1;Lcom/startapp/y1;)V

    new-instance v7, Lcom/startapp/sdk/components/j;

    invoke-direct {v7, p0}, Lcom/startapp/sdk/components/j;-><init>(Lcom/startapp/sdk/components/ComponentLocator$m;)V

    move-object v0, v9

    move-object v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/startapp/o4;-><init>(Lcom/startapp/l4;Lcom/startapp/r3;Ljava/util/concurrent/Executor;Lcom/startapp/d3;Lcom/startapp/c2;Lcom/startapp/c3;Lcom/startapp/d3;)V

    return-object v9
.end method
