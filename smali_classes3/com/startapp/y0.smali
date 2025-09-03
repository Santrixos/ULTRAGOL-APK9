.class public abstract Lcom/startapp/y0;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field public static final g0:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:I

.field public M:I

.field public N:F

.field public O:Ljava/lang/Boolean;

.field public P:I

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public final Z:I

.field public a:Ljava/lang/String;

.field public a0:Ljava/lang/Long;

.field public b:Ljava/lang/String;

.field public b0:Ljava/lang/Integer;

.field public c:Ljava/lang/String;

.field public c0:Ljava/lang/Boolean;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d0:Ljava/lang/Boolean;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field public e0:Ljava/lang/Boolean;

.field public f:Ljava/lang/String;

.field public f0:Ljava/lang/Boolean;

.field public g:Lcom/startapp/t;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/Boolean;

.field public r:Ljava/lang/Boolean;

.field public s:Ljava/lang/String;

.field public t:Z

.field public u:I

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_0

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/16 v3, 0x1a

    if-lt v1, v3, :cond_1

    const/16 v3, 0x16

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-lt v1, v2, :cond_2

    const/4 v1, 0x3

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/startapp/y0;->g0:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "4.10.5"

    .line 10
    iput-object v0, p0, Lcom/startapp/y0;->c:Ljava/lang/String;

    .line 13
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/y0;->d:Ljava/util/Map;

    const-string v0, "android"

    .line 66
    iput-object v0, p0, Lcom/startapp/y0;->K:Ljava/lang/String;

    const/4 v0, 0x3

    .line 73
    iput v0, p0, Lcom/startapp/y0;->P:I

    .line 114
    iput p1, p0, Lcom/startapp/y0;->Z:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 175
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 176
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a()Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->a()Lcom/startapp/t;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/startapp/y0;->g:Lcom/startapp/t;

    .line 183
    :try_start_0
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    .line 184
    iget-object v0, v0, Lcom/startapp/sdk/components/ComponentLocator;->j:Lcom/startapp/y1;

    invoke-virtual {v0}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/d5;

    .line 185
    invoke-virtual {v0}, Lcom/startapp/d5;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/y0;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 187
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 188
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 189
    iget-object p1, p1, Lcom/startapp/sdk/components/ComponentLocator;->E:Lcom/startapp/y1;

    invoke-virtual {p1}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/adsbase/e;

    .line 190
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/e;->getAll()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/y0;->e:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 191
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/startapp/y0;->c(Landroid/content/Context;)V

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/startapp/y0;->b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/startapp/y0;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 16
    invoke-static {p2}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/startapp/y0;->e(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    .line 22
    invoke-static {p2}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 26
    :goto_1
    :try_start_3
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p2

    invoke-virtual {p2}, Lcom/startapp/sdk/components/ComponentLocator;->q()Lcom/startapp/x8;

    move-result-object p2

    .line 28
    invoke-virtual {p2, p0}, Lcom/startapp/x8;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 29
    iput-object p2, p0, Lcom/startapp/y0;->J:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    .line 30
    invoke-static {p2}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 34
    :goto_2
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/startapp/y0;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p2

    .line 36
    invoke-static {p2}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 40
    :goto_3
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/startapp/y0;->b(Landroid/content/Context;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    .line 42
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public a(Lcom/startapp/m8;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/startapp/sdk/common/SDKException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/startapp/y0;->e:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 46
    invoke-virtual {p1, v4, v3, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/startapp/y0;->a:Ljava/lang/String;

    const-string v3, "publisherId"

    .line 48
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 49
    iget-object v0, p0, Lcom/startapp/y0;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/startapp/y0;->a()Z

    move-result v3

    const-string v4, "productId"

    .line 50
    invoke-virtual {p1, v4, v0, v3, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 51
    iget-object v0, p0, Lcom/startapp/y0;->K:Ljava/lang/String;

    const-string v3, "os"

    .line 52
    invoke-virtual {p1, v3, v0, v1, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 53
    iget-object v0, p0, Lcom/startapp/y0;->c:Ljava/lang/String;

    const-string v3, "sdkVersion"

    .line 54
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    const/16 v0, 0x3ff

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "flavor"

    .line 56
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 57
    iget-object v0, p0, Lcom/startapp/y0;->d:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/startapp/y0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, ""

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/startapp/y0;->d:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "frameworksData"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/startapp/y0;->h:Ljava/lang/String;

    const-string v3, "packageId"

    .line 66
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 67
    iget-object v0, p0, Lcom/startapp/y0;->i:Ljava/lang/String;

    const-string v3, "installerPkg"

    .line 68
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 69
    iget-object v0, p0, Lcom/startapp/y0;->f:Ljava/lang/String;

    const-string v3, "age"

    .line 70
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 71
    iget-object v0, p0, Lcom/startapp/y0;->g:Lcom/startapp/t;

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, v0, Lcom/startapp/t;->a:Ljava/lang/String;

    const-string v3, "userAdvertisingId"

    .line 73
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 74
    iget-object v0, p0, Lcom/startapp/y0;->g:Lcom/startapp/t;

    .line 75
    iget-boolean v0, v0, Lcom/startapp/t;->c:Z

    if-eqz v0, :cond_3

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "limat"

    .line 77
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/startapp/y0;->g:Lcom/startapp/t;

    .line 79
    iget-object v0, v0, Lcom/startapp/t;->b:Ljava/lang/String;

    const-string v3, "advertisingIdSource"

    .line 80
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 81
    :cond_4
    iget-object v0, p0, Lcom/startapp/y0;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v3, "duid"

    .line 82
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/startapp/y0;->k:Ljava/lang/String;

    const-string v3, "model"

    .line 84
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 85
    iget-object v0, p0, Lcom/startapp/y0;->l:Ljava/lang/String;

    const-string v3, "manufacturer"

    .line 86
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 87
    iget-object v0, p0, Lcom/startapp/y0;->m:Ljava/lang/String;

    const-string v3, "deviceVersion"

    .line 88
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 89
    iget-object v0, p0, Lcom/startapp/y0;->n:Ljava/lang/String;

    const-string v3, "locale"

    .line 90
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 91
    iget-object v0, p0, Lcom/startapp/y0;->o:Ljava/lang/String;

    const-string v3, "localeList"

    .line 92
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 93
    iget-object v0, p0, Lcom/startapp/y0;->p:Ljava/lang/String;

    const-string v3, "inputLangs"

    .line 94
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 95
    iget-object v0, p0, Lcom/startapp/y0;->w:Ljava/lang/String;

    const-string v3, "isp"

    .line 96
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 97
    iget-object v0, p0, Lcom/startapp/y0;->x:Ljava/lang/String;

    const-string v3, "ispName"

    .line 98
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 99
    iget-object v0, p0, Lcom/startapp/y0;->y:Ljava/lang/String;

    const-string v3, "ispCarrId"

    .line 100
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 101
    iget-object v0, p0, Lcom/startapp/y0;->z:Ljava/lang/String;

    const-string v3, "ispCarrIdName"

    .line 102
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 103
    iget-object v0, p0, Lcom/startapp/y0;->A:Ljava/lang/String;

    const-string v3, "netOper"

    .line 104
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 105
    iget-object v0, p0, Lcom/startapp/y0;->B:Ljava/lang/String;

    const-string v3, "networkOperName"

    .line 106
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 107
    iget-object v0, p0, Lcom/startapp/y0;->C:Ljava/lang/String;

    const-string v3, "cid"

    .line 108
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 109
    iget-object v0, p0, Lcom/startapp/y0;->D:Ljava/lang/String;

    const-string v3, "lac"

    .line 110
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 111
    iget-object v0, p0, Lcom/startapp/y0;->E:Ljava/lang/String;

    const-string v3, "tac"

    .line 112
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 113
    iget-object v0, p0, Lcom/startapp/y0;->F:Ljava/lang/String;

    const-string v3, "blat"

    .line 114
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 115
    iget-object v0, p0, Lcom/startapp/y0;->G:Ljava/lang/String;

    const-string v3, "blon"

    .line 116
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    const-string v0, "subPublisherId"

    const/4 v3, 0x0

    .line 117
    invoke-virtual {p1, v0, v3, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    const-string v0, "subProductId"

    .line 118
    invoke-virtual {p1, v0, v3, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    const-string v0, "retryCount"

    .line 119
    invoke-virtual {p1, v0, v3, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 120
    iget-object v0, p0, Lcom/startapp/y0;->r:Ljava/lang/Boolean;

    const-string v3, "roaming"

    .line 121
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 122
    iget-object v0, p0, Lcom/startapp/y0;->s:Ljava/lang/String;

    const-string v3, "grid"

    .line 123
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 124
    iget-boolean v0, p0, Lcom/startapp/y0;->t:Z

    if-eqz v0, :cond_6

    const-string v0, "c5g"

    const-string v3, "1"

    .line 125
    invoke-virtual {p1, v0, v3, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 128
    :cond_6
    iget v0, p0, Lcom/startapp/y0;->u:I

    if-ltz v0, :cond_7

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "transport"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 130
    :cond_7
    iget-object v0, p0, Lcom/startapp/y0;->v:Ljava/lang/String;

    const-string v3, "silev"

    .line 131
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 132
    iget-object v0, p0, Lcom/startapp/y0;->H:Ljava/lang/String;

    const-string v3, "cellSignalLevel"

    .line 133
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 134
    iget-object v0, p0, Lcom/startapp/y0;->I:Ljava/lang/String;

    const-string v3, "cellTimingAdv"

    .line 135
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 136
    iget-object v0, p0, Lcom/startapp/y0;->q:Ljava/lang/Boolean;

    const-string v3, "outsource"

    .line 137
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 138
    iget v0, p0, Lcom/startapp/y0;->L:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "width"

    .line 139
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 140
    iget v0, p0, Lcom/startapp/y0;->M:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "height"

    .line 141
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 142
    iget v0, p0, Lcom/startapp/y0;->N:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, "density"

    .line 143
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 144
    iget-object v0, p0, Lcom/startapp/y0;->O:Ljava/lang/Boolean;

    const-string v3, "fgApp"

    .line 145
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 146
    iget v0, p0, Lcom/startapp/y0;->P:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sdkId"

    .line 147
    invoke-virtual {p1, v3, v0, v1, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 148
    iget-object v0, p0, Lcom/startapp/y0;->Q:Ljava/lang/String;

    const-string v3, "clientSessionId"

    .line 149
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 150
    iget-object v0, p0, Lcom/startapp/y0;->R:Ljava/lang/String;

    const-string v3, "appVersion"

    .line 151
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 152
    iget v0, p0, Lcom/startapp/y0;->S:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "appCode"

    .line 153
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 155
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "timeSinceBoot"

    .line 156
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 157
    iget-boolean v0, p0, Lcom/startapp/y0;->T:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "udbg"

    .line 158
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 159
    iget-boolean v0, p0, Lcom/startapp/y0;->U:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "root"

    .line 160
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 161
    iget-boolean v0, p0, Lcom/startapp/y0;->V:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "smltr"

    .line 162
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 163
    iget-boolean v0, p0, Lcom/startapp/y0;->W:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "isddbg"

    .line 164
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 165
    iget-object v0, p0, Lcom/startapp/y0;->X:Ljava/lang/String;

    const-string v3, "pas"

    .line 166
    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 167
    iget-object v0, p0, Lcom/startapp/y0;->Y:Ljava/lang/String;

    const-string v3, "prm"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 168
    iget-object v0, p0, Lcom/startapp/y0;->a0:Ljava/lang/Long;

    const-string v3, "free"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 169
    iget-object v0, p0, Lcom/startapp/y0;->c0:Ljava/lang/Boolean;

    const-string v3, "chr"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 170
    iget-object v0, p0, Lcom/startapp/y0;->b0:Ljava/lang/Integer;

    const-string v3, "blp"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 171
    iget-object v0, p0, Lcom/startapp/y0;->d0:Ljava/lang/Boolean;

    const-string v3, "hs"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 172
    iget-object v0, p0, Lcom/startapp/y0;->e0:Ljava/lang/Boolean;

    const-string v3, "lpm"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 173
    iget-object v0, p0, Lcom/startapp/y0;->f0:Ljava/lang/Boolean;

    const-string v3, "dm"

    invoke-virtual {p1, v3, v0, v2, v2}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 174
    iget-object v0, p0, Lcom/startapp/y0;->J:Ljava/lang/String;

    const-string v3, "rsc"

    invoke-virtual {p1, v3, v0, v2, v1}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/y0;->Y:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 10

    const-string v0, "scale"

    const-string v1, "level"

    const-string v2, "status"

    const/4 v3, 0x0

    .line 83
    :try_start_0
    iput-object v3, p0, Lcom/startapp/y0;->a0:Ljava/lang/Long;

    .line 85
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    .line 86
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/startapp/y0;->a0:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 90
    invoke-static {v4}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 94
    :try_start_1
    iput-object v3, p0, Lcom/startapp/y0;->c0:Ljava/lang/Boolean;

    .line 95
    iput-object v3, p0, Lcom/startapp/y0;->b0:Ljava/lang/Integer;

    .line 97
    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 99
    invoke-virtual {v7, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, -0x1

    if-eqz v8, :cond_3

    .line 100
    invoke-virtual {v7, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v8, 0x5

    if-ne v2, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 101
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/startapp/y0;->c0:Ljava/lang/Boolean;

    .line 104
    :cond_3
    invoke-virtual {v7, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    invoke-virtual {v7, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 106
    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v1, :cond_4

    if-lez v0, :cond_4

    mul-int/lit8 v1, v1, 0x64

    .line 109
    div-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/y0;->b0:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 114
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 118
    :cond_4
    :goto_3
    :try_start_2
    iput-object v3, p0, Lcom/startapp/y0;->d0:Ljava/lang/Boolean;

    const-string v0, "audio"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    instance-of v1, v0, Landroid/media/AudioManager;

    if-eqz v1, :cond_7

    .line 122
    check-cast v0, Landroid/media/AudioManager;

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_7

    .line 127
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 129
    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_6

    aget-object v4, v0, v2

    if-eqz v4, :cond_5

    .line 130
    sget-object v7, Lcom/startapp/y0;->g0:Ljava/util/Collection;

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 137
    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/y0;->d0:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    .line 141
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 145
    :cond_7
    :goto_6
    :try_start_3
    iput-object v3, p0, Lcom/startapp/y0;->e0:Ljava/lang/Boolean;

    const-string v0, "power"

    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    instance-of v1, v0, Landroid/os/PowerManager;

    if-eqz v1, :cond_8

    .line 149
    check-cast v0, Landroid/os/PowerManager;

    .line 151
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_8

    .line 152
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/y0;->e0:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 160
    :cond_8
    :goto_7
    :try_start_4
    iput-object v3, p0, Lcom/startapp/y0;->f0:Ljava/lang/Boolean;

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_9

    .line 164
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/startapp/y0;->f0:Ljava/lang/Boolean;

    goto :goto_8

    :cond_9
    const/16 v0, 0x10

    if-ne p1, v0, :cond_a

    .line 166
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/startapp/y0;->f0:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p1

    .line 169
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    sget-object v0, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    .line 2
    iget-object v0, v0, Lcom/startapp/t9;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/startapp/y0;->Q:Ljava/lang/String;

    .line 4
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/startapp/y0;->l:Ljava/lang/String;

    .line 6
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/startapp/y0;->k:Ljava/lang/String;

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/startapp/y0;->m:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2, p1}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getAge(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 11
    iput-object p2, p0, Lcom/startapp/y0;->f:Ljava/lang/String;

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p2

    .line 13
    iget-object p2, p2, Lcom/startapp/sdk/components/ComponentLocator;->o:Lcom/startapp/y1;

    invoke-virtual {p2}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapp/ga;

    .line 14
    invoke-virtual {p2}, Lcom/startapp/i2;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapp/fa;

    .line 15
    iget-object p2, p2, Lcom/startapp/fa;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/startapp/y0;->i:Ljava/lang/String;

    .line 17
    sget p2, Lcom/startapp/a0;->a:I

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, p2

    .line 20
    :goto_0
    iput-object v1, p0, Lcom/startapp/y0;->R:Ljava/lang/String;

    .line 21
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    const/4 v1, 0x0

    .line 23
    :goto_1
    iput v1, p0, Lcom/startapp/y0;->S:I

    .line 24
    invoke-static {p1}, Lcom/startapp/a0;->b(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/startapp/y0;->q:Ljava/lang/Boolean;

    .line 26
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v2, 0x11

    const-string v3, "adb_enabled"

    if-ge v1, v2, :cond_1

    .line 27
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_2

    .line 29
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :catchall_2
    :cond_2
    const/4 v1, 0x0

    .line 30
    :goto_3
    iput-boolean v1, p0, Lcom/startapp/y0;->T:Z

    .line 31
    :try_start_4
    invoke-static {p1}, Lcom/startapp/q8;->a(Landroid/content/Context;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_3
    nop

    .line 32
    :goto_4
    iput-boolean v0, p0, Lcom/startapp/y0;->U:Z

    .line 33
    invoke-static {p1}, Lcom/startapp/a0;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/y0;->V:Z

    const-string v0, "connectivity"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_3

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 35
    invoke-static {p1, v1}, Lcom/startapp/a0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_5

    :cond_3
    move-object v0, p2

    .line 39
    :goto_5
    iput-object v0, p0, Lcom/startapp/y0;->r:Ljava/lang/Boolean;

    .line 40
    invoke-static {p1}, Lcom/startapp/wb;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/startapp/y0;->W:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 44
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 46
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 47
    iput v1, p0, Lcom/startapp/y0;->L:I

    .line 48
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 49
    iput v1, p0, Lcom/startapp/y0;->M:I

    .line 50
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 51
    iput v0, p0, Lcom/startapp/y0;->N:F

    .line 52
    :cond_4
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->n()Lcom/startapp/c6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/i2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/b6;

    .line 55
    iget-object v2, v1, Lcom/startapp/b6;->a:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/startapp/y0;->n:Ljava/lang/String;

    .line 57
    iget-object v1, v1, Lcom/startapp/b6;->b:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/startapp/y0;->o:Ljava/lang/String;

    .line 59
    iget-object v1, v0, Lcom/startapp/sdk/components/ComponentLocator;->d:Lcom/startapp/y1;

    invoke-virtual {v1}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/x4;

    .line 60
    invoke-virtual {v1}, Lcom/startapp/i2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/w4;

    .line 61
    iget-object v1, v1, Lcom/startapp/w4;->a:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/startapp/y0;->p:Ljava/lang/String;

    .line 63
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->d()Lcom/startapp/sdk/adsbase/e;

    move-result-object v0

    const-string v1, "USER_CONSENT_PERSONALIZED_ADS_SERVING"

    .line 65
    invoke-virtual {v0, v1, p2}, Lcom/startapp/sdk/adsbase/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/y0;->X:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/startapp/y0;->d:Ljava/util/Map;

    const-string v2, "sharedPrefsWrappers"

    .line 68
    invoke-virtual {v0, v2, p2}, Lcom/startapp/sdk/adsbase/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_7

    .line 76
    :cond_5
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 78
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_6

    .line 82
    :catch_0
    :cond_6
    :goto_7
    invoke-static {p1}, Lcom/startapp/wb;->e(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/y0;->O:Ljava/lang/Boolean;

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/y0;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 2
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->c()Lcom/startapp/c0;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/startapp/c0;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 6
    iget-object v3, v0, Lcom/startapp/c0;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 7
    :try_start_0
    iget-object v1, v0, Lcom/startapp/c0;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 10
    iget-object v1, v0, Lcom/startapp/c0;->b:Landroid/content/SharedPreferences;

    const-string v4, "c88d4eab540fab77"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 13
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/startapp/y0;->a:Ljava/lang/String;

    .line 14
    iget-object v1, v0, Lcom/startapp/c0;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 17
    iget-object v3, v0, Lcom/startapp/c0;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 18
    :try_start_1
    iget-object v1, v0, Lcom/startapp/c0;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 21
    iget-object v1, v0, Lcom/startapp/c0;->b:Landroid/content/SharedPreferences;

    const-string v4, "2696a7f502faed4b"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 24
    iget-object v0, v0, Lcom/startapp/c0;->b:Landroid/content/SharedPreferences;

    const-string v1, "31721150b470a3b9"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 27
    :cond_3
    monitor-exit v3

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 28
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/startapp/y0;->b:Ljava/lang/String;

    .line 29
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/startapp/y0;->h:Ljava/lang/String;

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    const-string v0, "e105"

    :try_start_0
    const-string v1, "connectivity"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_4

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 5
    invoke-static {p1, v2}, Lcom/startapp/a0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "WIFI"

    if-eqz v2, :cond_5

    :try_start_1
    const-string v2, "e102"

    .line 7
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    .line 12
    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {p1}, Lcom/startapp/o7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 21
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 22
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MOBILE"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 28
    invoke-static {p1}, Lcom/startapp/o7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    const-string v0, "e100"

    .line 40
    :catch_0
    :cond_5
    :goto_1
    iput-object v0, p0, Lcom/startapp/y0;->s:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->u()Lcom/startapp/sa;

    move-result-object v0

    .line 45
    iget-object v0, v0, Lcom/startapp/sa;->h:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/startapp/y0;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/startapp/y0;->v:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->e()Lcom/startapp/c2;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    .line 51
    :try_start_2
    iget-object p1, p1, Lcom/startapp/c2;->e:Lcom/startapp/c2$a;

    if-eqz p1, :cond_6

    .line 52
    invoke-virtual {p1}, Lcom/startapp/c2$a;->a()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 55
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 56
    :cond_6
    :goto_2
    iput v0, p0, Lcom/startapp/y0;->u:I

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->t()Lcom/startapp/pa;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/startapp/i2;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/na;

    const/4 v0, 0x7

    .line 4
    invoke-virtual {p1, v0}, Lcom/startapp/na;->a(I)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    .line 5
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/startapp/y0;->w:Ljava/lang/String;

    const/16 v0, 0x9

    .line 7
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/startapp/y0;->x:Ljava/lang/String;

    const/16 v0, 0xf

    .line 9
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/startapp/y0;->y:Ljava/lang/String;

    const/16 v0, 0x10

    .line 11
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/startapp/y0;->z:Ljava/lang/String;

    :cond_0
    const/16 v0, 0xa

    .line 13
    invoke-virtual {p1, v0}, Lcom/startapp/na;->a(I)I

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v0, 0xb

    .line 14
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/startapp/y0;->A:Ljava/lang/String;

    const/16 v0, 0xc

    .line 16
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/startapp/y0;->B:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/startapp/y0;->C:Ljava/lang/String;

    const/4 v0, 0x3

    .line 20
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/startapp/y0;->D:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v1}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/startapp/y0;->E:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/startapp/y0;->F:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v2}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/startapp/y0;->G:Ljava/lang/String;

    const/16 v1, 0xd

    .line 28
    invoke-virtual {p1, v1}, Lcom/startapp/na;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/startapp/y0;->I:Ljava/lang/String;

    const/16 v1, 0xe

    .line 30
    invoke-virtual {p1, v1}, Lcom/startapp/na;->a(I)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-boolean v0, p0, Lcom/startapp/y0;->t:Z

    return-void
.end method
