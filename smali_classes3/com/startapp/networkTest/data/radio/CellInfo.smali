.class public Lcom/startapp/networkTest/data/radio/CellInfo;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7f4eadfc7dd7ff13L


# instance fields
.field public Arfcn:I

.field public CdmaBaseStationId:I

.field public CdmaBaseStationLatitude:I

.field public CdmaBaseStationLongitude:I

.field public CdmaDbm:I

.field public CdmaEcio:I

.field public CdmaNetworkId:I

.field public CdmaSystemId:I

.field public CellConnectionStatus:Lcom/startapp/networkTest/enums/CellConnectionStatus;

.field public CellId:J

.field public CellInfoAge:J

.field public CellNetworkType:Lcom/startapp/networkTest/enums/CellNetworkTypes;

.field public Cid:I

.field public Dbm:I

.field public EvdoDbm:I

.field public EvdoEcio:I

.field public EvdoSnr:I

.field public GsmBsic:I

.field public IsRegistered:Z

.field public Lac:I

.field public LteBand:I

.field public LteCqi:I

.field public LteDonwloadFrequency:F

.field public LteDownloadEarfcn:I

.field public LtePci:I

.field public LteRsrq:I

.field public LteRssi:I

.field public LteRssnr:I

.field public LteTac:I

.field public LteTimingAdvance:I

.field public LteUploadEarfcn:I

.field public LteUploadFrequency:F

.field public Mcc:I

.field public Mnc:I

.field public NrCsiRsrp:I

.field public NrCsiRsrq:I

.field public NrCsiSinr:I

.field public NrSsRsrp:I

.field public NrSsRsrq:I

.field public NrSsSinr:I

.field public Psc:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 13
    iput-wide v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CellInfoAge:J

    .line 25
    sget-object v2, Lcom/startapp/networkTest/enums/CellNetworkTypes;->f:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    iput-object v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CellNetworkType:Lcom/startapp/networkTest/enums/CellNetworkTypes;

    const/4 v2, -0x1

    .line 30
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->Arfcn:I

    .line 35
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->Cid:I

    .line 40
    iput-wide v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CellId:J

    .line 45
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->Lac:I

    .line 50
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->Mcc:I

    .line 55
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->Mnc:I

    .line 60
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->Psc:I

    .line 65
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->GsmBsic:I

    .line 70
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LtePci:I

    .line 75
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteTac:I

    .line 80
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteCqi:I

    const v0, 0x7fffffff

    .line 85
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRsrq:I

    .line 90
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRssnr:I

    .line 95
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteRssi:I

    .line 100
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteTimingAdvance:I

    .line 105
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteBand:I

    .line 110
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteDownloadEarfcn:I

    .line 115
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteUploadEarfcn:I

    const/4 v1, 0x0

    .line 120
    iput v1, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteDonwloadFrequency:F

    .line 125
    iput v1, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->LteUploadFrequency:F

    .line 130
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaBaseStationId:I

    .line 139
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaBaseStationLatitude:I

    .line 148
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaBaseStationLongitude:I

    .line 153
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaNetworkId:I

    .line 158
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaSystemId:I

    .line 163
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaDbm:I

    .line 168
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CdmaEcio:I

    .line 173
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->EvdoDbm:I

    .line 178
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->EvdoEcio:I

    .line 183
    iput v2, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->EvdoSnr:I

    .line 188
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->NrCsiRsrp:I

    .line 193
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->NrCsiRsrq:I

    .line 198
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->NrCsiSinr:I

    .line 203
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->NrSsRsrp:I

    .line 208
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->NrSsRsrq:I

    .line 213
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->NrSsSinr:I

    .line 218
    sget-object v1, Lcom/startapp/networkTest/enums/CellConnectionStatus;->d:Lcom/startapp/networkTest/enums/CellConnectionStatus;

    iput-object v1, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->CellConnectionStatus:Lcom/startapp/networkTest/enums/CellConnectionStatus;

    .line 226
    iput v0, p0, Lcom/startapp/networkTest/data/radio/CellInfo;->Dbm:I

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
