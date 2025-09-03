.class public Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/sdk/adsbase/remoteconfig/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->i(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/startapp/sdk/components/ComponentLocator;

.field public final synthetic c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/adsbase/StartAppSDKInternal;Landroid/content/Context;Lcom/startapp/sdk/components/ComponentLocator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    iput-object p2, p0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    .line 278
    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->b()Lcom/startapp/x;

    move-result-object p1

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1, v0}, Lcom/startapp/x;->a(I)V

    return-void
.end method

.method public a(Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;Z)V
    .locals 18

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    iget-object v8, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    .line 2
    iget-boolean v2, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->b:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 6
    :cond_0
    iget-boolean v2, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->p:Z

    if-nez v2, :cond_4

    .line 7
    sget-object v2, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a:Lcom/startapp/sdk/adsbase/cache/CacheMetaData;

    .line 8
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a()Lcom/startapp/sdk/adsbase/cache/ACMConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/cache/ACMConfig;->f()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 10
    :cond_1
    iget-boolean v2, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->c:Z

    if-eqz v2, :cond_5

    .line 11
    sget-object v2, Lcom/startapp/sdk/adsbase/cache/d;->h:Lcom/startapp/sdk/adsbase/cache/d;

    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    invoke-static {v8}, Lcom/startapp/j0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v8

    .line 14
    :goto_0
    iput-object v3, v2, Lcom/startapp/sdk/adsbase/cache/d;->g:Landroid/content/Context;

    .line 15
    iget-boolean v4, v2, Lcom/startapp/sdk/adsbase/cache/d;->c:Z

    if-nez v4, :cond_3

    .line 16
    sget-object v4, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a:Lcom/startapp/sdk/adsbase/cache/CacheMetaData;

    .line 17
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a()Lcom/startapp/sdk/adsbase/cache/ACMConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/cache/ACMConfig;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    .line 18
    iput-boolean v10, v2, Lcom/startapp/sdk/adsbase/cache/d;->d:Z

    .line 19
    new-instance v4, Lcom/startapp/sdk/adsbase/cache/a;

    invoke-direct {v4, v2, v3}, Lcom/startapp/sdk/adsbase/cache/a;-><init>(Lcom/startapp/sdk/adsbase/cache/d;Landroid/content/Context;)V

    .line 20
    invoke-static {v3}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/sdk/components/ComponentLocator;->i()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v5, Lcom/startapp/sdk/adsbase/cache/j;

    invoke-direct {v5, v3, v4}, Lcom/startapp/sdk/adsbase/cache/j;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/cache/DiskAdCacheManager$b;)V

    invoke-interface {v2, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 21
    :cond_4
    :goto_2
    sget-object v2, Lcom/startapp/sdk/adsbase/cache/d;->h:Lcom/startapp/sdk/adsbase/cache/d;

    .line 22
    iput-boolean v10, v2, Lcom/startapp/sdk/adsbase/cache/d;->c:Z

    .line 23
    new-instance v3, Lcom/startapp/sdk/adsbase/cache/b;

    invoke-direct {v3, v2}, Lcom/startapp/sdk/adsbase/cache/b;-><init>(Lcom/startapp/sdk/adsbase/cache/d;)V

    .line 24
    invoke-static {v8}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/sdk/components/ComponentLocator;->i()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Lcom/startapp/sdk/adsbase/cache/i;

    invoke-direct {v4, v8, v3}, Lcom/startapp/sdk/adsbase/cache/i;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/cache/DiskAdCacheManager$c;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    :cond_5
    :goto_3
    invoke-virtual {v0, v8}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->e(Landroid/content/Context;)V

    if-eqz p2, :cond_c

    .line 26
    sget-object v0, Lcom/startapp/sdk/adsbase/cache/d;->h:Lcom/startapp/sdk/adsbase/cache/d;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    sget-object v2, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a:Lcom/startapp/sdk/adsbase/cache/CacheMetaData;

    .line 29
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a()Lcom/startapp/sdk/adsbase/cache/ACMConfig;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 31
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/cache/ACMConfig;->b()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 33
    invoke-static {v8}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/sdk/components/ComponentLocator;->d()Lcom/startapp/sdk/adsbase/e;

    move-result-object v11

    .line 34
    sget-object v3, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 35
    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->L()I

    move-result v12

    .line 36
    sget-object v3, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 37
    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->i()I

    move-result v13

    .line 38
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;

    if-nez v5, :cond_6

    goto :goto_4

    .line 43
    :cond_6
    invoke-static {v5}, Lcom/startapp/sdk/adsbase/cache/d;->a(Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;)Ljava/lang/String;

    move-result-object v15

    .line 45
    invoke-virtual {v11, v15, v9}, Lcom/startapp/sdk/adsbase/e;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-lt v7, v12, :cond_7

    goto :goto_4

    .line 50
    :cond_7
    sget-object v6, Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;->FULLPAGE:Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;

    if-ne v5, v6, :cond_9

    if-lez v13, :cond_8

    .line 52
    new-instance v16, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct/range {v16 .. v16}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object v2, v0

    move-object v3, v8

    move-object v5, v6

    move-object/from16 v6, v16

    move/from16 v16, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lcom/startapp/sdk/adsbase/cache/d;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/cache/d$d;)V

    goto :goto_5

    :cond_8
    move/from16 v16, v7

    goto :goto_5

    :cond_9
    move/from16 v16, v7

    .line 54
    sget-object v6, Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;->OFFERWALL:Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;

    if-ne v5, v6, :cond_a

    const/16 v2, 0x64

    if-ge v13, v2, :cond_b

    .line 56
    new-instance v7, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {v7}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object v2, v0

    move-object v3, v8

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Lcom/startapp/sdk/adsbase/cache/d;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/cache/d$d;)V

    goto :goto_5

    .line 59
    :cond_a
    new-instance v6, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {v6}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v8

    invoke-virtual/range {v2 .. v7}, Lcom/startapp/sdk/adsbase/cache/d;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/cache/d$d;)V

    .line 62
    :cond_b
    :goto_5
    invoke-virtual {v11}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object v2

    add-int/lit8 v7, v16, 0x1

    .line 63
    invoke-virtual {v2, v15, v7}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;I)Lcom/startapp/sdk/adsbase/e$a;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    goto :goto_4

    .line 65
    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    .line 66
    iget-object v0, v0, Lcom/startapp/sdk/components/ComponentLocator;->r:Lcom/startapp/y1;

    invoke-virtual {v0}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/j1;

    .line 67
    invoke-virtual {v0}, Lcom/startapp/z7;->e()V

    .line 68
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    .line 69
    iget-object v0, v0, Lcom/startapp/sdk/components/ComponentLocator;->s:Lcom/startapp/y1;

    invoke-virtual {v0}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/p9;

    .line 70
    invoke-virtual {v0}, Lcom/startapp/z7;->e()V

    .line 71
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->t()Lcom/startapp/pa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/z7;->e()V

    .line 73
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    iget-object v2, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    invoke-static {v2}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->m()Lcom/startapp/m5;

    move-result-object v0

    .line 76
    sget-object v2, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 77
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->V()Z

    move-result v2

    const-wide/32 v3, 0xea60

    if-eqz v2, :cond_d

    .line 78
    sget-object v2, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 79
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->B()I

    move-result v2

    int-to-long v5, v2

    mul-long v5, v5, v3

    .line 80
    new-instance v2, Lcom/startapp/sdk/jobs/e$a;

    const-class v7, Lcom/startapp/sdk/adsbase/remoteconfig/d;

    invoke-direct {v2, v7}, Lcom/startapp/sdk/jobs/e$a;-><init>(Ljava/lang/Class;)V

    .line 81
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/startapp/sdk/jobs/e$a;->d:Ljava/lang/Long;

    .line 82
    sget-object v5, Lcom/startapp/sdk/jobs/JobRequest$Network;->a:Lcom/startapp/sdk/jobs/JobRequest$Network;

    .line 83
    iput-object v5, v2, Lcom/startapp/sdk/jobs/JobRequest$a;->b:Lcom/startapp/sdk/jobs/JobRequest$Network;

    .line 84
    new-instance v5, Lcom/startapp/sdk/jobs/e;

    invoke-direct {v5, v2}, Lcom/startapp/sdk/jobs/e;-><init>(Lcom/startapp/sdk/jobs/e$a;)V

    new-array v2, v10, [Lcom/startapp/sdk/jobs/JobRequest;

    aput-object v5, v2, v9

    .line 85
    invoke-virtual {v0, v2}, Lcom/startapp/m5;->a([Lcom/startapp/sdk/jobs/JobRequest;)Z

    goto :goto_7

    :cond_d
    new-array v2, v10, [Ljava/lang/Class;

    .line 87
    const-class v5, Lcom/startapp/sdk/adsbase/remoteconfig/d;

    aput-object v5, v2, v9

    invoke-static {v2}, Lcom/startapp/sdk/jobs/JobRequest;->a([Ljava/lang/Class;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/startapp/m5;->a(I)Z

    .line 88
    :goto_7
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    iget-object v2, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    invoke-static {v2}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->m()Lcom/startapp/m5;

    move-result-object v0

    .line 91
    sget-object v5, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 92
    invoke-virtual {v5}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->U()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 93
    sget-object v5, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 94
    invoke-virtual {v5, v2}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->b(Landroid/content/Context;)I

    move-result v2

    int-to-long v5, v2

    mul-long v5, v5, v3

    .line 95
    new-instance v2, Lcom/startapp/sdk/jobs/e$a;

    const-class v3, Lcom/startapp/b8;

    invoke-direct {v2, v3}, Lcom/startapp/sdk/jobs/e$a;-><init>(Ljava/lang/Class;)V

    .line 96
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/startapp/sdk/jobs/e$a;->d:Ljava/lang/Long;

    .line 97
    sget-object v3, Lcom/startapp/sdk/jobs/JobRequest$Network;->a:Lcom/startapp/sdk/jobs/JobRequest$Network;

    .line 98
    iput-object v3, v2, Lcom/startapp/sdk/jobs/JobRequest$a;->b:Lcom/startapp/sdk/jobs/JobRequest$Network;

    .line 99
    new-instance v3, Lcom/startapp/sdk/jobs/e;

    invoke-direct {v3, v2}, Lcom/startapp/sdk/jobs/e;-><init>(Lcom/startapp/sdk/jobs/e$a;)V

    new-array v2, v10, [Lcom/startapp/sdk/jobs/JobRequest;

    aput-object v3, v2, v9

    .line 100
    invoke-virtual {v0, v2}, Lcom/startapp/m5;->a([Lcom/startapp/sdk/jobs/JobRequest;)Z

    goto :goto_8

    :cond_e
    new-array v2, v10, [Ljava/lang/Class;

    .line 102
    const-class v3, Lcom/startapp/b8;

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/startapp/sdk/jobs/JobRequest;->a([Ljava/lang/Class;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/startapp/m5;->a(I)Z

    .line 103
    :goto_8
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    iget-object v2, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-static {v2}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->m()Lcom/startapp/m5;

    move-result-object v0

    .line 106
    sget-object v3, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 107
    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->U()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->T()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 108
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v2}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->a(Landroid/content/Context;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 109
    new-instance v4, Lcom/startapp/sdk/jobs/e$a;

    const-class v5, Lcom/startapp/a8;

    invoke-direct {v4, v5}, Lcom/startapp/sdk/jobs/e$a;-><init>(Ljava/lang/Class;)V

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v4, Lcom/startapp/sdk/jobs/e$a;->d:Ljava/lang/Long;

    .line 111
    sget-object v2, Lcom/startapp/sdk/jobs/JobRequest$Network;->a:Lcom/startapp/sdk/jobs/JobRequest$Network;

    .line 112
    iput-object v2, v4, Lcom/startapp/sdk/jobs/JobRequest$a;->b:Lcom/startapp/sdk/jobs/JobRequest$Network;

    .line 113
    iput-boolean v10, v4, Lcom/startapp/sdk/jobs/JobRequest$a;->c:Z

    .line 114
    new-instance v2, Lcom/startapp/sdk/jobs/e;

    invoke-direct {v2, v4}, Lcom/startapp/sdk/jobs/e;-><init>(Lcom/startapp/sdk/jobs/e$a;)V

    new-array v3, v10, [Lcom/startapp/sdk/jobs/JobRequest;

    aput-object v2, v3, v9

    .line 115
    invoke-virtual {v0, v3}, Lcom/startapp/m5;->a([Lcom/startapp/sdk/jobs/JobRequest;)Z

    goto :goto_9

    :cond_f
    new-array v2, v10, [Ljava/lang/Class;

    .line 117
    const-class v3, Lcom/startapp/a8;

    aput-object v3, v2, v9

    invoke-static {v2}, Lcom/startapp/sdk/jobs/JobRequest;->a([Ljava/lang/Class;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/startapp/m5;->a(I)Z

    .line 118
    :goto_9
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    iget-object v2, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {v2}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/startapp/sdk/components/ComponentLocator;->d()Lcom/startapp/sdk/adsbase/e;

    move-result-object v4

    const-string v5, "shared_prefs_first_init"

    .line 122
    invoke-virtual {v4, v5, v10}, Lcom/startapp/sdk/adsbase/e;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_a

    .line 127
    :cond_10
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/e;->a()Lcom/startapp/sdk/adsbase/e$a;

    move-result-object v5

    .line 128
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "totalSessions"

    invoke-virtual {v5, v7, v6}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    iget-object v6, v5, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 131
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v11, "firstSessionTime"

    invoke-virtual {v5, v11, v8}, Lcom/startapp/sdk/adsbase/e$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v8, v5, Lcom/startapp/sdk/adsbase/e$a;->a:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8, v11, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-virtual {v5}, Lcom/startapp/sdk/adsbase/e$a;->apply()V

    .line 135
    invoke-virtual {v3}, Lcom/startapp/sdk/components/ComponentLocator;->p()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/startapp/sdk/adsbase/f;

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/startapp/sdk/adsbase/f;-><init>(Lcom/startapp/sdk/adsbase/StartAppSDKInternal;Landroid/content/Context;Lcom/startapp/sdk/components/ComponentLocator;Lcom/startapp/sdk/adsbase/e;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 136
    :goto_a
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->g(Landroid/content/Context;)V

    .line 138
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 139
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    .line 141
    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/sdk/components/ComponentLocator;->f()Lcom/startapp/e2;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Lcom/startapp/e2;->c()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 143
    sget-object v2, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 144
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->z()Lcom/startapp/sdk/insight/NetworkTestsMetaData;

    move-result-object v2

    .line 145
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-ge v3, v4, :cond_11

    goto/16 :goto_f

    .line 149
    :cond_11
    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/startapp/sdk/components/ComponentLocator;->m()Lcom/startapp/m5;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 150
    invoke-static {v0, v4}, Lcom/startapp/a0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 151
    invoke-static {v0, v4}, Lcom/startapp/a0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_b

    :cond_12
    const/4 v4, 0x0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v4, 0x1

    :goto_c
    if-eqz v2, :cond_17

    .line 153
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->n()Z

    move-result v5

    if-eqz v5, :cond_17

    if-nez v4, :cond_14

    goto/16 :goto_e

    .line 160
    :cond_14
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->j()D

    move-result-wide v6

    cmpg-double v8, v4, v6

    if-gez v8, :cond_15

    .line 161
    new-instance v4, Lcom/startapp/l7;

    invoke-direct {v4}, Lcom/startapp/l7;-><init>()V

    invoke-static {v4}, Lcom/startapp/x2;->a(Lcom/startapp/x2$a;)V

    .line 170
    :cond_15
    :try_start_0
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->o()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/startapp/sdk/cachedservice/BackgroundService;->a(Landroid/content/Context;Z)V

    .line 172
    new-instance v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;

    invoke-direct {v4}, Lcom/startapp/networkTest/startapp/NetworkTester$Config;-><init>()V

    .line 173
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->k()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->PROJECT_ID:Ljava/lang/String;

    .line 174
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CONNECTIVITY_TEST_HOSTNAME:Ljava/lang/String;

    .line 175
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->b()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CONNECTIVITY_TEST_FILENAME:Ljava/lang/String;

    .line 176
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->l()Z

    move-result v5

    iput-boolean v5, v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CONNECTIVITY_TEST_ENABLED:Z

    .line 177
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->p()Z

    move-result v5

    iput-boolean v5, v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->NIR_COLLECT_CELLINFO:Z

    .line 178
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->m()Z

    move-result v5

    iput-boolean v5, v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CT_COLLECT_CELLINFO:Z

    .line 179
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->a()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->CONNECTIVITY_TEST_CDNCONFIG_URL:Ljava/lang/String;

    .line 180
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->e()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/startapp/networkTest/startapp/NetworkTester$Config;->GEOIP_URL:Ljava/lang/String;

    .line 181
    invoke-static {v0}, Lcom/startapp/j0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_16

    goto :goto_d

    :cond_16
    move-object v5, v0

    .line 182
    :goto_d
    new-instance v6, Lcom/startapp/k7;

    invoke-direct {v6, v5}, Lcom/startapp/k7;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-static {v0, v4}, Lcom/startapp/networkTest/startapp/NetworkTester;->init(Landroid/content/Context;Lcom/startapp/networkTest/startapp/NetworkTester$Config;)V

    .line 184
    invoke-static {v6}, Lcom/startapp/networkTest/startapp/NetworkTester;->setOnConnectivityLatencyListener(Lcom/startapp/networkTest/startapp/ConnectivityTestListener;)V

    .line 185
    invoke-static {v6}, Lcom/startapp/networkTest/startapp/NetworkTester;->setOnNetworkInfoListener(Lcom/startapp/networkTest/startapp/CoverageMapperManager$OnNetworkInfoResultListener;)V

    .line 186
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->d()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->f()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/startapp/networkTest/startapp/NetworkTester;->startListening(JJ)V

    .line 188
    new-instance v0, Lcom/startapp/sdk/jobs/e$a;

    const-class v4, Lcom/startapp/m7;

    invoke-direct {v0, v4}, Lcom/startapp/sdk/jobs/e$a;-><init>(Ljava/lang/Class;)V

    .line 189
    invoke-virtual {v2}, Lcom/startapp/sdk/insight/NetworkTestsMetaData;->d()J

    move-result-wide v4

    .line 190
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/startapp/sdk/jobs/e$a;->d:Ljava/lang/Long;

    .line 191
    sget-object v2, Lcom/startapp/sdk/jobs/JobRequest$Network;->a:Lcom/startapp/sdk/jobs/JobRequest$Network;

    .line 192
    iput-object v2, v0, Lcom/startapp/sdk/jobs/JobRequest$a;->b:Lcom/startapp/sdk/jobs/JobRequest$Network;

    .line 193
    new-instance v2, Lcom/startapp/sdk/jobs/e;

    invoke-direct {v2, v0}, Lcom/startapp/sdk/jobs/e;-><init>(Lcom/startapp/sdk/jobs/e$a;)V

    new-array v0, v10, [Lcom/startapp/sdk/jobs/JobRequest;

    aput-object v2, v0, v9

    .line 194
    invoke-virtual {v3, v0}, Lcom/startapp/m5;->a([Lcom/startapp/sdk/jobs/JobRequest;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 196
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_17
    :goto_e
    new-array v2, v10, [Ljava/lang/Class;

    .line 197
    const-class v4, Lcom/startapp/m7;

    aput-object v4, v2, v9

    invoke-static {v2}, Lcom/startapp/sdk/jobs/JobRequest;->a([Ljava/lang/Class;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/startapp/m5;->a(I)Z

    .line 198
    invoke-static {}, Lcom/startapp/networkTest/startapp/NetworkTester;->stopListening()V

    .line 199
    invoke-static {v0, v9}, Lcom/startapp/sdk/cachedservice/BackgroundService;->a(Landroid/content/Context;Z)V

    .line 200
    :cond_18
    :goto_f
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->c:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    iget-object v2, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    .line 201
    iget-object v3, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->B:Lcom/startapp/jb;

    if-eqz v3, :cond_19

    goto :goto_10

    .line 205
    :cond_19
    invoke-static {v2}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object v2

    .line 206
    iget-object v2, v2, Lcom/startapp/sdk/components/ComponentLocator;->l:Lcom/startapp/y1;

    invoke-virtual {v2}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/jb;

    .line 207
    iput-object v2, v0, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->B:Lcom/startapp/jb;

    .line 208
    invoke-virtual {v2}, Lcom/startapp/jb;->b()V

    .line 209
    :goto_10
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->r()Lcom/startapp/b9;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    :try_start_1
    invoke-virtual {v0}, Lcom/startapp/b9;->b()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_11

    .line 214
    :cond_1a
    iget-object v2, v0, Lcom/startapp/b9;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/startapp/c9;

    invoke-direct {v3, v0}, Lcom/startapp/c9;-><init>(Lcom/startapp/b9;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_11

    :catchall_1
    move-exception v0

    .line 225
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 226
    :goto_11
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->q()Lcom/startapp/x8;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/startapp/x8;->a()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x400

    .line 229
    invoke-virtual {v0, v3}, Lcom/startapp/x8;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 230
    new-instance v0, Lcom/startapp/i4;

    sget-object v3, Lcom/startapp/j4;->d:Lcom/startapp/j4;

    invoke-direct {v0, v3}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v3, "RSC init"

    .line 231
    iput-object v3, v0, Lcom/startapp/i4;->d:Ljava/lang/String;

    const-string v3, "targets: "

    .line 232
    invoke-static {v3}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_1b

    .line 233
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_12

    :cond_1b
    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    iput-object v2, v0, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 235
    invoke-virtual {v0}, Lcom/startapp/i4;->a()V

    .line 236
    :cond_1c
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->o()Lcom/startapp/i6;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/startapp/i6;->a()Lcom/startapp/sdk/adsbase/remoteconfig/MotionMetadata;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 239
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/MotionMetadata;->k()D

    move-result-wide v5

    cmpg-double v2, v3, v5

    if-gez v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_13

    :cond_1d
    const/4 v2, 0x0

    :goto_13
    iput-boolean v2, v0, Lcom/startapp/i6;->f:Z

    .line 242
    :cond_1e
    iget-object v2, v0, Lcom/startapp/i6;->d:Landroid/os/Handler;

    new-instance v3, Lcom/startapp/j6;

    invoke-direct {v3, v0}, Lcom/startapp/j6;-><init>(Lcom/startapp/i6;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    iget-object v0, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->b:Lcom/startapp/sdk/components/ComponentLocator;

    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->b()Lcom/startapp/x;

    move-result-object v0

    if-eqz p2, :cond_1f

    const/4 v2, 0x1

    goto :goto_14

    :cond_1f
    const/4 v2, 0x2

    .line 244
    :goto_14
    invoke-virtual {v0, v2}, Lcom/startapp/x;->a(I)V

    .line 245
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 246
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 248
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppSDK;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\."

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 252
    array-length v3, v4

    array-length v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x0

    :goto_15
    if-ge v5, v3, :cond_23

    .line 256
    :try_start_2
    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 257
    aget-object v7, v2, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    if-le v6, v7, :cond_20

    goto :goto_16

    :cond_20
    if-ge v6, v7, :cond_22

    goto :goto_17

    :catch_0
    nop

    .line 264
    aget-object v6, v4, v5

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_21

    :goto_16
    add-int/2addr v5, v10

    goto :goto_18

    :cond_21
    if-gez v6, :cond_22

    :goto_17
    add-int/2addr v5, v10

    neg-int v5, v5

    goto :goto_18

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 273
    :cond_23
    array-length v5, v4

    array-length v6, v2

    if-le v5, v6, :cond_24

    add-int/lit8 v5, v3, 0x1

    goto :goto_18

    .line 275
    :cond_24
    array-length v4, v4

    array-length v2, v2

    if-ge v4, v2, :cond_25

    add-int/2addr v3, v10

    neg-int v5, v3

    goto :goto_18

    :cond_25
    const/4 v5, 0x0

    :goto_18
    if-lez v5, :cond_26

    .line 276
    iget-object v2, v1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$b;->a:Landroid/content/Context;

    const-string v3, "Current SDK version ("

    invoke-static {v3}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppSDK;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is outdated. Integrate the most recent version ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") in order to improve your ads performance."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-static {v2, v3, v0, v9}, Lcom/startapp/wb;->a(Landroid/content/Context;ILjava/lang/String;Z)V

    :cond_26
    return-void
.end method
