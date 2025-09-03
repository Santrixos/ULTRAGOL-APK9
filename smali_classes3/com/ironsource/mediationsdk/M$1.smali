.class final Lcom/ironsource/mediationsdk/M$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/M;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/M;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/M;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/M$1;->a:Lcom/ironsource/mediationsdk/M;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M$1;->a:Lcom/ironsource/mediationsdk/M;

    iget-object v1, v0, Lcom/ironsource/mediationsdk/M;->l:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/ironsource/mediationsdk/M;->k:Lcom/ironsource/mediationsdk/M$a;

    sget-object v3, Lcom/ironsource/mediationsdk/M$a;->b:Lcom/ironsource/mediationsdk/M$a;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/ironsource/mediationsdk/M$a;->b:Lcom/ironsource/mediationsdk/M$a;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/M;->a(Lcom/ironsource/mediationsdk/M$a;)V

    new-instance v2, Lcom/ironsource/mediationsdk/M$2;

    invoke-direct {v2, v0}, Lcom/ironsource/mediationsdk/M$2;-><init>(Lcom/ironsource/mediationsdk/M;)V

    invoke-static {v2}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

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
