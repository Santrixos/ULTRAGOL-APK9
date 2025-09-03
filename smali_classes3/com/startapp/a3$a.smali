.class public Lcom/startapp/a3$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/a3;


# direct methods
.method public constructor <init>(Lcom/startapp/a3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/a3$a;->a:Lcom/startapp/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/a3$a;->a:Lcom/startapp/a3;

    invoke-static {v0}, Lcom/startapp/a3;->a(Lcom/startapp/a3;)V

    .line 3
    iget-object v0, p0, Lcom/startapp/a3$a;->a:Lcom/startapp/a3;

    invoke-static {v0}, Lcom/startapp/a3;->b(Lcom/startapp/a3;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/startapp/a3$a;->a:Lcom/startapp/a3;

    invoke-static {v0}, Lcom/startapp/a3;->c(Lcom/startapp/a3;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/startapp/a3$a;->a:Lcom/startapp/a3;

    invoke-static {v0}, Lcom/startapp/a3;->d(Lcom/startapp/a3;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method
