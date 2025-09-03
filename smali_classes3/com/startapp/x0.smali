.class public abstract Lcom/startapp/x0;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/startapp/v7;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/v7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/startapp/x0$a;

    invoke-direct {v0, p0}, Lcom/startapp/x0$a;-><init>(Lcom/startapp/x0;)V

    iput-object v0, p0, Lcom/startapp/x0;->d:Ljava/lang/Runnable;

    .line 11
    iput-object p1, p0, Lcom/startapp/x0;->a:Landroid/content/Context;

    .line 12
    new-instance p1, Lcom/startapp/x0$b;

    invoke-direct {p1, p0, p2}, Lcom/startapp/x0$b;-><init>(Lcom/startapp/x0;Lcom/startapp/v7;)V

    iput-object p1, p0, Lcom/startapp/x0;->b:Lcom/startapp/v7;

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/startapp/x0;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
