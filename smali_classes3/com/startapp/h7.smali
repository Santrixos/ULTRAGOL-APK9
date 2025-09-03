.class public Lcom/startapp/h7;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Lcom/startapp/g7;


# direct methods
.method public constructor <init>(Lcom/startapp/g7;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/h7;->d:Lcom/startapp/g7;

    iput-object p2, p0, Lcom/startapp/h7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/startapp/h7;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/startapp/h7;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startapp/h7;->d:Lcom/startapp/g7;

    iget-object v2, p0, Lcom/startapp/h7;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/startapp/h7;->b:Ljava/lang/String;

    iget-wide v6, p0, Lcom/startapp/h7;->c:J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    iget-object v1, v0, Lcom/startapp/g7;->b:Lcom/startapp/i7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v7}, Lcom/startapp/i7;->a(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Lcom/startapp/g7;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
