.class public Lcom/startapp/networkTest/startapp/NetworkTester$a$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/w7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/networkTest/startapp/NetworkTester$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:Landroid/os/Looper;

.field public final synthetic c:Lcom/startapp/d2;

.field public final synthetic d:Lcom/startapp/networkTest/startapp/NetworkTester$a;


# direct methods
.method public constructor <init>(Lcom/startapp/networkTest/startapp/NetworkTester$a;[ZLandroid/os/Looper;Lcom/startapp/d2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->d:Lcom/startapp/networkTest/startapp/NetworkTester$a;

    iput-object p2, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->a:[Z

    iput-object p3, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->b:Landroid/os/Looper;

    iput-object p4, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->c:Lcom/startapp/d2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->c:Lcom/startapp/d2;

    invoke-virtual {v0}, Lcom/startapp/d2;->b()V

    .line 2
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->b:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/startapp/networkTest/startapp/NetworkTester;->sInstance:Lcom/startapp/networkTest/startapp/NetworkTester;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/startapp/networkTest/startapp/NetworkTester;->mActiveThread:Ljava/lang/Thread;

    .line 4
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 7
    :cond_0
    sget-object v0, Lcom/startapp/networkTest/startapp/NetworkTester;->sInstance:Lcom/startapp/networkTest/startapp/NetworkTester;

    iget-object v0, v0, Lcom/startapp/networkTest/startapp/NetworkTester;->mConnectivityTestListener:Lcom/startapp/networkTest/startapp/ConnectivityTestListener;

    if-eqz v0, :cond_1

    .line 8
    new-instance v1, Lcom/startapp/g9;

    new-instance v2, Lcom/startapp/networkTest/startapp/NetworkTester$a$a$a;

    invoke-direct {v2, p0}, Lcom/startapp/networkTest/startapp/NetworkTester$a$a$a;-><init>(Lcom/startapp/networkTest/startapp/NetworkTester$a$a;)V

    invoke-direct {v1, v2}, Lcom/startapp/g9;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/startapp/networkTest/startapp/ConnectivityTestListener;->onConnectivityTestFinished(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->d:Lcom/startapp/networkTest/startapp/NetworkTester$a;

    iget-object v0, v0, Lcom/startapp/networkTest/startapp/NetworkTester$a;->b:Lcom/startapp/networkTest/startapp/NetworkTester$b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/startapp/networkTest/startapp/NetworkTester$b;->a(Z)V

    :goto_0
    return-void
.end method

.method public onConnectivityTestResult(Lcom/startapp/networkTest/results/ConnectivityTestResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->a:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->b:Landroid/os/Looper;

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/startapp/networkTest/startapp/NetworkTester;->sInstance:Lcom/startapp/networkTest/startapp/NetworkTester;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/startapp/networkTest/startapp/NetworkTester;->mActiveThread:Ljava/lang/Thread;

    .line 4
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 5
    iget-object p1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->d:Lcom/startapp/networkTest/startapp/NetworkTester$a;

    iget-object p1, p1, Lcom/startapp/networkTest/startapp/NetworkTester$a;->b:Lcom/startapp/networkTest/startapp/NetworkTester$b;

    invoke-interface {p1, v1}, Lcom/startapp/networkTest/startapp/NetworkTester$b;->a(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    .line 10
    aput-boolean v2, v0, v1

    if-eqz p1, :cond_2

    .line 11
    iget-boolean v0, p1, Lcom/startapp/networkTest/results/ConnectivityTestResult;->Success:Z

    .line 16
    :cond_2
    sget-object v0, Lcom/startapp/networkTest/startapp/NetworkTester;->sInstance:Lcom/startapp/networkTest/startapp/NetworkTester;

    iget-object v0, v0, Lcom/startapp/networkTest/startapp/NetworkTester;->mConnectivityTestListener:Lcom/startapp/networkTest/startapp/ConnectivityTestListener;

    if-eqz v0, :cond_3

    .line 17
    invoke-interface {v0, p1}, Lcom/startapp/networkTest/startapp/ConnectivityTestListener;->onConnectivityTestResult(Lcom/startapp/networkTest/results/ConnectivityTestResult;)V

    :cond_3
    return-void
.end method

.method public onLatencyTestResult(Lcom/startapp/networkTest/results/LatencyResult;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->a:[Z

    const/4 v1, 0x1

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->b:Landroid/os/Looper;

    if-eqz p1, :cond_0

    .line 3
    sget-object v0, Lcom/startapp/networkTest/startapp/NetworkTester;->sInstance:Lcom/startapp/networkTest/startapp/NetworkTester;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/startapp/networkTest/startapp/NetworkTester;->mActiveThread:Ljava/lang/Thread;

    .line 4
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 5
    iget-object p1, p0, Lcom/startapp/networkTest/startapp/NetworkTester$a$a;->d:Lcom/startapp/networkTest/startapp/NetworkTester$a;

    iget-object p1, p1, Lcom/startapp/networkTest/startapp/NetworkTester$a;->b:Lcom/startapp/networkTest/startapp/NetworkTester$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/startapp/networkTest/startapp/NetworkTester$b;->a(Z)V

    :cond_0
    return-void

    .line 10
    :cond_1
    aput-boolean v1, v0, v1

    if-eqz p1, :cond_2

    .line 11
    iget-boolean v0, p1, Lcom/startapp/networkTest/results/P3TestResult;->Success:Z

    .line 16
    :cond_2
    sget-object v0, Lcom/startapp/networkTest/startapp/NetworkTester;->sInstance:Lcom/startapp/networkTest/startapp/NetworkTester;

    iget-object v0, v0, Lcom/startapp/networkTest/startapp/NetworkTester;->mConnectivityTestListener:Lcom/startapp/networkTest/startapp/ConnectivityTestListener;

    if-eqz v0, :cond_3

    .line 17
    invoke-interface {v0, p1}, Lcom/startapp/networkTest/startapp/ConnectivityTestListener;->onLatencyTestResult(Lcom/startapp/networkTest/results/LatencyResult;)V

    :cond_3
    return-void
.end method
