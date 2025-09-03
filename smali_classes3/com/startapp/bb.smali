.class public Lcom/startapp/bb;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/startapp/b3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lcom/startapp/b3<",
        "Ljava/lang/Throwable;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/startapp/x8;

.field public final b:Lcom/startapp/y3;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/startapp/c3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/c3<",
            "Ljava/lang/String;",
            "Lcom/startapp/o7$a;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/startapp/o7$a;

.field public f:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/startapp/x8;Lcom/startapp/y3;Ljava/lang/String;Lcom/startapp/c3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/x8;",
            "Lcom/startapp/y3;",
            "Ljava/lang/String;",
            "Lcom/startapp/c3<",
            "Ljava/lang/String;",
            "Lcom/startapp/o7$a;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/bb;->a:Lcom/startapp/x8;

    .line 3
    iput-object p2, p0, Lcom/startapp/bb;->b:Lcom/startapp/y3;

    .line 4
    iput-object p3, p0, Lcom/startapp/bb;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/startapp/bb;->d:Lcom/startapp/c3;

    return-void
.end method

.method public static a(Lcom/startapp/x8;Lcom/startapp/y3;Ljava/lang/String;Lcom/startapp/b3;)Lcom/startapp/o7$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/x8;",
            "Lcom/startapp/y3;",
            "Ljava/lang/String;",
            "Lcom/startapp/b3<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/startapp/o7$a;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/startapp/cb;

    invoke-direct {v0}, Lcom/startapp/cb;-><init>()V

    .line 37
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/startapp/x8;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 38
    iput-object p0, v0, Lcom/startapp/y0;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 39
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 42
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    :try_start_1
    invoke-virtual {p1, p2, v0, p3}, Lcom/startapp/y3;->a(Ljava/lang/String;Lcom/startapp/y0;Lcom/startapp/b3;)Lcom/startapp/o7$a;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 45
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;Lcom/startapp/c3;)Lcom/startapp/sdk/common/utils/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;",
            "Lcom/startapp/c3<",
            "Ljava/lang/String;",
            "Lcom/startapp/o7$a;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/startapp/sdk/common/utils/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p1, p2}, Lcom/startapp/bb;->a(Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p0, p1, p3}, Lcom/startapp/bb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/c3;)Z

    move-result p0

    .line 15
    new-instance p2, Lcom/startapp/sdk/common/utils/Pair;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/startapp/sdk/common/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static a(Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;)Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v1}, Lcom/startapp/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    .line 8
    invoke-static {p0}, Lcom/startapp/wb;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/startapp/c3;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/startapp/c3<",
            "Ljava/lang/String;",
            "Lcom/startapp/o7$a;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-static {p0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/startapp/sdk/components/ComponentLocator;->p()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/startapp/bb;

    .line 19
    invoke-virtual {p0}, Lcom/startapp/sdk/components/ComponentLocator;->q()Lcom/startapp/x8;

    move-result-object v2

    .line 20
    invoke-virtual {p0}, Lcom/startapp/sdk/components/ComponentLocator;->k()Lcom/startapp/y3;

    move-result-object p0

    invoke-direct {v1, v2, p0, p1, p2}, Lcom/startapp/bb;-><init>(Lcom/startapp/x8;Lcom/startapp/y3;Ljava/lang/String;Lcom/startapp/c3;)V

    .line 21
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 30
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 33
    invoke-interface {p2, p1, v0, p0}, Lcom/startapp/c3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    iput-object p1, p0, Lcom/startapp/bb;->f:Ljava/lang/Throwable;

    const/4 p1, 0x0

    return-object p1
.end method

.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/bb;->a:Lcom/startapp/x8;

    iget-object v1, p0, Lcom/startapp/bb;->b:Lcom/startapp/y3;

    iget-object v2, p0, Lcom/startapp/bb;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/startapp/bb;->a(Lcom/startapp/x8;Lcom/startapp/y3;Ljava/lang/String;Lcom/startapp/b3;)Lcom/startapp/o7$a;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/bb;->e:Lcom/startapp/o7$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lcom/startapp/bb;->d:Lcom/startapp/c3;

    if-eqz v1, :cond_0

    .line 8
    iget-object v2, p0, Lcom/startapp/bb;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/startapp/bb;->f:Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0, v3}, Lcom/startapp/c3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    iput-object v0, p0, Lcom/startapp/bb;->f:Ljava/lang/Throwable;

    .line 11
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    iget-object v0, p0, Lcom/startapp/bb;->d:Lcom/startapp/c3;

    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/startapp/bb;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/startapp/bb;->e:Lcom/startapp/o7$a;

    iget-object v3, p0, Lcom/startapp/bb;->f:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2, v3}, Lcom/startapp/c3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/startapp/bb;->d:Lcom/startapp/c3;

    if-eqz v1, :cond_1

    .line 16
    iget-object v2, p0, Lcom/startapp/bb;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/startapp/bb;->e:Lcom/startapp/o7$a;

    iget-object v4, p0, Lcom/startapp/bb;->f:Ljava/lang/Throwable;

    invoke-interface {v1, v2, v3, v4}, Lcom/startapp/c3;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_1
    throw v0
.end method
