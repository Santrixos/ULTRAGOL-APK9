.class public Lcom/startapp/g7;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/g7$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lcom/startapp/i7;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/Runnable;

.field public final f:Lcom/startapp/n4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/startapp/i7;Ljava/util/concurrent/Executor;Lcom/startapp/d3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences;",
            "Lcom/startapp/i7;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/startapp/g7$a;

    invoke-direct {p1, p0}, Lcom/startapp/g7$a;-><init>(Lcom/startapp/g7;)V

    iput-object p1, p0, Lcom/startapp/g7;->e:Ljava/lang/Runnable;

    .line 10
    new-instance p1, Lcom/startapp/g7$b;

    invoke-direct {p1, p0}, Lcom/startapp/g7$b;-><init>(Lcom/startapp/g7;)V

    iput-object p1, p0, Lcom/startapp/g7;->f:Lcom/startapp/n4;

    .line 41
    iput-object p2, p0, Lcom/startapp/g7;->a:Landroid/content/SharedPreferences;

    .line 42
    iput-object p3, p0, Lcom/startapp/g7;->b:Lcom/startapp/i7;

    .line 43
    iput-object p4, p0, Lcom/startapp/g7;->c:Ljava/util/concurrent/Executor;

    .line 44
    iput-object p5, p0, Lcom/startapp/g7;->d:Lcom/startapp/d3;

    return-void
.end method


# virtual methods
.method public final a()Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/g7;->d:Lcom/startapp/d3;

    invoke-interface {v0}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(I)Z
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/startapp/g7;->a()Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;->a()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
