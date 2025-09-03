.class public Lcom/startapp/s8;
.super Lcom/startapp/v8;
.source "Sta"


# instance fields
.field public c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startapp/v8;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/startapp/s8;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/startapp/s8;->c:Landroid/content/BroadcastReceiver;

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Landroid/content/Context;Lcom/startapp/x8;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startapp/s8;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/startapp/s8$a;

    invoke-direct {v0, p0, p2}, Lcom/startapp/s8$a;-><init>(Lcom/startapp/s8;Lcom/startapp/x8;)V

    iput-object v0, p0, Lcom/startapp/s8;->c:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/startapp/v8;->a:Ljava/lang/String;

    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/startapp/s8;

    if-eq v1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/startapp/s8;

    .line 3
    iget-object v0, p0, Lcom/startapp/s8;->c:Landroid/content/BroadcastReceiver;

    iget-object p1, p1, Lcom/startapp/s8;->c:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p1}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/startapp/s8;->c:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
