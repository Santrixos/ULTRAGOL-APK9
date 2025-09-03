.class public Lcom/startapp/b9$e;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/b9;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/StackTraceElement;

.field public final synthetic b:I

.field public final synthetic c:Lcom/startapp/b9;


# direct methods
.method public constructor <init>(Lcom/startapp/b9;[Ljava/lang/StackTraceElement;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/b9$e;->c:Lcom/startapp/b9;

    iput-object p2, p0, Lcom/startapp/b9$e;->a:[Ljava/lang/StackTraceElement;

    iput p3, p0, Lcom/startapp/b9$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/b9$e;->c:Lcom/startapp/b9;

    iget-object v1, p0, Lcom/startapp/b9$e;->a:[Ljava/lang/StackTraceElement;

    iget v2, p0, Lcom/startapp/b9$e;->b:I

    .line 2
    invoke-virtual {v0}, Lcom/startapp/b9;->a()Lcom/startapp/sdk/adsbase/remoteconfig/RcdTargets;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 8
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6, v2}, Lcom/startapp/b9;->a(Lcom/startapp/sdk/adsbase/remoteconfig/RcdTargets;Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/startapp/b9;->c:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Lcom/startapp/b9;->j:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
