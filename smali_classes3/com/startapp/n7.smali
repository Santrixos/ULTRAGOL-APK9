.class public Lcom/startapp/n7;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Lcom/startapp/g7;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/startapp/g7;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/n7;->a:Lcom/startapp/g7;

    .line 3
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/n7;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v0

    .line 3
    iget-object v8, p0, Lcom/startapp/n7;->a:Lcom/startapp/g7;

    iget-wide v2, p0, Lcom/startapp/n7;->b:J

    sub-long v6, v0, v2

    .line 4
    invoke-virtual {v8}, Lcom/startapp/g7;->a()Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x4

    if-eqz p3, :cond_2

    .line 13
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    const-string v3, "Failure: "

    .line 15
    invoke-static {v3}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    const/4 v9, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    const-string v3, "Error: "

    .line 18
    invoke-static {v3}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/startapp/sdk/common/SDKException;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "Success"

    move-object v5, v2

    const/4 v9, 0x4

    .line 25
    :goto_0
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;->d()I

    move-result v0

    and-int/2addr v0, v9

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 26
    invoke-virtual {p3}, Lcom/startapp/sdk/common/SDKException;->b()Landroid/net/Uri;

    move-result-object p3

    goto :goto_1

    :cond_3
    move-object p3, v0

    :goto_1
    if-nez p3, :cond_4

    .line 28
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 31
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 33
    iget-object p1, v8, Lcom/startapp/g7;->c:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/startapp/h7;

    move-object v2, p2

    move-object v3, v8

    invoke-direct/range {v2 .. v7}, Lcom/startapp/h7;-><init>(Lcom/startapp/g7;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    if-ne v9, v1, :cond_6

    .line 42
    iget-object p1, v8, Lcom/startapp/g7;->c:Ljava/util/concurrent/Executor;

    iget-object p2, v8, Lcom/startapp/g7;->e:Ljava/lang/Runnable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    return-void
.end method
