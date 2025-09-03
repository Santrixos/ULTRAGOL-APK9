.class public Lcom/startapp/q9$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/q9;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lcom/startapp/q9;


# direct methods
.method public constructor <init>(Lcom/startapp/q9;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/q9$a;->b:Lcom/startapp/q9;

    iput-object p2, p0, Lcom/startapp/q9$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/q9$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lcom/startapp/q9$a;->b:Lcom/startapp/q9;

    invoke-virtual {v0}, Lcom/startapp/q9;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/startapp/q9$a;->b:Lcom/startapp/q9;

    invoke-virtual {v1}, Lcom/startapp/q9;->a()V

    .line 4
    throw v0
.end method
