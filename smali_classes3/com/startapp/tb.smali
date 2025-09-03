.class public Lcom/startapp/tb;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/startapp/ub;


# direct methods
.method public constructor <init>(Lcom/startapp/ub;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/tb;->b:Lcom/startapp/ub;

    iput-object p2, p0, Lcom/startapp/tb;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/tb;->b:Lcom/startapp/ub;

    iget-object v1, p0, Lcom/startapp/tb;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/ub;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
