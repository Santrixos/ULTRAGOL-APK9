.class public abstract Lcom/startapp/u0;
.super Lcom/startapp/sdk/adsbase/b;
.source "Sta"


# instance fields
.field public g:I

.field public h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/Ad;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/startapp/sdk/adsbase/b;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/Ad;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/startapp/u0;->g:I

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/startapp/u0;->h:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/startapp/sdk/adsbase/Ad;)V
.end method

.method public a(Z)V
    .locals 3

    .line 26
    invoke-super {p0, p1}, Lcom/startapp/sdk/adsbase/b;->a(Z)V

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.OnReceiveResponseBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "adHashcode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adResult"

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/startapp/a6;->a(Landroid/content/Context;)Lcom/startapp/a6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/a6;->a(Landroid/content/Intent;)Z

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    check-cast p1, Lcom/startapp/sdk/adsbase/JsonAd;

    .line 37
    invoke-virtual {p0, p1}, Lcom/startapp/u0;->a(Lcom/startapp/sdk/adsbase/Ad;)V

    .line 39
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/b;->a()Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/startapp/j;->b(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/Ad;Z)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/startapp/sdk/adsbase/model/GetAdResponse;

    const-string v1, "Empty Response"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 4
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    return v2

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/BaseResponse;->b()Z

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/BaseResponse;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    return v2

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/b;->b:Lcom/startapp/sdk/adsbase/Ad;

    check-cast p1, Lcom/startapp/sdk/adsbase/JsonAd;

    .line 14
    iget-object v3, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/GetAdResponse;->d()Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/startapp/u0;->g:I

    iget-object v6, p0, Lcom/startapp/u0;->h:Ljava/util/Set;

    const/4 v7, 0x1

    .line 15
    invoke-static {v3, v4, v5, v6, v7}, Lcom/startapp/f0;->a(Landroid/content/Context;Ljava/util/List;ILjava/util/Set;Z)Ljava/util/List;

    move-result-object v3

    .line 16
    invoke-virtual {p1, v3}, Lcom/startapp/sdk/adsbase/JsonAd;->a(Ljava/util/List;)V

    .line 17
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/GetAdResponse;->c()Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/startapp/sdk/adsbase/Ad;->setAdInfoOverride(Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;)V

    .line 19
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/GetAdResponse;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/model/GetAdResponse;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 22
    iput-object v1, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_3
    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/startapp/u0;->g:I

    if-nez p1, :cond_4

    add-int/2addr p1, v7

    .line 24
    iput p1, p0, Lcom/startapp/u0;->g:I

    .line 25
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/b;->b()Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v2
.end method

.method public e()Ljava/lang/Object;
    .locals 13

    const-string v0, "GET"

    .line 1
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/b;->d()Lcom/startapp/sdk/adsbase/model/GetAdRequest;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/startapp/u0;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/startapp/u0;->h:Ljava/util/Set;

    iget-object v4, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget v3, p0, Lcom/startapp/u0;->g:I

    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 11
    iput-boolean v4, v1, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->G0:Z

    .line 12
    :cond_2
    iget-object v5, p0, Lcom/startapp/u0;->h:Ljava/util/Set;

    .line 13
    iput-object v5, v1, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->C0:Ljava/util/Set;

    if-nez v3, :cond_3

    const/4 v4, 0x1

    .line 14
    :cond_3
    iput-boolean v4, v1, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->G0:Z

    .line 15
    iget-object v3, p0, Lcom/startapp/sdk/adsbase/b;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/startapp/sdk/components/ComponentLocator;->k()Lcom/startapp/y3;

    move-result-object v3

    sget-object v4, Lcom/startapp/sdk/adsbase/AdsConstants$AdApiType;->b:Lcom/startapp/sdk/adsbase/AdsConstants$AdApiType;

    .line 17
    iget-object v5, p0, Lcom/startapp/sdk/adsbase/b;->e:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 18
    invoke-static {v4, v5}, Lcom/startapp/sdk/adsbase/AdsConstants;->a(Lcom/startapp/sdk/adsbase/AdsConstants$AdApiType;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const-class v5, Lcom/startapp/sdk/adsbase/model/GetAdResponse;

    .line 21
    :try_start_0
    invoke-virtual {v3}, Lcom/startapp/y3;->a()Ljava/util/Map;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    new-instance v7, Lcom/startapp/c7;

    invoke-direct {v7}, Lcom/startapp/c7;-><init>()V

    .line 23
    invoke-virtual {v1, v7}, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->a(Lcom/startapp/m8;)V

    .line 24
    invoke-virtual {v7}, Lcom/startapp/c7;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-static {v4, v1}, Lcom/startapp/y3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lcom/startapp/sdk/common/SDKException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    :try_start_2
    iget-object v4, v3, Lcom/startapp/y3;->b:Lcom/startapp/ub;

    .line 37
    iget-object v4, v4, Lcom/startapp/ub;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {v3}, Lcom/startapp/y3;->b()Lcom/startapp/z3;

    move-result-object v7

    .line 39
    iget-boolean v7, v7, Lcom/startapp/z3;->a:Z

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 41
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v10

    .line 43
    iget-object v3, v3, Lcom/startapp/y3;->d:Lcom/startapp/g7;

    if-eqz v3, :cond_4

    .line 44
    new-instance v12, Lcom/startapp/n7;

    invoke-direct {v12, v3}, Lcom/startapp/n7;-><init>(Lcom/startapp/g7;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_4
    move-object v12, v2

    .line 45
    :goto_0
    :try_start_3
    invoke-static {v1, v6, v4, v7}, Lcom/startapp/o7;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Z)Lcom/startapp/o7$a;

    move-result-object v3

    if-eqz v12, :cond_5

    .line 53
    invoke-virtual {v12, v0, v1, v2}, Lcom/startapp/n7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V

    .line 54
    :cond_5
    iput-wide v8, v3, Lcom/startapp/o7$a;->d:J

    .line 55
    iput-wide v10, v3, Lcom/startapp/o7$a;->e:J

    .line 56
    invoke-static {}, Lcom/startapp/wb;->a()J

    move-result-wide v6

    .line 57
    iput-wide v6, v3, Lcom/startapp/o7$a;->f:J
    :try_end_3
    .catch Lcom/startapp/sdk/common/SDKException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v3

    if-eqz v12, :cond_6

    .line 58
    :try_start_4
    invoke-virtual {v12, v0, v1, v3}, Lcom/startapp/n7;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startapp/sdk/common/SDKException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 59
    :cond_6
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/b;->f:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 61
    :try_start_6
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 62
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 63
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_1
    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_7

    .line 64
    :try_start_7
    iget-object v0, v3, Lcom/startapp/o7$a;->a:Ljava/lang/String;

    .line 65
    invoke-static {v0, v5}, Lcom/startapp/wb;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 67
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_7
    :goto_3
    return-object v2
.end method
