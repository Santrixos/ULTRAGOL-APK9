.class public Lcom/startapp/k7;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/networkTest/startapp/ConnectivityTestListener;
.implements Lcom/startapp/networkTest/startapp/CoverageMapperManager$OnNetworkInfoResultListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/startapp/j4;Lcom/startapp/networkTest/results/BaseResult;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-object v2, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 4
    invoke-static {p2}, Lcom/startapp/k5;->b(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/startapp/wb;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance p2, Lcom/startapp/i4;

    invoke-direct {p2, p1}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lcom/startapp/i4;->h:Ljava/lang/Long;

    .line 8
    iput-object v2, p2, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Lcom/startapp/i4;->a()V

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Lcom/startapp/i4;

    sget-object v0, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {p1, v0}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v0, "NTS, can not encode result"

    .line 12
    iput-object v0, p1, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 14
    iput-object p2, p1, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/startapp/i4;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onConnectivityTestFinished(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onConnectivityTestResult(Lcom/startapp/networkTest/results/ConnectivityTestResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/startapp/j4;->p:Lcom/startapp/j4;

    invoke-virtual {p0, v0, p1}, Lcom/startapp/k7;->a(Lcom/startapp/j4;Lcom/startapp/networkTest/results/BaseResult;)V

    :cond_0
    return-void
.end method

.method public onLatencyTestResult(Lcom/startapp/networkTest/results/LatencyResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/startapp/j4;->q:Lcom/startapp/j4;

    invoke-virtual {p0, v0, p1}, Lcom/startapp/k7;->a(Lcom/startapp/j4;Lcom/startapp/networkTest/results/BaseResult;)V

    :cond_0
    return-void
.end method

.method public onNetworkInfoResult(Lcom/startapp/networkTest/results/NetworkInformationResult;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/startapp/j4;->r:Lcom/startapp/j4;

    invoke-virtual {p0, v0, p1}, Lcom/startapp/k7;->a(Lcom/startapp/j4;Lcom/startapp/networkTest/results/BaseResult;)V

    :cond_0
    return-void
.end method
