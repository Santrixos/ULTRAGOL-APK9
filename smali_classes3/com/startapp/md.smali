.class public Lcom/startapp/md;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->isUiContext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/md;->a:Landroid/content/Context;

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/startapp/md;->a:Landroid/content/Context;

    .line 16
    :goto_1
    invoke-virtual {p0}, Lcom/startapp/md;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/startapp/md$a;

    invoke-direct {v1, p0}, Lcom/startapp/md$a;-><init>(Lcom/startapp/md;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public b()Landroid/webkit/WebView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/md;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 9
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/startapp/md;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/startapp/md;->b:Landroid/webkit/WebView;

    .line 16
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lcom/startapp/md$a;

    invoke-direct {v2, p0}, Lcom/startapp/md$a;-><init>(Lcom/startapp/md;)V

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    :goto_0
    return-object v0
.end method
