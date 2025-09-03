.class public Lcom/startapp/o5;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/startapp/o5;->a:Z

    .line 7
    iput-object p2, p0, Lcom/startapp/o5;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public closeSplash()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/startapp/o5;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/startapp/o5;->a:Z

    .line 4
    iget-object v0, p0, Lcom/startapp/o5;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
