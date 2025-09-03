.class public Lcom/startapp/sa;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sa$b;,
        Lcom/startapp/sa$d;,
        Lcom/startapp/sa$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/startapp/r3;

.field public final c:Lcom/startapp/sdk/adsbase/e;

.field public final d:Lcom/startapp/e2;

.field public final e:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/startapp/sa$c;

.field public final g:D

.field public volatile h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/r3;Lcom/startapp/sdk/adsbase/e;Lcom/startapp/e2;Lcom/startapp/d3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapp/r3;",
            "Lcom/startapp/sdk/adsbase/e;",
            "Lcom/startapp/e2;",
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/sa;->g:D

    const-string v0, "e106"

    .line 4
    iput-object v0, p0, Lcom/startapp/sa;->h:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/startapp/sa;->a:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/startapp/sa;->b:Lcom/startapp/r3;

    .line 21
    iput-object p3, p0, Lcom/startapp/sa;->c:Lcom/startapp/sdk/adsbase/e;

    .line 22
    iput-object p4, p0, Lcom/startapp/sa;->d:Lcom/startapp/e2;

    .line 23
    iput-object p5, p0, Lcom/startapp/sa;->e:Lcom/startapp/d3;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/startapp/sa$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/startapp/sa$c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startapp/sa;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-ge v1, v2, :cond_0

    .line 4
    new-instance v1, Lcom/startapp/sa$d;

    invoke-direct {v1, p0, v0, p1}, Lcom/startapp/sa$d;-><init>(Lcom/startapp/sa;Landroid/telephony/TelephonyManager;Ljava/lang/Class;)V

    return-object v1

    .line 6
    :cond_0
    new-instance v1, Lcom/startapp/sa$b;

    invoke-direct {v1, p0, v0, p1}, Lcom/startapp/sa$b;-><init>(Lcom/startapp/sa;Landroid/telephony/TelephonyManager;Ljava/lang/Class;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/startapp/sa;->d:Lcom/startapp/e2;

    invoke-virtual {v0}, Lcom/startapp/e2;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/startapp/sa;->e:Lcom/startapp/d3;

    invoke-interface {v0}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public a(Lcom/startapp/j4;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/j4;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/startapp/sa;->a()Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 41
    iget-object v2, p0, Lcom/startapp/sa;->c:Lcom/startapp/sdk/adsbase/e;

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/e;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 43
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_0

    .line 47
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v3}, Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;->a(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyDataConfig;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyDataConfig;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    invoke-virtual {v5}, Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyDataConfig;->a()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 52
    iget-object v7, p1, Lcom/startapp/j4;->a:Ljava/lang/String;

    .line 53
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    invoke-virtual {v5}, Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyDataConfig;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v5

    :goto_1
    if-nez v1, :cond_4

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    :cond_4
    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method public a(Landroid/telephony/SignalStrength;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 15
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sa;->h:Ljava/lang/String;

    goto :goto_0

    .line 17
    :cond_1
    const-class v0, Landroid/telephony/SignalStrength;

    const-string v1, "getLevel"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sa;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p1, "e105"

    .line 32
    iput-object p1, p0, Lcom/startapp/sa;->h:Ljava/lang/String;

    goto :goto_0

    :catch_0
    const-string p1, "e104"

    .line 33
    iput-object p1, p0, Lcom/startapp/sa;->h:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 7

    .line 10
    invoke-virtual {p0}, Lcom/startapp/sa;->a()Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 12
    iget-wide v2, p0, Lcom/startapp/sa;->g:D

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;->b()D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/TelephonyMetadata;->a()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sa;->b:Lcom/startapp/r3;

    new-instance v1, Lcom/startapp/sa$a;

    invoke-direct {v1, p0}, Lcom/startapp/sa$a;-><init>(Lcom/startapp/sa;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
