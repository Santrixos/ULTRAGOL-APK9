.class public Lcom/startapp/c9;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/b9;


# direct methods
.method public constructor <init>(Lcom/startapp/b9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/c9;->a:Lcom/startapp/b9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/c9;->a:Lcom/startapp/b9;

    invoke-virtual {v0}, Lcom/startapp/b9;->c()V
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
