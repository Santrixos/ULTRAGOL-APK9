.class public Lcom/startapp/ld$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/ld;->a(Ljava/lang/String;Lcom/startapp/wb$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic b:Landroid/webkit/WebView;

.field public final synthetic c:Lcom/startapp/wb$a;

.field public final synthetic d:Lcom/startapp/ld;


# direct methods
.method public constructor <init>(Lcom/startapp/ld;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/webkit/WebView;Lcom/startapp/wb$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/ld$b;->d:Lcom/startapp/ld;

    iput-object p2, p0, Lcom/startapp/ld$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/startapp/ld$b;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/startapp/ld$b;->c:Lcom/startapp/wb$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/ld$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/ld$b;->d:Lcom/startapp/ld;

    iget-object v1, p0, Lcom/startapp/ld$b;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/startapp/ld;->a(Landroid/webkit/WebView;)V

    .line 3
    iget-object v0, p0, Lcom/startapp/ld$b;->c:Lcom/startapp/wb$a;

    const/4 v1, 0x2

    const-string v2, "Unknown error"

    invoke-interface {v0, v1, v2}, Lcom/startapp/wb$a;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
