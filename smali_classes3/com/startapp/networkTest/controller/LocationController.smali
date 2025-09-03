.class public Lcom/startapp/networkTest/controller/LocationController;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/networkTest/controller/LocationController$b;,
        Lcom/startapp/networkTest/controller/LocationController$c;,
        Lcom/startapp/networkTest/controller/LocationController$ProviderMode;
    }
.end annotation


# static fields
.field private static j:D = 0.0

.field private static k:D = 0.0

.field private static final l:Ljava/lang/String; = "LocationController"

.field private static final m:Z = false


# instance fields
.field private a:Landroid/location/LocationManager;

.field private b:J

.field private c:Lcom/startapp/networkTest/data/LocationInfo;

.field private d:Landroid/location/Location;

.field private e:J

.field private f:Lcom/startapp/networkTest/controller/LocationController$b;

.field private g:J

.field private h:Z

.field private i:Lcom/startapp/networkTest/controller/LocationController$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa0

    .line 2
    iput-wide v0, p0, Lcom/startapp/networkTest/controller/LocationController;->g:J

    const-string v0, "location"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    .line 12
    new-instance p1, Lcom/startapp/networkTest/controller/LocationController$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/startapp/networkTest/controller/LocationController$b;-><init>(Lcom/startapp/networkTest/controller/LocationController;Lcom/startapp/networkTest/controller/LocationController$a;)V

    iput-object p1, p0, Lcom/startapp/networkTest/controller/LocationController;->f:Lcom/startapp/networkTest/controller/LocationController$b;

    return-void
.end method

.method public static a()D
    .locals 2

    .line 79
    sget-wide v0, Lcom/startapp/networkTest/controller/LocationController;->j:D

    return-wide v0
.end method

.method public static synthetic a(Lcom/startapp/networkTest/controller/LocationController;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/startapp/networkTest/controller/LocationController;->b:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/startapp/networkTest/controller/LocationController;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/networkTest/controller/LocationController;->d:Landroid/location/Location;

    return-object p0
.end method

.method public static synthetic a(Lcom/startapp/networkTest/controller/LocationController;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/networkTest/controller/LocationController;->d:Landroid/location/Location;

    return-object p1
.end method

.method public static synthetic a(Landroid/location/Location;)Lcom/startapp/networkTest/data/LocationInfo;
    .locals 0

    .line 5
    invoke-static {p0}, Lcom/startapp/networkTest/controller/LocationController;->b(Landroid/location/Location;)Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/startapp/networkTest/controller/LocationController;Lcom/startapp/networkTest/data/LocationInfo;)Lcom/startapp/networkTest/data/LocationInfo;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    return-object p1
.end method

.method public static b()D
    .locals 2

    .line 32
    sget-wide v0, Lcom/startapp/networkTest/controller/LocationController;->k:D

    return-wide v0
.end method

.method public static synthetic b(Lcom/startapp/networkTest/controller/LocationController;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/networkTest/controller/LocationController;->b:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/startapp/networkTest/controller/LocationController;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/startapp/networkTest/controller/LocationController;->e:J

    return-wide p1
.end method

.method private static b(Landroid/location/Location;)Lcom/startapp/networkTest/data/LocationInfo;
    .locals 4

    .line 3
    new-instance v0, Lcom/startapp/networkTest/data/LocationInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/LocationInfo;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationAccuracyHorizontal:D

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationAccuracyVertical:D

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationAccuracyVertical:D

    .line 10
    :goto_0
    invoke-static {}, Lcom/startapp/ua;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->locationTimestampMillis:J

    .line 11
    invoke-static {v2, v3}, Lcom/startapp/k2;->b(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationTimestamp:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationAltitude:D

    .line 13
    invoke-virtual {p0}, Landroid/location/Location;->getBearing()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationBearing:D

    .line 14
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationLatitude:D

    .line 15
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationLongitude:D

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v1

    iput v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->IsMocked:I

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 21
    sget-object v1, Lcom/startapp/networkTest/enums/LocationProviders;->a:Lcom/startapp/networkTest/enums/LocationProviders;

    iput-object v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    goto :goto_1

    .line 22
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 23
    sget-object v1, Lcom/startapp/networkTest/enums/LocationProviders;->b:Lcom/startapp/networkTest/enums/LocationProviders;

    iput-object v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    sget-object v1, Lcom/startapp/networkTest/enums/LocationProviders;->c:Lcom/startapp/networkTest/enums/LocationProviders;

    iput-object v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    goto :goto_1

    .line 26
    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 27
    sget-object v1, Lcom/startapp/networkTest/enums/LocationProviders;->d:Lcom/startapp/networkTest/enums/LocationProviders;

    iput-object v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    goto :goto_1

    .line 29
    :cond_5
    sget-object v1, Lcom/startapp/networkTest/enums/LocationProviders;->a:Lcom/startapp/networkTest/enums/LocationProviders;

    iput-object v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    .line 31
    :goto_1
    invoke-virtual {p0}, Landroid/location/Location;->getSpeed()F

    move-result p0

    float-to-double v1, p0

    iput-wide v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationSpeed:D

    return-object v0
.end method

.method public static synthetic c(Lcom/startapp/networkTest/controller/LocationController;)Lcom/startapp/networkTest/data/LocationInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    return-object p0
.end method

.method public static synthetic d(Lcom/startapp/networkTest/controller/LocationController;)Lcom/startapp/networkTest/controller/LocationController$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startapp/networkTest/controller/LocationController;->i:Lcom/startapp/networkTest/controller/LocationController$c;

    return-object p0
.end method

.method private d()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    move-object v3, v1

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 11
    :try_start_0
    iget-object v4, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    .line 15
    invoke-static {v4}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception v4

    .line 16
    invoke-static {v4}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :goto_1
    move-object v4, v1

    :goto_2
    if-eqz v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_3

    .line 24
    :cond_0
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    :goto_3
    move-object v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :cond_3
    if-eqz v1, :cond_5

    .line 32
    iput-object v1, p0, Lcom/startapp/networkTest/controller/LocationController;->d:Landroid/location/Location;

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    .line 36
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/startapp/networkTest/controller/LocationController;->e:J

    goto :goto_4

    .line 40
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/startapp/networkTest/controller/LocationController;->e:J

    .line 43
    :goto_4
    invoke-static {v1}, Lcom/startapp/networkTest/controller/LocationController;->b(Landroid/location/Location;)Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 80
    iput-wide p1, p0, Lcom/startapp/networkTest/controller/LocationController;->g:J

    return-void
.end method

.method public a(Lcom/startapp/networkTest/controller/LocationController$ProviderMode;)V
    .locals 13

    if-eqz p1, :cond_b

    .line 6
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/startapp/networkTest/controller/LocationController;->h:Z

    .line 12
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 18
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v9, "network"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x2

    goto :goto_1

    :sswitch_1
    const-string v9, "gps"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "passive"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v5, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 32
    :goto_2
    :try_start_0
    sget-object v0, Lcom/startapp/networkTest/controller/LocationController$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_a

    if-eq p1, v2, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v6, :cond_b

    .line 49
    iget-object v7, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    const-string v8, "passive"

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/startapp/networkTest/controller/LocationController;->f:Lcom/startapp/networkTest/controller/LocationController$b;

    invoke-virtual/range {v7 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_b

    .line 50
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/startapp/networkTest/controller/LocationController;->f:Lcom/startapp/networkTest/controller/LocationController$b;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_3

    :cond_8
    if-eqz v3, :cond_9

    .line 51
    iget-object v6, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    const-string v7, "gps"

    const-wide/16 v8, 0x1f4

    const/high16 v10, 0x40a00000    # 5.0f

    iget-object v11, p0, Lcom/startapp/networkTest/controller/LocationController;->f:Lcom/startapp/networkTest/controller/LocationController$b;

    invoke-virtual/range {v6 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_9
    if-eqz v5, :cond_b

    .line 53
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/startapp/networkTest/controller/LocationController;->f:Lcom/startapp/networkTest/controller/LocationController$b;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_3

    :cond_a
    if-eqz v3, :cond_b

    .line 54
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x1f4

    const/high16 v4, 0x40a00000    # 5.0f

    iget-object v5, p0, Lcom/startapp/networkTest/controller/LocationController;->f:Lcom/startapp/networkTest/controller/LocationController$b;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 76
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 77
    invoke-static {p1}, Lcom/startapp/x2;->b(Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2f3590d9 -> :sswitch_2
        0x190aa -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/startapp/networkTest/controller/LocationController$c;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/startapp/networkTest/controller/LocationController;->i:Lcom/startapp/networkTest/controller/LocationController$c;

    return-void
.end method

.method public c()Lcom/startapp/networkTest/data/LocationInfo;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/startapp/networkTest/controller/LocationController;->d()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/startapp/networkTest/data/LocationInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/LocationInfo;-><init>()V

    iput-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    .line 7
    sget-object v1, Lcom/startapp/networkTest/enums/LocationProviders;->a:Lcom/startapp/networkTest/enums/LocationProviders;

    iput-object v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    iget-object v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    sget-object v2, Lcom/startapp/networkTest/enums/LocationProviders;->a:Lcom/startapp/networkTest/enums/LocationProviders;

    if-eq v1, v2, :cond_2

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/startapp/networkTest/controller/LocationController;->e:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationAge:J

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    iget-wide v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationLatitude:D

    sput-wide v1, Lcom/startapp/networkTest/controller/LocationController;->j:D

    .line 15
    iget-wide v1, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationLongitude:D

    sput-wide v1, Lcom/startapp/networkTest/controller/LocationController;->k:D

    .line 18
    :try_start_0
    invoke-virtual {v0}, Lcom/startapp/networkTest/data/LocationInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/networkTest/data/LocationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    .line 22
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->c:Lcom/startapp/networkTest/data/LocationInfo;

    return-object v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/networkTest/controller/LocationController;->g:J

    return-wide v0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController;->a:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/startapp/networkTest/controller/LocationController;->f:Lcom/startapp/networkTest/controller/LocationController$b;

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/startapp/networkTest/controller/LocationController;->h:Z

    return-void
.end method
