.class public Lcom/startapp/a7$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/a7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/a7;


# direct methods
.method public constructor <init>(Lcom/startapp/a7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/a7$b;->a:Lcom/startapp/a7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/a7$b;->a:Lcom/startapp/a7;

    .line 2
    iget-boolean v1, v0, Lcom/startapp/a7;->g:Z

    if-nez v1, :cond_2

    .line 4
    :try_start_0
    new-instance v1, Lcom/startapp/i4;

    sget-object v2, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {v1, v2}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed smart redirect hop info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-boolean v3, v0, Lcom/startapp/a7;->p:Z

    if-eqz v3, :cond_0

    const-string v3, "Page Finished"

    goto :goto_0

    :cond_0
    const-string v3, "Timeout"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    iput-object v2, v1, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Lcom/startapp/a7;->b()Lorg/json/JSONArray;

    move-result-object v2

    .line 8
    iput-object v2, v1, Lcom/startapp/i4;->f:Ljava/lang/Object;

    .line 9
    iget-object v2, v0, Lcom/startapp/a7;->f:Ljava/lang/String;

    .line 10
    iput-object v2, v1, Lcom/startapp/i4;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/startapp/i4;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 13
    invoke-static {v1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_1
    const/4 v1, 0x1

    .line 17
    :try_start_1
    iput-boolean v1, v0, Lcom/startapp/a7;->o:Z

    .line 18
    iget-object v1, v0, Lcom/startapp/a7;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/sdk/adsbase/a;->b(Landroid/content/Context;)V

    .line 19
    invoke-virtual {v0}, Lcom/startapp/a7;->a()V

    .line 20
    iget-boolean v1, v0, Lcom/startapp/a7;->k:Z

    if-eqz v1, :cond_1

    .line 21
    sget-object v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 22
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->R()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    iget-object v1, v0, Lcom/startapp/a7;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/startapp/a7;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/startapp/a7;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 25
    :cond_1
    iget-object v1, v0, Lcom/startapp/a7;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/startapp/a7;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/startapp/a7;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/startapp/sdk/adsbase/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_2
    iget-object v0, v0, Lcom/startapp/a7;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 29
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    return-void
.end method
