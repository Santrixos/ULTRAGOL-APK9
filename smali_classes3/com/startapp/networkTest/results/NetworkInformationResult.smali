.class public Lcom/startapp/networkTest/results/NetworkInformationResult;
.super Lcom/startapp/networkTest/results/BaseResult;
.source "Sta"


# instance fields
.field public CallState:Lcom/startapp/networkTest/enums/voice/CallStates;

.field public CellIdDeltaDistance:D

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

.field public LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public NirId:Ljava/lang/String;

.field public PrevCellId:Ljava/lang/String;

.field public PrevLAC:Ljava/lang/String;

.field public PrevMCC:Ljava/lang/String;

.field public PrevMNC:Ljava/lang/String;

.field public PrevNetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

.field public PrevNirId:Ljava/lang/String;

.field public PrevRXLevel:I

.field public RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public ScreenState:Lcom/startapp/networkTest/enums/ScreenStates;

.field public TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public Timestamp:Ljava/lang/String;

.field public TriggerEvent:Lcom/startapp/networkTest/enums/TriggerEvents;

.field public WifiInfo:Lcom/startapp/networkTest/data/WifiInfo;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public transient timestampMillis:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startapp/networkTest/results/BaseResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->NirId:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->Timestamp:Ljava/lang/String;

    .line 26
    sget-object p2, Lcom/startapp/networkTest/enums/TriggerEvents;->a:Lcom/startapp/networkTest/enums/TriggerEvents;

    iput-object p2, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->TriggerEvent:Lcom/startapp/networkTest/enums/TriggerEvents;

    .line 33
    sget-object p2, Lcom/startapp/networkTest/enums/ScreenStates;->a:Lcom/startapp/networkTest/enums/ScreenStates;

    iput-object p2, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->ScreenState:Lcom/startapp/networkTest/enums/ScreenStates;

    .line 56
    sget-object p2, Lcom/startapp/networkTest/enums/voice/CallStates;->d:Lcom/startapp/networkTest/enums/voice/CallStates;

    iput-object p2, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CallState:Lcom/startapp/networkTest/enums/voice/CallStates;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 62
    iput-wide v0, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CellIdDeltaDistance:D

    .line 68
    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevNirId:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevCellId:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevLAC:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevMCC:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevMNC:Ljava/lang/String;

    .line 106
    sget-object p1, Lcom/startapp/networkTest/enums/NetworkTypes;->a:Lcom/startapp/networkTest/enums/NetworkTypes;

    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->PrevNetworkType:Lcom/startapp/networkTest/enums/NetworkTypes;

    .line 121
    new-instance p1, Lcom/startapp/networkTest/data/RadioInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/RadioInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->RadioInfo:Lcom/startapp/networkTest/data/RadioInfo;

    .line 122
    new-instance p1, Lcom/startapp/networkTest/data/LocationInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/LocationInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->LocationInfo:Lcom/startapp/networkTest/data/LocationInfo;

    .line 123
    new-instance p1, Lcom/startapp/networkTest/data/TimeInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/TimeInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->TimeInfo:Lcom/startapp/networkTest/data/TimeInfo;

    .line 124
    new-instance p1, Lcom/startapp/networkTest/data/WifiInfo;

    invoke-direct {p1}, Lcom/startapp/networkTest/data/WifiInfo;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->WifiInfo:Lcom/startapp/networkTest/data/WifiInfo;

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/startapp/networkTest/results/NetworkInformationResult;->CellInfo:Ljava/util/ArrayList;

    return-void
.end method
