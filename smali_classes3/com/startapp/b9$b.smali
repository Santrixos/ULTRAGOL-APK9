.class public Lcom/startapp/b9$b;
.super Lcom/startapp/l2;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/b9;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/startapp/d3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/b9;


# direct methods
.method public constructor <init>(Lcom/startapp/b9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/b9$b;->a:Lcom/startapp/b9;

    invoke-direct {p0}, Lcom/startapp/l2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/b9$b;->a:Lcom/startapp/b9;

    invoke-virtual {v0, p1}, Lcom/startapp/b9;->a(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
