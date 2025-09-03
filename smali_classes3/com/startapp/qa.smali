.class public Lcom/startapp/qa;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/sa;


# direct methods
.method public constructor <init>(Lcom/startapp/sa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/qa;->a:Lcom/startapp/sa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startapp/qa;->a:Lcom/startapp/sa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/startapp/sa;->a()Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/startapp/sa;->f:Lcom/startapp/sa$c;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/startapp/sa;->a(Ljava/lang/Class;)Lcom/startapp/sa$c;

    move-result-object v1

    iput-object v1, v0, Lcom/startapp/sa;->f:Lcom/startapp/sa$c;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcom/startapp/sa$c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    .line 15
    invoke-virtual {v0, v2}, Lcom/startapp/sa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    invoke-static {v1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
