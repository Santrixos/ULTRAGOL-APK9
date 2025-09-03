.class public Lcom/startapp/md$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/md;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/md;


# direct methods
.method public constructor <init>(Lcom/startapp/md;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/md$a;->a:Lcom/startapp/md;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/md$a;->a:Lcom/startapp/md;

    .line 2
    iget-object v1, v0, Lcom/startapp/md;->b:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, v0, Lcom/startapp/md;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/startapp/md;->b:Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
