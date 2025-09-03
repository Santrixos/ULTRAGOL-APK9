.class public Lcom/startapp/b2;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Landroid/net/ConnectivityManager$OnNetworkActiveListener;


# instance fields
.field public final synthetic a:Lcom/startapp/c2;


# direct methods
.method public constructor <init>(Lcom/startapp/c2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/b2;->a:Lcom/startapp/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkActive()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/b2;->a:Lcom/startapp/c2;

    .line 2
    iget-object v1, v0, Lcom/startapp/c2;->c:Ljava/util/List;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, v0, Lcom/startapp/c2;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/d3;

    .line 4
    invoke-interface {v2}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
