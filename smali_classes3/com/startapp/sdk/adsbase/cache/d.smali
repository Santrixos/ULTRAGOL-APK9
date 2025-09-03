.class public Lcom/startapp/sdk/adsbase/cache/d;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/adsbase/cache/d$e;,
        Lcom/startapp/sdk/adsbase/cache/d$d;
    }
.end annotation


# static fields
.field public static h:Lcom/startapp/sdk/adsbase/cache/d;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/startapp/sdk/adsbase/cache/CacheKey;",
            "Lcom/startapp/sdk/adsbase/cache/h;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Z

.field public e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/startapp/sdk/adsbase/cache/d$e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/startapp/sdk/adsbase/cache/h$b;

.field public g:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startapp/sdk/adsbase/cache/d;

    invoke-direct {v0}, Lcom/startapp/sdk/adsbase/cache/d;-><init>()V

    sput-object v0, Lcom/startapp/sdk/adsbase/cache/d;->h:Lcom/startapp/sdk/adsbase/cache/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->b:Ljava/util/Map;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->c:Z

    .line 15
    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->d:Z

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->e:Ljava/util/Queue;

    return-void
.end method

.method public static a(Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;)Ljava/lang/String;
    .locals 1

    const-string v0, "autoLoadNotShownAdPrefix"

    .line 206
    invoke-static {v0}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/startapp/sdk/adsbase/cache/CacheKey;)Lcom/startapp/sdk/adsbase/d;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/adsbase/cache/h;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p1, Lcom/startapp/sdk/adsbase/cache/h;->e:Lcom/startapp/sdk/adsbase/d;

    return-object p1

    :cond_1
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/cache/d$d;)V
    .locals 8

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {p4}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    :cond_0
    move-object v4, p4

    .line 2
    sget-object p4, Lcom/startapp/sdk/adsbase/cache/d$c;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    goto :goto_1

    .line 14
    :pswitch_0
    sget-object p4, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 15
    sget-object p4, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 16
    invoke-virtual {p4}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->i()I

    move-result p4

    .line 17
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-ge v0, p4, :cond_3

    .line 18
    sget-object p4, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 19
    invoke-virtual {p4}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->j()I

    move-result p4

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-lt v0, p4, :cond_1

    .line 22
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->isForceFullpage()Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_1
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->isForceOverlay()Z

    move-result p4

    if-nez p4, :cond_2

    .line 23
    sget-object p4, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->a:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    goto :goto_0

    .line 25
    :cond_2
    sget-object p4, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->e:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    goto :goto_0

    .line 26
    :cond_3
    sget-object p4, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->a:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object p4, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->e:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    goto :goto_0

    .line 28
    :pswitch_2
    sget-object p4, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 29
    sget-object p4, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->c:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    :goto_0
    move-object v3, p4

    goto :goto_2

    .line 60
    :goto_1
    sget-object p4, Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;->a:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    goto :goto_0

    .line 61
    :goto_2
    sget-object p4, Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;->REWARDED_VIDEO:Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;

    invoke-virtual {p3, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 62
    sget-object p3, Lcom/startapp/sdk/adsbase/Ad$AdType;->REWARDED_VIDEO:Lcom/startapp/sdk/adsbase/Ad$AdType;

    invoke-virtual {v4, p3}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->setType(Lcom/startapp/sdk/adsbase/Ad$AdType;)V

    goto :goto_3

    .line 63
    :cond_4
    sget-object p4, Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;->VIDEO:Lcom/startapp/sdk/adsbase/StartAppAd$AdMode;

    invoke-virtual {p3, p4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 64
    sget-object p3, Lcom/startapp/sdk/adsbase/Ad$AdType;->VIDEO:Lcom/startapp/sdk/adsbase/Ad$AdType;

    invoke-virtual {v4, p3}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->setType(Lcom/startapp/sdk/adsbase/Ad$AdType;)V

    :cond_5
    :goto_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 65
    invoke-virtual/range {v0 .. v7}, Lcom/startapp/sdk/adsbase/cache/d;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/cache/d$d;ZI)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/cache/d$d;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 160
    invoke-virtual/range {v0 .. v7}, Lcom/startapp/sdk/adsbase/cache/d;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/cache/d$d;ZI)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/cache/d$d;ZI)V
    .locals 6

    .line 66
    invoke-static {p1}, Lcom/startapp/j0;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/cache/d;->g:Landroid/content/Context;

    if-nez p4, :cond_1

    .line 70
    new-instance p4, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {p4}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    :cond_1
    move-object v4, p4

    .line 73
    new-instance p1, Lcom/startapp/sdk/adsbase/cache/CacheKey;

    invoke-direct {p1, p3, v4}, Lcom/startapp/sdk/adsbase/cache/CacheKey;-><init>(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V

    .line 75
    iget-boolean p4, p0, Lcom/startapp/sdk/adsbase/cache/d;->d:Z

    if-eqz p4, :cond_2

    if-nez p6, :cond_2

    .line 76
    iget-object p4, p0, Lcom/startapp/sdk/adsbase/cache/d;->e:Ljava/util/Queue;

    new-instance p6, Lcom/startapp/sdk/adsbase/cache/d$e;

    new-instance v5, Lcom/startapp/sdk/adsbase/cache/d$a;

    invoke-direct {v5, p0, p5, p1}, Lcom/startapp/sdk/adsbase/cache/d$a;-><init>(Lcom/startapp/sdk/adsbase/cache/d;Lcom/startapp/sdk/adsbase/cache/d$d;Lcom/startapp/sdk/adsbase/cache/CacheKey;)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/startapp/sdk/adsbase/cache/d$e;-><init>(Lcom/startapp/sdk/adsbase/cache/d;Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    invoke-interface {p4, p6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 96
    :cond_2
    new-instance p4, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {p4, v4}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>(Lcom/startapp/sdk/adsbase/model/AdPreferences;)V

    .line 98
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/sdk/adsbase/cache/h;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_6

    .line 101
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    .line 106
    new-instance v1, Lcom/startapp/sdk/adsbase/cache/h;

    iget-object v4, p0, Lcom/startapp/sdk/adsbase/cache/d;->g:Landroid/content/Context;

    invoke-direct {v1, v4, p3, p4}, Lcom/startapp/sdk/adsbase/cache/h;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V

    goto :goto_0

    .line 107
    :cond_3
    new-instance v1, Lcom/startapp/sdk/adsbase/cache/h;

    iget-object v4, p0, Lcom/startapp/sdk/adsbase/cache/d;->g:Landroid/content/Context;

    .line 108
    invoke-direct {v1, v4, p3, p4}, Lcom/startapp/sdk/adsbase/cache/h;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;Lcom/startapp/sdk/adsbase/model/AdPreferences;)V

    .line 109
    iput-boolean v3, v1, Lcom/startapp/sdk/adsbase/cache/h;->n:Z

    .line 110
    :goto_0
    iget-object p3, p0, Lcom/startapp/sdk/adsbase/cache/d;->f:Lcom/startapp/sdk/adsbase/cache/h$b;

    if-nez p3, :cond_4

    .line 111
    new-instance p3, Lcom/startapp/sdk/adsbase/cache/e;

    invoke-direct {p3, p0}, Lcom/startapp/sdk/adsbase/cache/e;-><init>(Lcom/startapp/sdk/adsbase/cache/d;)V

    iput-object p3, p0, Lcom/startapp/sdk/adsbase/cache/d;->f:Lcom/startapp/sdk/adsbase/cache/h$b;

    .line 128
    :cond_4
    iget-object p3, p0, Lcom/startapp/sdk/adsbase/cache/d;->f:Lcom/startapp/sdk/adsbase/cache/h$b;

    .line 129
    iput-object p3, v1, Lcom/startapp/sdk/adsbase/cache/h;->p:Lcom/startapp/sdk/adsbase/cache/h$b;

    if-eqz p6, :cond_5

    .line 130
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/adsbase/cache/d;->b(Lcom/startapp/sdk/adsbase/cache/CacheKey;)Ljava/lang/String;

    move-result-object p3

    .line 131
    iput-object p3, v1, Lcom/startapp/sdk/adsbase/cache/h;->h:Ljava/lang/String;

    .line 132
    iput-boolean v2, v1, Lcom/startapp/sdk/adsbase/cache/h;->i:Z

    .line 133
    iput p7, v1, Lcom/startapp/sdk/adsbase/cache/h;->m:I

    .line 134
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/startapp/sdk/adsbase/cache/d;->a(Lcom/startapp/sdk/adsbase/cache/CacheKey;Lcom/startapp/sdk/adsbase/cache/h;)V

    goto :goto_1

    .line 135
    :cond_6
    iput-object p4, v1, Lcom/startapp/sdk/adsbase/cache/h;->d:Lcom/startapp/sdk/adsbase/model/AdPreferences;

    .line 136
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    new-instance p3, Lcom/startapp/sdk/adsbase/cache/d$b;

    invoke-direct {p3, p0, p5, p1}, Lcom/startapp/sdk/adsbase/cache/d$b;-><init>(Lcom/startapp/sdk/adsbase/cache/d;Lcom/startapp/sdk/adsbase/cache/d$d;Lcom/startapp/sdk/adsbase/cache/CacheKey;)V

    .line 139
    invoke-virtual {v1, p2, p3, v3, v2}, Lcom/startapp/sdk/adsbase/cache/h;->a(Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;ZZ)V

    return-void

    :catchall_0
    move-exception p1

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/startapp/sdk/adsbase/cache/CacheKey;Lcom/startapp/sdk/adsbase/cache/h;)V
    .locals 9

    .line 161
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    monitor-enter v0

    .line 162
    :try_start_0
    sget-object v1, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a:Lcom/startapp/sdk/adsbase/cache/CacheMetaData;

    .line 163
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a()Lcom/startapp/sdk/adsbase/cache/ACMConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/cache/ACMConfig;->d()I

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iget-object v2, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lt v2, v1, :cond_2

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    .line 165
    iget-object v4, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/startapp/sdk/adsbase/cache/CacheKey;

    .line 166
    iget-object v6, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/startapp/sdk/adsbase/cache/h;

    .line 167
    iget-object v7, v6, Lcom/startapp/sdk/adsbase/cache/h;->a:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    iget-object v8, p2, Lcom/startapp/sdk/adsbase/cache/h;->a:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    if-ne v7, v8, :cond_0

    .line 168
    iget-wide v6, v6, Lcom/startapp/sdk/adsbase/cache/h;->g:J

    cmp-long v8, v6, v1

    if-gez v8, :cond_0

    move-object v3, v5

    move-wide v1, v6

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 175
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_2
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v1

    .line 182
    sget-object v1, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a:Lcom/startapp/sdk/adsbase/cache/CacheMetaData;

    .line 183
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->c()F

    move-result v1

    float-to-double v1, v1

    cmpg-double v3, p1, v1

    if-gez v3, :cond_3

    .line 184
    new-instance p1, Lcom/startapp/i4;

    sget-object p2, Lcom/startapp/j4;->d:Lcom/startapp/j4;

    invoke-direct {p1, p2}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string p2, "Cache Size"

    .line 185
    iput-object p2, p1, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 186
    iget-object p2, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    .line 187
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 188
    iput-object p2, p1, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Lcom/startapp/i4;->a()V

    .line 192
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 6

    .line 143
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/sdk/adsbase/cache/h;

    .line 144
    iget-object v2, v1, Lcom/startapp/sdk/adsbase/cache/h;->e:Lcom/startapp/sdk/adsbase/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 145
    sget-object v5, Lcom/startapp/wb;->a:Ljava/util/Map;

    instance-of v2, v2, Lcom/startapp/sdk/ads/interstitials/ReturnAd;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 146
    sget-object v2, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a:Lcom/startapp/sdk/adsbase/cache/CacheMetaData;

    .line 147
    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a()Lcom/startapp/sdk/adsbase/cache/ACMConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/cache/ACMConfig;->g()Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    iget-object v2, v1, Lcom/startapp/sdk/adsbase/cache/h;->j:Lcom/startapp/q1;

    .line 149
    iget-object v5, v2, Lcom/startapp/p1;->b:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 150
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 151
    :cond_0
    iput-boolean v4, v2, Lcom/startapp/p1;->d:Z

    goto :goto_1

    .line 152
    :cond_1
    iget-object v2, v1, Lcom/startapp/sdk/adsbase/cache/h;->j:Lcom/startapp/q1;

    .line 153
    iget-object v5, v2, Lcom/startapp/p1;->b:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 154
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    :cond_2
    iput-boolean v4, v2, Lcom/startapp/p1;->d:Z

    .line 156
    :cond_3
    :goto_1
    iget-object v1, v1, Lcom/startapp/sdk/adsbase/cache/h;->k:Lcom/startapp/o1;

    .line 157
    iget-object v2, v1, Lcom/startapp/p1;->b:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 158
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 159
    :cond_4
    iput-boolean v4, v1, Lcom/startapp/p1;->d:Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)Z
    .locals 3

    .line 193
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    return v1

    .line 195
    :cond_0
    sget-object p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 196
    sget-object p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 197
    iget-boolean p1, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->u:Z

    if-eqz p1, :cond_1

    .line 198
    sget-object p1, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 199
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->K()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 201
    :cond_2
    sget-object p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->D:Ljava/lang/Object;

    .line 202
    sget-object p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal$d;->a:Lcom/startapp/sdk/adsbase/StartAppSDKInternal;

    .line 203
    iget-boolean p1, p1, Lcom/startapp/sdk/adsbase/StartAppSDKInternal;->w:Z

    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 204
    sget-object p1, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 205
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->L()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public b(Lcom/startapp/sdk/adsbase/cache/CacheKey;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/cache/CacheKey;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2d

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/sdk/adsbase/cache/CacheKey;

    invoke-virtual {v2}, Lcom/startapp/sdk/adsbase/cache/CacheKey;->a()Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/startapp/sdk/adsbase/cache/CacheKey;)Lcom/startapp/sdk/adsbase/d;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/cache/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/startapp/sdk/adsbase/cache/h;

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/cache/h;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p1, Lcom/startapp/sdk/adsbase/cache/h;->e:Lcom/startapp/sdk/adsbase/d;

    const/4 v2, 0x0

    .line 4
    iput v2, p1, Lcom/startapp/sdk/adsbase/cache/h;->m:I

    .line 5
    iput-object v0, p1, Lcom/startapp/sdk/adsbase/cache/h;->o:Ljava/lang/Long;

    .line 7
    sget-object v2, Lcom/startapp/sdk/adsbase/AdsConstants;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    iget-boolean v2, p1, Lcom/startapp/sdk/adsbase/cache/h;->n:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 9
    invoke-virtual {p1, v0, v0, v2, v2}, Lcom/startapp/sdk/adsbase/cache/h;->a(Lcom/startapp/sdk/adsbase/StartAppAd;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;ZZ)V

    goto :goto_0

    .line 10
    :cond_1
    iget-boolean v0, p1, Lcom/startapp/sdk/adsbase/cache/h;->n:Z

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p1, Lcom/startapp/sdk/adsbase/cache/h;->p:Lcom/startapp/sdk/adsbase/cache/h$b;

    if-eqz v0, :cond_2

    .line 12
    check-cast v0, Lcom/startapp/sdk/adsbase/cache/e;

    invoke-virtual {v0, p1}, Lcom/startapp/sdk/adsbase/cache/e;->a(Lcom/startapp/sdk/adsbase/cache/h;)V

    .line 15
    :cond_2
    iget-object p1, p1, Lcom/startapp/sdk/adsbase/cache/h;->j:Lcom/startapp/q1;

    if-eqz p1, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/startapp/p1;->e()V

    :cond_3
    :goto_0
    move-object v0, v1

    :cond_4
    return-object v0
.end method
