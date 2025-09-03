.class public Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;
.super Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;
.source "Sta"


# instance fields
.field public Rtt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;->Rtt:I

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
    invoke-super {p0}, Lcom/startapp/networkTest/results/speedtest/MeasurementPointBase;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
