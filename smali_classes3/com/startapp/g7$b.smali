.class public Lcom/startapp/g7$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/n4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/g7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/g7;


# direct methods
.method public constructor <init>(Lcom/startapp/g7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/g7$b;->a:Lcom/startapp/g7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/i4;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1
    iget-object p2, p0, Lcom/startapp/g7$b;->a:Lcom/startapp/g7;

    iget-object p2, p2, Lcom/startapp/g7;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/startapp/g7$b$a;

    invoke-direct {v0, p0, p1}, Lcom/startapp/g7$b$a;-><init>(Lcom/startapp/g7$b;Lcom/startapp/i4;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
