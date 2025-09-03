.class public Lcom/startapp/networkTest/data/TimeInfo;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x34a5c371a427b150L


# instance fields
.field public DeviceDriftMillis:J

.field public IsSynced:Z

.field public MillisSinceLastSync:J

.field public TimeSource:Lcom/startapp/networkTest/enums/TimeSources;

.field public TimestampDateTime:Ljava/lang/String;

.field public TimestampMillis:J

.field public TimestampOffset:D

.field public TimestampTableau:Ljava/lang/String;

.field public transient day:I

.field public transient hour:I

.field public transient millisecond:I

.field public transient minute:I

.field public transient month:I

.field public transient second:I

.field public transient year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampTableau:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampDateTime:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/startapp/networkTest/enums/TimeSources;->d:Lcom/startapp/networkTest/enums/TimeSources;

    iput-object v0, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimeSource:Lcom/startapp/networkTest/enums/TimeSources;

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

.method public setMillis(J)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lcom/startapp/k2;->b(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampTableau:Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lcom/startapp/k2;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampDateTime:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampOffset:D

    .line 4
    iput-wide p1, p0, Lcom/startapp/networkTest/data/TimeInfo;->TimestampMillis:J

    .line 6
    invoke-static {p1, p2}, Lcom/startapp/k2;->c(J)Lcom/startapp/j2;

    move-result-object p1

    .line 7
    iget p2, p1, Lcom/startapp/j2;->a:I

    iput p2, p0, Lcom/startapp/networkTest/data/TimeInfo;->year:I

    .line 8
    iget p2, p1, Lcom/startapp/j2;->b:I

    iput p2, p0, Lcom/startapp/networkTest/data/TimeInfo;->month:I

    .line 9
    iget p2, p1, Lcom/startapp/j2;->c:I

    iput p2, p0, Lcom/startapp/networkTest/data/TimeInfo;->day:I

    .line 10
    iget p2, p1, Lcom/startapp/j2;->d:I

    iput p2, p0, Lcom/startapp/networkTest/data/TimeInfo;->hour:I

    .line 11
    iget p2, p1, Lcom/startapp/j2;->e:I

    iput p2, p0, Lcom/startapp/networkTest/data/TimeInfo;->minute:I

    .line 12
    iget p2, p1, Lcom/startapp/j2;->f:I

    iput p2, p0, Lcom/startapp/networkTest/data/TimeInfo;->second:I

    .line 13
    iget p1, p1, Lcom/startapp/j2;->g:I

    iput p1, p0, Lcom/startapp/networkTest/data/TimeInfo;->millisecond:I

    return-void
.end method
