.class public Lcom/startapp/j9;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/j9$a;
    }
.end annotation


# static fields
.field public static final k:Z


# instance fields
.field public a:Landroid/os/Handler;

.field public b:J

.field public c:Landroid/content/Context;

.field public d:J

.field public e:Z

.field public f:Z

.field public g:[Ljava/lang/String;

.field public h:Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

.field public i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/startapp/j9$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->W()Z

    move-result v0

    sput-boolean v0, Lcom/startapp/j9;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/startapp/j9;->a:Landroid/os/Handler;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/startapp/j9;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/startapp/j9;->j:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-static {p1}, Lcom/startapp/j0;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/j9;->c:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lcom/startapp/j9;->g:[Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/startapp/j9;->h:Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 20
    iput-wide p4, p0, Lcom/startapp/j9;->b:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/startapp/j9;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/startapp/j9;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/j9;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lcom/startapp/j9;->b:J

    iget-wide v4, p0, Lcom/startapp/j9;->d:J

    sub-long/2addr v0, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/startapp/j9;->b:J

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/startapp/j9;->f:Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/startapp/j9;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/startapp/j9;->e:Z

    .line 8
    iget-object p2, p0, Lcom/startapp/j9;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    iput-boolean p1, p0, Lcom/startapp/j9;->f:Z

    const-wide/16 p1, 0x0

    .line 11
    iput-wide p1, p0, Lcom/startapp/j9;->d:J

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/j9;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    sget-boolean v0, Lcom/startapp/j9;->k:Z

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/startapp/j9;->b:J

    .line 4
    iget-boolean v2, p0, Lcom/startapp/j9;->f:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    .line 5
    iput-boolean v2, p0, Lcom/startapp/j9;->f:Z

    .line 7
    iget-boolean v3, p0, Lcom/startapp/j9;->e:Z

    if-nez v3, :cond_0

    .line 8
    iput-boolean v2, p0, Lcom/startapp/j9;->e:Z

    .line 11
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/startapp/j9;->d:J

    .line 12
    iget-object v2, p0, Lcom/startapp/j9;->a:Landroid/os/Handler;

    new-instance v3, Lcom/startapp/i9;

    invoke-direct {v3, p0}, Lcom/startapp/i9;-><init>(Lcom/startapp/j9;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0, v0}, Lcom/startapp/j9;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .line 14
    iget-object v0, p0, Lcom/startapp/j9;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/startapp/j9;->c:Landroid/content/Context;

    iget-object p2, p0, Lcom/startapp/j9;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/startapp/j9;->h:Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 17
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/startapp/h4;->a(Landroid/content/Context;Ljava/util/List;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/startapp/j9;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/j9$a;

    if-eqz p1, :cond_3

    .line 21
    iget-object p2, p0, Lcom/startapp/j9;->g:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    array-length v2, p2

    if-lez v2, :cond_1

    .line 22
    aget-object p2, p2, v1

    .line 23
    invoke-static {p2, v0}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {p1, v0}, Lcom/startapp/j9$a;->onSent(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object v1, p0, Lcom/startapp/j9;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/j9;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/startapp/j9;->h:Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    .line 30
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/startapp/sdk/adsbase/a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    :cond_3
    :goto_0
    return-void
.end method
