.class public Lcom/startapp/networkTest/controller/LocationController$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/networkTest/controller/LocationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/networkTest/controller/LocationController;


# direct methods
.method private constructor <init>(Lcom/startapp/networkTest/controller/LocationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startapp/networkTest/controller/LocationController;Lcom/startapp/networkTest/controller/LocationController$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/startapp/networkTest/controller/LocationController$b;-><init>(Lcom/startapp/networkTest/controller/LocationController;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v0}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController;)Landroid/location/Location;

    move-result-object v0

    const-string v1, "gps"

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v0}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v0}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v0}, Lcom/startapp/networkTest/controller/LocationController;->b(Lcom/startapp/networkTest/controller/LocationController;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v0, p1}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController;Landroid/location/Location;)Landroid/location/Location;

    .line 21
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/startapp/networkTest/controller/LocationController;->b(Lcom/startapp/networkTest/controller/LocationController;J)J

    .line 23
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {p1}, Lcom/startapp/networkTest/controller/LocationController;->a(Landroid/location/Location;)Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController;Lcom/startapp/networkTest/data/LocationInfo;)Lcom/startapp/networkTest/data/LocationInfo;

    .line 24
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v0}, Lcom/startapp/networkTest/controller/LocationController;->c(Lcom/startapp/networkTest/controller/LocationController;)Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object v0

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/startapp/networkTest/data/LocationInfo;->LocationAge:J

    .line 26
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/startapp/networkTest/controller/LocationController;->a(Lcom/startapp/networkTest/controller/LocationController;J)J

    .line 28
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v0}, Lcom/startapp/networkTest/controller/LocationController;->d(Lcom/startapp/networkTest/controller/LocationController;)Lcom/startapp/networkTest/controller/LocationController$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v0}, Lcom/startapp/networkTest/controller/LocationController;->d(Lcom/startapp/networkTest/controller/LocationController;)Lcom/startapp/networkTest/controller/LocationController$c;

    move-result-object v0

    iget-object v2, p0, Lcom/startapp/networkTest/controller/LocationController$b;->a:Lcom/startapp/networkTest/controller/LocationController;

    invoke-static {v2}, Lcom/startapp/networkTest/controller/LocationController;->c(Lcom/startapp/networkTest/controller/LocationController;)Lcom/startapp/networkTest/data/LocationInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/startapp/networkTest/controller/LocationController$c;->a(Lcom/startapp/networkTest/data/LocationInfo;)V

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-static {}, Lcom/startapp/a5;->f()Lcom/startapp/ua;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/startapp/ua;->a(Landroid/location/Location;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
