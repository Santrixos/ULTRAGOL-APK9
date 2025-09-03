.class public Lcom/startapp/networkTest/data/radio/ApnInfo;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public Apn:Ljava/lang/String;

.field public ApnTypes:Ljava/lang/String;

.field public Capabilities:Ljava/lang/String;

.field public MobileDataConnectionState:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

.field public NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

.field public PcscfAddresses:Ljava/lang/String;

.field public Reason:Ljava/lang/String;

.field public RxBytes:J

.field public SamsungImsServices:Ljava/lang/String;

.field public SamsungSipError:I

.field public SubscriptionId:I

.field public TxBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->Apn:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->ApnTypes:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->Reason:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->Capabilities:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->PcscfAddresses:Ljava/lang/String;

    const/4 v1, -0x1

    .line 37
    iput v1, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->SamsungSipError:I

    .line 42
    iput-object v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->SamsungImsServices:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;->a:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    iput-object v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->MobileDataConnectionState:Lcom/startapp/networkTest/enums/wifi/WifiDetailedStates;

    .line 54
    iput v1, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->SubscriptionId:I

    const-wide/16 v0, -0x1

    .line 59
    iput-wide v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->TxBytes:J

    .line 64
    iput-wide v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->RxBytes:J

    .line 71
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    iput-object v0, p0, Lcom/startapp/networkTest/data/radio/ApnInfo;->NetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

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
