.class public Lcom/startapp/networkTest/data/LocationInfo;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xd03e6a9d8833232L


# instance fields
.field public IsMocked:I

.field public LocationAccuracyHorizontal:D

.field public LocationAccuracyVertical:D

.field public LocationAge:J

.field public LocationAltitude:D

.field public LocationBearing:D

.field public LocationLatitude:D

.field public LocationLongitude:D

.field public LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

.field public LocationSpeed:D

.field public LocationTimestamp:Ljava/lang/String;

.field public transient locationTimestampMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/startapp/networkTest/enums/LocationProviders;->a:Lcom/startapp/networkTest/enums/LocationProviders;

    iput-object v0, p0, Lcom/startapp/networkTest/data/LocationInfo;->LocationProvider:Lcom/startapp/networkTest/enums/LocationProviders;

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/startapp/networkTest/data/LocationInfo;->LocationTimestamp:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 66
    iput-wide v0, p0, Lcom/startapp/networkTest/data/LocationInfo;->LocationAge:J

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/startapp/networkTest/data/LocationInfo;->IsMocked:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
