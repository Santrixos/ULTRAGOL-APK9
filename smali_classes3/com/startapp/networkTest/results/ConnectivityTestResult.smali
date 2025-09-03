.class public Lcom/startapp/networkTest/results/ConnectivityTestResult;
.super Lcom/startapp/networkTest/results/BaseResult;
.source "Sta"


# instance fields
.field public AirportCode:Ljava/lang/String;

.field public AmazonId:Ljava/lang/String;

.field public ApnInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/networkTest/data/radio/ApnInfo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/networkTest/data/radio/ApnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public BatteryInfo:Lcom/startapp/networkTest/data/BatteryInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public BytesRead:J

.field public CallState:Lcom/startapp/networkTest/enums/voice/CallStates;

.field public CellInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/networkTest/data/radio/CellInfo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/networkTest/data/radio/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public CtId:Ljava/lang/String;

.field public DeviceInfo:Lcom/startapp/q2;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public DurationDNS:J

.field public DurationHttpGetCommand:J

.field public DurationHttpReceive:J

.field public DurationOverall:J

.field public DurationOverallNoSleep:J

.field public DurationSSL:J

.field public DurationTcpConnect:J

.field public ErrorReason:Ljava/lang/String;

.field public HTTPStatus:I

.field public HeaderBytesRead:J

.field public IdleStateOnEnd:Lcom/startapp/networkTest/enums/IdleStates;

.field public IdleStateOnStart:Lcom/startapp/networkTest/enums/IdleStates;

.field public IsAppInForeground:I

.field public IsKeepAlive:Z

.field public IspInfo:Lcom/startapp/networkTest/data/IspInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public LocalhostPingSuccess:Z

.field public LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public MemoryInfo:Lcom/startapp/h6;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public MultiCdnInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/x6;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/x6;",
            ">;"
        }
    .end annotation
.end field

.field public NetworkRegistrationInfo:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/networkTest/data/radio/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public RadioInfoOnEnd:Lcom/startapp/networkTest/data/RadioInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public ScreenState:Lcom/startapp/networkTest/enums/ScreenStates;

.field public ServerFilename:Ljava/lang/String;

.field public ServerHostname:Ljava/lang/String;

.field public ServerIp:Ljava/lang/String;

.field public ServerMultiSuccess:J

.field public SimInfo:Lcom/startapp/x9;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public SslException:Ljava/lang/String;

.field public StorageInfo:Lcom/startapp/ia;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public Success:Z

.field public TestTimestamp:Ljava/lang/String;

.field public TestType:Lcom/startapp/networkTest/enums/CtTestTypes;

.field public TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public TrafficInfo:Lcom/startapp/db;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public TruststoreTimestamp:J

.field public VoiceNetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

.field public WifiInfo:Lcom/startapp/networkTest/data/WifiInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startapp/networkTest/results/BaseResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->CtId:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TestTimestamp:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationDNS:J

    .line 23
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationTcpConnect:J

    .line 28
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationHttpGetCommand:J

    .line 33
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationHttpReceive:J

    .line 38
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationSSL:J

    .line 43
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationOverall:J

    .line 48
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DurationOverallNoSleep:J

    .line 53
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerIp:Ljava/lang/String;

    const/4 p2, 0x0

    .line 58
    iput-boolean p2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->Success:Z

    .line 63
    iput-boolean p2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->LocalhostPingSuccess:Z

    .line 68
    iput-boolean p2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IsKeepAlive:Z

    .line 73
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerHostname:Ljava/lang/String;

    .line 78
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerFilename:Ljava/lang/String;

    .line 83
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->BytesRead:J

    .line 88
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->HeaderBytesRead:J

    const/4 p2, -0x1

    .line 93
    iput p2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->HTTPStatus:I

    .line 103
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->AmazonId:Ljava/lang/String;

    .line 108
    sget-object v2, Lcom/startapp/networkTest/enums/CtTestTypes;->d:Lcom/startapp/networkTest/enums/CtTestTypes;

    iput-object v2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TestType:Lcom/startapp/networkTest/enums/CtTestTypes;

    .line 169
    sget-object v2, Lcom/startapp/networkTest/enums/ScreenStates;->a:Lcom/startapp/networkTest/enums/ScreenStates;

    iput-object v2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ScreenState:Lcom/startapp/networkTest/enums/ScreenStates;

    .line 176
    sget-object v2, Lcom/startapp/networkTest/enums/IdleStates;->a:Lcom/startapp/networkTest/enums/IdleStates;

    iput-object v2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IdleStateOnStart:Lcom/startapp/networkTest/enums/IdleStates;

    .line 183
    iput-object v2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IdleStateOnEnd:Lcom/startapp/networkTest/enums/IdleStates;

    .line 188
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ErrorReason:Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SslException:Ljava/lang/String;

    .line 204
    sget-object v2, Lcom/startapp/networkTest/enums/voice/CallStates;->d:Lcom/startapp/networkTest/enums/voice/CallStates;

    iput-object v2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->CallState:Lcom/startapp/networkTest/enums/voice/CallStates;

    .line 209
    sget-object v2, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    iput-object v2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->VoiceNetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 221
    iput-wide v0, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ServerMultiSuccess:J

    .line 256
    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->AirportCode:Ljava/lang/String;

    .line 261
    iput p2, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IsAppInForeground:I

    .line 268
    new-instance p1, Lcom/startapp/networkTest/data/BatteryInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/BatteryInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->BatteryInfo:Lcom/startapp/networkTest/data/BatteryInfo;

    .line 269
    new-instance p1, Lcom/startapp/q2;

    invoke-direct {p1}, Lcom/startapp/q2;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->DeviceInfo:Lcom/startapp/q2;

    .line 270
    new-instance p1, Lcom/startapp/networkTest/data/LocationInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/LocationInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    .line 271
    new-instance p1, Lcom/startapp/h6;

    invoke-direct {p1}, Lcom/startapp/h6;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->MemoryInfo:Lcom/startapp/h6;

    .line 272
    new-instance p1, Lcom/startapp/networkTest/data/RadioInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/RadioInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    .line 273
    new-instance p1, Lcom/startapp/networkTest/data/RadioInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/RadioInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->RadioInfoOnEnd:Lcom/startapp/networkTest/data/RadioInfo;

    .line 274
    new-instance p1, Lcom/startapp/ia;

    invoke-direct {p1}, Lcom/startapp/ia;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->StorageInfo:Lcom/startapp/ia;

    .line 275
    new-instance p1, Lcom/startapp/db;

    invoke-direct {p1}, Lcom/startapp/db;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TrafficInfo:Lcom/startapp/db;

    .line 276
    new-instance p1, Lcom/startapp/networkTest/data/WifiInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/WifiInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->WifiInfo:Lcom/startapp/networkTest/data/WifiInfo;

    .line 277
    new-instance p1, Lcom/startapp/networkTest/data/TimeInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/TimeInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;

    .line 278
    new-instance p1, Lcom/startapp/networkTest/data/IspInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/IspInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->IspInfo:Lcom/startapp/networkTest/data/IspInfo;

    .line 279
    new-instance p1, Lcom/startapp/x9;

    invoke-direct {p1}, Lcom/startapp/x9;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->SimInfo:Lcom/startapp/x9;

    .line 280
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->MultiCdnInfo:Ljava/util/ArrayList;

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->CellInfo:Ljava/util/ArrayList;

    .line 282
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->ApnInfo:Ljava/util/ArrayList;

    .line 283
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/ConnectivityTestResult;->NetworkRegistrationInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/FileTypes;->b:Lcom/startapp/networkTest/enums/FileTypes;

    invoke-static {v0, p0}, Lcom/startapp/r5;->a(Lcom/startapp/networkTest/enums/FileTypes;Lcom/startapp/networkTest/results/BaseResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
