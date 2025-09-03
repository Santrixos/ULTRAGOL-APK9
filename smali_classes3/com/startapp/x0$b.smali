.class public Lcom/startapp/x0$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/v7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/x0;-><init>(Landroid/content/Context;Lcom/startapp/v7;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lcom/startapp/v7;

.field public final synthetic c:Lcom/startapp/x0;


# direct methods
.method public constructor <init>(Lcom/startapp/x0;Lcom/startapp/v7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/x0$b;->c:Lcom/startapp/x0;

    iput-object p2, p0, Lcom/startapp/x0$b;->b:Lcom/startapp/v7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/startapp/x0$b;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startapp/x0$b;->a:Z

    .line 4
    iget-object v0, p0, Lcom/startapp/x0$b;->c:Lcom/startapp/x0;

    iget-object v0, v0, Lcom/startapp/x0;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/startapp/x0$b;->b:Lcom/startapp/v7;

    invoke-interface {v0, p1}, Lcom/startapp/v7;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
