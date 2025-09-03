.class public Lcom/startapp/j3;
.super Lcom/startapp/x0;
.source "Sta"


# instance fields
.field public final e:Lcom/startapp/sdk/adsbase/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/e;Lcom/startapp/v7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/startapp/x0;-><init>(Landroid/content/Context;Lcom/startapp/v7;)V

    .line 3
    iput-object p2, p0, Lcom/startapp/j3;->e:Lcom/startapp/sdk/adsbase/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    sget-object v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 3
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->g()Lcom/startapp/sdk/adsbase/remoteconfig/BluetoothConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/BluetoothConfig;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 4
    new-instance v2, Lcom/startapp/n1;

    iget-object v3, p0, Lcom/startapp/x0;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/startapp/x0;->b:Lcom/startapp/v7;

    invoke-direct {v2, v3, v4}, Lcom/startapp/n1;-><init>(Landroid/content/Context;Lcom/startapp/v7;)V

    .line 6
    new-instance v3, Lcom/startapp/j3$a;

    invoke-direct {v3, p0, v2}, Lcom/startapp/j3$a;-><init>(Lcom/startapp/j3;Lcom/startapp/n1;)V

    .line 7
    iget-object v4, p0, Lcom/startapp/x0;->c:Landroid/os/Handler;

    invoke-virtual {v4, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    invoke-virtual {p0}, Lcom/startapp/j3;->b()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/startapp/n1;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 12
    iget-object v0, p0, Lcom/startapp/x0;->b:Lcom/startapp/v7;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/startapp/v7;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final b()Z
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/startapp/j3;->e:Lcom/startapp/sdk/adsbase/e;

    const-string v3, "lastBtDiscoveringTime"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/startapp/sdk/adsbase/e;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3
    sget-object v2, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 4
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->g()Lcom/startapp/sdk/adsbase/remoteconfig/BluetoothConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/BluetoothConfig;->a()I

    move-result v2

    int-to-long v6, v2

    const-wide/32 v8, 0xea60

    mul-long v6, v6, v8

    sub-long v4, v0, v4

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 8
    iget-object v4, p0, Lcom/startapp/j3;->e:Lcom/startapp/sdk/adsbase/e;

    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object v4

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object v5, v4, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    :cond_1
    return v2
.end method
