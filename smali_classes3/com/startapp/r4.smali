.class public Lcom/startapp/r4;
.super Lcom/startapp/y0;
.source "Sta"


# instance fields
.field public final h0:Lcom/startapp/i4;

.field public i0:Ljava/lang/String;

.field public j0:Ljava/lang/String;

.field public k0:Ljava/lang/String;

.field public l0:Ljava/lang/String;

.field public m0:Ljava/lang/String;

.field public n0:Ljava/lang/String;

.field public o0:Ljava/lang/String;

.field public p0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startapp/i4;)V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/startapp/y0;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/startapp/r4;->h0:Lcom/startapp/i4;

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/m8;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/startapp/sdk/common/SDKException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/startapp/y0;->a(Lcom/startapp/m8;)V

    .line 3
    iget-object v0, p0, Lcom/startapp/r4;->h0:Lcom/startapp/i4;

    .line 4
    iget-object v1, v0, Lcom/startapp/i4;->h:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/startapp/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_0
    sget-object v2, Lcom/startapp/a;->b:Ljava/lang/String;

    const/4 v3, 0x1

    .line 6
    invoke-virtual {p1, v2, v1, v3, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 7
    sget-object v2, Lcom/startapp/a;->c:Ljava/lang/String;

    .line 8
    invoke-static {v1}, Lcom/startapp/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1, v2, v1, v3, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 10
    iget-object v1, v0, Lcom/startapp/i4;->a:Lcom/startapp/j4;

    .line 11
    iget-object v1, v1, Lcom/startapp/j4;->a:Ljava/lang/String;

    const-string v2, "category"

    .line 12
    invoke-virtual {p1, v2, v1, v3, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 13
    iget-object v1, v0, Lcom/startapp/i4;->d:Ljava/lang/String;

    const-string v2, "value"

    const/4 v4, 0x0

    .line 14
    invoke-virtual {p1, v2, v1, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 15
    iget-object v1, v0, Lcom/startapp/i4;->g:Ljava/lang/String;

    const-string v2, "d"

    .line 16
    invoke-virtual {p1, v2, v1, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 17
    iget-object v1, v0, Lcom/startapp/i4;->i:Ljava/lang/String;

    const-string v2, "appActivity"

    .line 18
    invoke-virtual {p1, v2, v1, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 19
    iget-object v1, v0, Lcom/startapp/i4;->e:Ljava/lang/String;

    const-string v2, "details"

    .line 20
    invoke-virtual {p1, v2, v1, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 21
    iget-object v1, v0, Lcom/startapp/i4;->f:Ljava/lang/Object;

    const-string v2, "details_json"

    .line 22
    invoke-virtual {p1, v2, v1, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 23
    iget-boolean v0, v0, Lcom/startapp/i4;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isService"

    .line 24
    invoke-virtual {p1, v1, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 25
    iget-object v0, p0, Lcom/startapp/r4;->i0:Ljava/lang/String;

    const-string v1, "orientation"

    .line 26
    invoke-virtual {p1, v1, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 27
    iget-object v0, p0, Lcom/startapp/r4;->j0:Ljava/lang/String;

    const-string v1, "usedRam"

    .line 28
    invoke-virtual {p1, v1, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 29
    iget-object v0, p0, Lcom/startapp/r4;->k0:Ljava/lang/String;

    const-string v1, "freeRam"

    .line 30
    invoke-virtual {p1, v1, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    const-string v0, "sessionTime"

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v0, v1, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 32
    iget-object v0, p0, Lcom/startapp/r4;->l0:Ljava/lang/String;

    const-string v2, "cellScanRes"

    .line 33
    invoke-virtual {p1, v2, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 34
    iget-object v0, p0, Lcom/startapp/r4;->m0:Ljava/lang/String;

    const-string v2, "sens"

    .line 35
    invoke-virtual {p1, v2, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 36
    iget-object v0, p0, Lcom/startapp/r4;->n0:Ljava/lang/String;

    const-string v2, "bt"

    .line 37
    invoke-virtual {p1, v2, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 38
    iget-object v0, p0, Lcom/startapp/r4;->o0:Ljava/lang/String;

    const-string v2, "packagingType"

    .line 39
    invoke-virtual {p1, v2, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 40
    invoke-static {}, Lcom/startapp/sdk/adsbase/SimpleTokenUtils;->a()Lcom/startapp/sdk/common/utils/Pair;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/startapp/sdk/adsbase/SimpleTokenUtils;->b()Lcom/startapp/sdk/common/utils/Pair;

    move-result-object v2

    .line 42
    iget-object v5, v0, Lcom/startapp/sdk/common/utils/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Lcom/startapp/sdk/common/utils/Pair;->second:Ljava/lang/Object;

    .line 43
    invoke-virtual {p1, v5, v0, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 44
    iget-object v0, v2, Lcom/startapp/sdk/common/utils/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v2, Lcom/startapp/sdk/common/utils/Pair;->second:Ljava/lang/Object;

    .line 45
    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 46
    iget-object v0, p0, Lcom/startapp/r4;->p0:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 49
    invoke-virtual {p1, v5, v2, v4, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_1

    :cond_1
    const-string v0, "rcd"

    .line 50
    invoke-virtual {p1, v0, v1, v4, v4}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startapp/y0;->b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 6
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    const-string p2, "landscape"

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    const-string p2, "portrait"

    goto :goto_0

    :cond_1
    const-string p2, "undefined"

    .line 15
    :goto_0
    iput-object p2, p0, Lcom/startapp/r4;->i0:Ljava/lang/String;

    const/4 p2, 0x0

    .line 16
    filled-new-array {p2, p2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "activity"

    .line 19
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_4

    .line 21
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 23
    invoke-virtual {p1, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 24
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 26
    sget p1, Lcom/startapp/a0;->a:I

    .line 27
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt p1, v4, :cond_2

    .line 28
    iget-wide p1, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_4

    .line 29
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-wide v3, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long/2addr p1, v3

    div-long/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 33
    const-class p2, Ljava/lang/SecurityException;

    invoke-static {p1, p2}, Lcom/startapp/wb;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_4

    const-class p2, Landroid/os/RemoteException;

    invoke-static {p1, p2}, Lcom/startapp/wb;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 39
    :cond_3
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 40
    :cond_4
    :goto_1
    aget-object p1, v1, v2

    .line 41
    iput-object p1, p0, Lcom/startapp/r4;->k0:Ljava/lang/String;

    .line 42
    aget-object p1, v1, v0

    .line 43
    iput-object p1, p0, Lcom/startapp/r4;->j0:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/r4;->h0:Lcom/startapp/i4;

    invoke-virtual {v0}, Lcom/startapp/i4;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
