.class public abstract Lcom/startapp/t0;
.super Lcom/startapp/sdk/adsbase/b;
.source "Sta"


# instance fields
.field public g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/startapp/sdk/adsbase/model/GetAdRequest;

.field public j:I

.field public final k:Z

.field public l:Lcom/startapp/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/Ad;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startapp/sdk/adsbase/b;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/Ad;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/startapp/t0;->g:Ljava/util/Set;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/startapp/t0;->h:Ljava/util/Set;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/startapp/t0;->j:I

    .line 13
    iput-boolean p6, p0, Lcom/startapp/t0;->k:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 7

    const-string v0, "@adId@"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "No response"

    .line 2
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    :cond_0
    return v1

    .line 8
    :cond_1
    instance-of v2, p1, Lcom/startapp/o7$a;

    if-nez v2, :cond_3

    .line 9
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "Unknown error"

    .line 10
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    :cond_2
    return v1

    .line 16
    :cond_3
    check-cast p1, Lcom/startapp/o7$a;

    .line 17
    iget-object v2, p1, Lcom/startapp/o7$a;->a:Ljava/lang/String;

    .line 18
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 21
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    if-nez p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/startapp/t0;->i:Lcom/startapp/sdk/adsbase/model/GetAdRequest;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Video isn\'t available"

    .line 23
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string p1, "Empty Ad"

    .line 25
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    :cond_5
    :goto_0
    return v1

    .line 26
    :cond_6
    sget-object v4, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 27
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->H()Z

    move-result v4

    .line 29
    invoke-static {v2, v0, v0}, Lcom/startapp/wb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 37
    new-instance v5, Lcom/startapp/m;

    iget-boolean v6, p0, Lcom/startapp/t0;->k:Z

    invoke-direct {v5, v0, p1, v6, v4}, Lcom/startapp/m;-><init>(Ljava/lang/String;Lcom/startapp/o7$a;ZZ)V

    iput-object v5, p0, Lcom/startapp/t0;->l:Lcom/startapp/m;

    .line 40
    :cond_7
    iget p1, p0, Lcom/startapp/t0;->j:I

    invoke-static {v2, p1}, Lcom/startapp/f0;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz v4, :cond_8

    .line 42
    iget-object v4, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    iget v5, p0, Lcom/startapp/t0;->j:I

    iget-object v6, p0, Lcom/startapp/t0;->g:Ljava/util/Set;

    invoke-static {v4, p1, v5, v6, v3}, Lcom/startapp/f0;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    .line 44
    :goto_1
    iget-object v5, p0, Lcom/startapp/t0;->l:Lcom/startapp/m;

    if-eqz v5, :cond_9

    .line 45
    iput-boolean v4, v5, Lcom/startapp/m;->f:Z

    :cond_9
    if-eqz v4, :cond_a

    .line 46
    new-instance p1, Lcom/startapp/e0;

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-direct {p1, v2, v3}, Lcom/startapp/e0;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/startapp/e0;->a()V

    goto :goto_2

    .line 48
    :cond_a
    iget-object v3, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    check-cast v3, Lcom/startapp/sdk/adsbase/HtmlAd;

    .line 49
    invoke-virtual {v3, p1}, Lcom/startapp/sdk/adsbase/HtmlAd;->a(Ljava/util/List;)V

    .line 50
    invoke-virtual {v3, v2}, Lcom/startapp/sdk/adsbase/HtmlAd;->c(Ljava/lang/String;)V

    .line 53
    :goto_2
    iget-object p1, p0, Lcom/startapp/t0;->l:Lcom/startapp/m;

    if-eqz p1, :cond_b

    .line 54
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v2

    .line 55
    iput-wide v2, p1, Lcom/startapp/m;->g:J

    :cond_b
    if-eqz v4, :cond_c

    .line 56
    invoke-virtual {p0}, Lcom/startapp/t0;->f()V

    .line 59
    iget p1, p0, Lcom/startapp/t0;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/startapp/t0;->j:I

    .line 60
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/b;->b()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_c
    return v0

    :catchall_0
    move-exception p1

    .line 65
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    return v1
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/startapp/sdk/adsbase/Ad$AdState;->READY:Lcom/startapp/sdk/adsbase/Ad$AdState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/startapp/sdk/adsbase/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/sdk/adsbase/Ad$AdState;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/startapp/sdk/adsbase/Ad;->setState(Lcom/startapp/sdk/adsbase/Ad$AdState;)V

    return-void
.end method

.method public b(Lcom/startapp/sdk/adsbase/model/GetAdRequest;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnReceiveResponseBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "adHashcode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adResult"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/a6;->a(Landroid/content/Context;)Lcom/startapp/a6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/a6;->a(Landroid/content/Intent;)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 7
    iget-boolean p1, p0, Lcom/startapp/t0;->k:Z

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/startapp/t0;->l:Lcom/startapp/m;

    if-eqz p1, :cond_0

    .line 9
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v0

    .line 10
    iput-wide v0, p1, Lcom/startapp/m;->h:J

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/startapp/sdk/components/ComponentLocator;->b:Lcom/startapp/y1;

    invoke-virtual {p1}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/ld;

    .line 13
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    check-cast v0, Lcom/startapp/sdk/adsbase/HtmlAd;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/HtmlAd;->j()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/startapp/t0$a;

    invoke-direct {v1, p0}, Lcom/startapp/t0$a;-><init>(Lcom/startapp/t0;)V

    invoke-virtual {p1, v0, v1}, Lcom/startapp/ld;->a(Ljava/lang/String;Lcom/startapp/wb$a;)V

    goto :goto_0

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/b;->a()Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    invoke-static {p1, v1, v2, v0}, Lcom/startapp/j;->b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/Ad;Z)V

    .line 44
    invoke-virtual {p0}, Lcom/startapp/t0;->f()V

    goto :goto_0

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/b;->a()Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    invoke-static {p1, v1, v2, v0}, Lcom/startapp/j;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/Ad;Z)V

    .line 49
    invoke-virtual {p0}, Lcom/startapp/t0;->f()V

    :goto_0
    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 12

    const-string v0, "GET"

    .line 1
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/b;->d()Lcom/startapp/sdk/adsbase/model/GetAdRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/startapp/t0;->i:Lcom/startapp/sdk/adsbase/model/GetAdRequest;

    .line 3
    invoke-virtual {p0, v1}, Lcom/startapp/t0;->b(Lcom/startapp/sdk/adsbase/model/GetAdRequest;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 5
    iget-object v1, p0, Lcom/startapp/t0;->g:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/startapp/t0;->g:Ljava/util/Set;

    iget-object v3, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/startapp/t0;->i:Lcom/startapp/sdk/adsbase/model/GetAdRequest;

    iget-object v3, p0, Lcom/startapp/t0;->g:Ljava/util/Set;

    .line 9
    iput-object v3, v1, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->C0:Ljava/util/Set;

    .line 10
    iget-object v3, p0, Lcom/startapp/t0;->h:Ljava/util/Set;

    .line 11
    iput-object v3, v1, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->E0:Ljava/util/Set;

    .line 12
    iget v3, p0, Lcom/startapp/t0;->j:I

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 13
    iput-boolean v3, v1, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->G0:Z

    .line 14
    sget-object v1, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 15
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->I()Lcom/startapp/sdk/adsbase/remoteconfig/SimpleTokenConfig;

    move-result-object v1

    .line 16
    iget-object v3, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/startapp/sdk/adsbase/remoteconfig/SimpleTokenConfig;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/sdk/adsbase/SimpleTokenUtils;->e(Landroid/content/Context;)V

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/startapp/sdk/components/ComponentLocator;->k()Lcom/startapp/y3;

    move-result-object v1

    sget-object v3, Lcom/startapp/sdk/adsbase/AdsConstants$AdApiType;->a:Lcom/startapp/sdk/adsbase/AdsConstants$AdApiType;

    .line 24
    iget-object v4, p0, Lcom/startapp/sdk/adsbase/b;->e:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 25
    invoke-static {v3, v4}, Lcom/startapp/sdk/adsbase/AdsConstants;->a(Lcom/startapp/sdk/adsbase/AdsConstants$AdApiType;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/startapp/t0;->i:Lcom/startapp/sdk/adsbase/model/GetAdRequest;

    if-eqz v4, :cond_2

    .line 26
    :try_start_0
    invoke-virtual {v1}, Lcom/startapp/y3;->a()Ljava/util/Map;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    new-instance v6, Lcom/startapp/c7;

    invoke-direct {v6}, Lcom/startapp/c7;-><init>()V

    .line 28
    invoke-virtual {v4, v6}, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->a(Lcom/startapp/m8;)V

    .line 29
    invoke-virtual {v6}, Lcom/startapp/c7;->toString()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Lcom/startapp/y3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lcom/startapp/sdk/common/SDKException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 32
    :try_start_2
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v5, v2

    .line 41
    :goto_0
    iget-object v4, v1, Lcom/startapp/y3;->b:Lcom/startapp/ub;

    .line 42
    iget-object v4, v4, Lcom/startapp/ub;->a:Ljava/lang/String;

    .line 43
    invoke-virtual {v1}, Lcom/startapp/y3;->b()Lcom/startapp/z3;

    move-result-object v6

    .line 44
    iget-boolean v6, v6, Lcom/startapp/z3;->a:Z

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 46
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v9

    .line 48
    iget-object v1, v1, Lcom/startapp/y3;->d:Lcom/startapp/g7;

    if-eqz v1, :cond_3

    .line 49
    new-instance v11, Lcom/startapp/n7;

    invoke-direct {v11, v1}, Lcom/startapp/n7;-><init>(Lcom/startapp/g7;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_3
    move-object v11, v2

    .line 50
    :goto_1
    :try_start_3
    invoke-static {v3, v5, v4, v6}, Lcom/startapp/o7;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/startapp/o7$a;

    move-result-object v1

    if-eqz v11, :cond_4

    .line 58
    invoke-virtual {v11, v0, v3, v2}, Lcom/startapp/n7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V

    .line 59
    :cond_4
    iput-wide v7, v1, Lcom/startapp/o7$a;->d:J

    .line 60
    iput-wide v9, v1, Lcom/startapp/o7$a;->e:J

    .line 61
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v4

    .line 62
    iput-wide v4, v1, Lcom/startapp/o7$a;->f:J
    :try_end_3
    .catch Lcom/startapp/sdk/common/SDKException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v1

    if-eqz v11, :cond_5

    .line 63
    :try_start_4
    invoke-virtual {v11, v0, v3, v1}, Lcom/startapp/n7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 64
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 66
    :try_start_6
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-object v2
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/t0;->l:Lcom/startapp/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    .line 3
    :try_start_0
    invoke-static {v1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/startapp/sdk/components/ComponentLocator;->G:Lcom/startapp/y1;

    invoke-virtual {v1}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/l;

    .line 5
    invoke-virtual {v1, v0}, Lcom/startapp/l;->a(Lcom/startapp/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/startapp/t0;->l:Lcom/startapp/m;

    :cond_0
    return-void
.end method
