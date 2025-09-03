.class public Lcom/startapp/ld$c;
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

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic e:Lcom/startapp/ld;


# direct methods
.method public constructor <init>(Lcom/startapp/ld;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/webkit/WebView;Lcom/startapp/wb$a;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/ld$c;->e:Lcom/startapp/ld;

    iput-object p2, p0, Lcom/startapp/ld$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/startapp/ld$c;->b:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/startapp/ld$c;->c:Lcom/startapp/wb$a;

    iput-object p5, p0, Lcom/startapp/ld$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startapp/ld$c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/ld$c;->e:Lcom/startapp/ld;

    iget-object v1, p0, Lcom/startapp/ld$c;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/startapp/ld;->a(Landroid/webkit/WebView;)V

    .line 3
    iget-object v2, p0, Lcom/startapp/ld$c;->c:Lcom/startapp/wb$a;

    iget-object v0, p0, Lcom/startapp/ld$c;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v6

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/startapp/wb$a;->a(ZJJZ)V

    :cond_0
    return-void
.end method
