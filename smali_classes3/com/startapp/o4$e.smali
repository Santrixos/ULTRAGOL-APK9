.class public Lcom/startapp/o4$e;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/o4;->a(Lcom/startapp/i4;Lcom/startapp/n4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/i4;

.field public final synthetic b:Lcom/startapp/k4;

.field public final synthetic c:Lcom/startapp/n4;

.field public final synthetic d:Lcom/startapp/o4;


# direct methods
.method public constructor <init>(Lcom/startapp/o4;Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/o4$e;->d:Lcom/startapp/o4;

    iput-object p2, p0, Lcom/startapp/o4$e;->a:Lcom/startapp/i4;

    iput-object p3, p0, Lcom/startapp/o4$e;->b:Lcom/startapp/k4;

    iput-object p4, p0, Lcom/startapp/o4$e;->c:Lcom/startapp/n4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/o4$e;->d:Lcom/startapp/o4;

    iget-object v1, p0, Lcom/startapp/o4$e;->a:Lcom/startapp/i4;

    iget-object v2, p0, Lcom/startapp/o4$e;->b:Lcom/startapp/k4;

    iget-object v3, p0, Lcom/startapp/o4$e;->c:Lcom/startapp/n4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/startapp/o4;->a:Lcom/startapp/l4;

    invoke-virtual {v0, v1, v2}, Lcom/startapp/l4;->a(Lcom/startapp/i4;Lcom/startapp/k4;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :catchall_0
    nop

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 13
    :goto_1
    invoke-interface {v3, v1, v0}, Lcom/startapp/n4;->a(Lcom/startapp/i4;I)V

    :cond_1
    return-void
.end method
