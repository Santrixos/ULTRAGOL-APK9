.class public Lcom/startapp/l;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/d3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/startapp/l;->a:Lcom/startapp/d3;

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/m;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/startapp/l;->a:Lcom/startapp/d3;

    invoke-interface {v2}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->c()D

    move-result-wide v5

    cmpg-double v7, v3, v5

    if-gez v7, :cond_e

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-boolean v4, v1, Lcom/startapp/m;->c:Z

    const-string v5, "preLoading"

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-boolean v6, v1, Lcom/startapp/m;->d:Z

    if-eqz v6, :cond_1

    .line 7
    iget-boolean v6, v1, Lcom/startapp/m;->f:Z

    const-string v7, "appPresent"

    .line 8
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-static {v3}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;)V

    .line 11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/remoteconfig/AnalyticsConfig;->b()Ljava/util/List;

    move-result-object v2

    .line 15
    iget-object v7, v1, Lcom/startapp/m;->a:Ljava/lang/String;

    const-string v9, "adId"

    const/4 v10, 0x1

    .line 16
    invoke-static {v3, v9, v7, v10}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    iget-object v7, v1, Lcom/startapp/m;->b:Lcom/startapp/o7$a;

    .line 18
    iget-wide v11, v7, Lcom/startapp/o7$a;->d:J

    const-string v7, "start"

    .line 19
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v7, v1, Lcom/startapp/m;->b:Lcom/startapp/o7$a;

    .line 21
    iget-object v7, v7, Lcom/startapp/o7$a;->c:Ljava/util/Map;

    const-wide/16 v11, 0x0

    if-eqz v7, :cond_4

    const-string v9, "Server-Timing"

    .line 22
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_4

    .line 24
    sget-object v9, Lcom/startapp/m;->m:Ljava/util/regex/Pattern;

    if-nez v9, :cond_2

    const-string v9, "^total;dur=(\\d+(\\.\\d*)?)$"

    .line 26
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 28
    sput-object v9, Lcom/startapp/m;->m:Ljava/util/regex/Pattern;

    .line 31
    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 32
    invoke-virtual {v9, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 33
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 34
    invoke-virtual {v13, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 36
    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double v13, v13, v15

    double-to-long v13, v13

    goto :goto_0

    :cond_4
    move-wide v13, v11

    :goto_0
    cmp-long v7, v13, v11

    if-lez v7, :cond_5

    .line 37
    invoke-static {v13, v14}, Lcom/startapp/m;->a(J)Ljava/lang/String;

    move-result-object v7

    const-string v9, "serverTotal"

    .line 38
    invoke-static {v3, v9, v7, v8}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 41
    :cond_5
    iget-object v7, v1, Lcom/startapp/m;->b:Lcom/startapp/o7$a;

    move-object v15, v6

    .line 42
    iget-wide v5, v7, Lcom/startapp/o7$a;->f:J

    .line 43
    iget-wide v9, v7, Lcom/startapp/o7$a;->e:J

    sub-long/2addr v5, v9

    sub-long/2addr v5, v13

    .line 44
    invoke-static {v5, v6}, Lcom/startapp/m;->a(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "network"

    .line 45
    invoke-static {v3, v6, v5, v8}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    iget-wide v5, v1, Lcom/startapp/m;->g:J

    cmp-long v7, v5, v11

    if-lez v7, :cond_9

    .line 50
    iget-object v7, v1, Lcom/startapp/m;->b:Lcom/startapp/o7$a;

    .line 51
    iget-wide v9, v7, Lcom/startapp/o7$a;->f:J

    sub-long/2addr v5, v9

    .line 52
    invoke-static {v5, v6}, Lcom/startapp/m;->a(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "parsing"

    .line 53
    invoke-static {v3, v6, v5, v8}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    iget-boolean v5, v1, Lcom/startapp/m;->c:Z

    if-eqz v5, :cond_8

    iget-wide v5, v1, Lcom/startapp/m;->h:J

    cmp-long v7, v5, v11

    if-lez v7, :cond_8

    .line 56
    iget-wide v9, v1, Lcom/startapp/m;->g:J

    sub-long/2addr v5, v9

    invoke-static {v5, v6}, Lcom/startapp/m;->a(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "beforeLoad"

    .line 57
    invoke-static {v3, v6, v5, v8}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    iget-boolean v5, v1, Lcom/startapp/m;->e:Z

    if-eqz v5, :cond_6

    const-string v5, "preLoadingSkipped"

    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v5, v1, Lcom/startapp/m;->h:J

    goto :goto_1

    .line 63
    :cond_6
    iget-wide v5, v1, Lcom/startapp/m;->i:J

    cmp-long v7, v5, v11

    if-lez v7, :cond_7

    .line 64
    iget-wide v10, v1, Lcom/startapp/m;->h:J

    sub-long/2addr v5, v10

    invoke-static {v5, v6}, Lcom/startapp/m;->a(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "init"

    .line 65
    invoke-static {v3, v6, v5, v8}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    iget-wide v5, v1, Lcom/startapp/m;->j:J

    iget-wide v10, v1, Lcom/startapp/m;->i:J

    sub-long/2addr v5, v10

    invoke-static {v5, v6}, Lcom/startapp/m;->a(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "loading"

    .line 68
    invoke-static {v3, v6, v5, v8}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    iget-boolean v5, v1, Lcom/startapp/m;->l:Z

    const-string v6, "pageFinished"

    .line 71
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-wide v5, v1, Lcom/startapp/m;->j:J

    goto :goto_1

    :cond_7
    const/16 v6, 0x3d

    .line 74
    iget v5, v1, Lcom/startapp/m;->k:I

    int-to-long v9, v5

    const-string v5, "error"

    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-wide v5, v1, Lcom/startapp/m;->h:J

    goto :goto_1

    .line 80
    :cond_8
    iget-wide v5, v1, Lcom/startapp/m;->g:J

    goto :goto_1

    .line 83
    :cond_9
    iget-object v5, v1, Lcom/startapp/m;->b:Lcom/startapp/o7$a;

    .line 84
    iget-wide v5, v5, Lcom/startapp/o7$a;->f:J

    .line 85
    :goto_1
    iget-object v7, v1, Lcom/startapp/m;->b:Lcom/startapp/o7$a;

    .line 86
    iget-wide v9, v7, Lcom/startapp/o7$a;->e:J

    sub-long/2addr v5, v9

    .line 87
    invoke-static {v5, v6}, Lcom/startapp/m;->a(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "total"

    .line 88
    invoke-static {v3, v6, v5, v8}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 90
    iget-object v1, v1, Lcom/startapp/m;->b:Lcom/startapp/o7$a;

    .line 91
    iget-object v1, v1, Lcom/startapp/o7$a;->c:Ljava/util/Map;

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    const-string v5, "headers"

    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "={"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 96
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 100
    invoke-static {v3, v7, v6, v8}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_b
    const/4 v8, 0x1

    .line 101
    invoke-static {v3}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;)V

    const/16 v5, 0x5d

    .line 103
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 104
    :cond_c
    invoke-static {v3}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;)V

    const-string v1, "}"

    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_d
    invoke-static {v3}, Lcom/startapp/m;->a(Ljava/lang/StringBuilder;)V

    .line 109
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    new-instance v2, Lcom/startapp/i4;

    sget-object v3, Lcom/startapp/j4;->d:Lcom/startapp/j4;

    invoke-direct {v2, v3}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v3, "ADM"

    .line 111
    iput-object v3, v2, Lcom/startapp/i4;->d:Ljava/lang/String;

    move-object v3, v15

    .line 112
    iput-object v3, v2, Lcom/startapp/i4;->i:Ljava/lang/String;

    .line 113
    iput-object v1, v2, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 114
    invoke-virtual {v2}, Lcom/startapp/i4;->a()V

    :cond_e
    return-void
.end method
