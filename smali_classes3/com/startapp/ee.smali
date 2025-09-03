.class public abstract Lcom/startapp/ee;
.super Landroid/os/AsyncTask;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/ee$b;,
        Lcom/startapp/ee$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/startapp/ee$a;

.field public final b:Lcom/startapp/ee$b;


# direct methods
.method public constructor <init>(Lcom/startapp/ee$b;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/startapp/ee;->b:Lcom/startapp/ee$b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/startapp/ee;->a:Lcom/startapp/ee$a;

    if-eqz p1, :cond_0

    check-cast p1, Lcom/startapp/ke;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, Lcom/startapp/ke;->c:Lcom/startapp/ee;

    .line 2
    iget-object v0, p1, Lcom/startapp/ke;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/ee;

    iput-object v0, p1, Lcom/startapp/ke;->c:Lcom/startapp/ee;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/startapp/ke;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/startapp/ee;->a(Ljava/lang/String;)V

    return-void
.end method
