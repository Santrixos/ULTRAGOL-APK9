.class public Lcom/startapp/q2;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public BluetoothInfo:Lcom/startapp/l1;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public BuildFingerprint:Ljava/lang/String;

.field public DeviceManufacturer:Ljava/lang/String;

.field public DeviceName:Ljava/lang/String;

.field public DeviceUpTime:J

.field public HostAppInfo:Lcom/startapp/x3;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public IsRooted:Z

.field public MultiSimInfo:Lcom/startapp/y6;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public OS:Lcom/startapp/networkTest/enums/Os;

.field public OSVersion:Ljava/lang/String;

.field public OsSystemVersion:Ljava/lang/String;

.field public PhoneCount:I

.field public PhoneType:Lcom/startapp/networkTest/enums/PhoneTypes;

.field public PowerSaveMode:Lcom/startapp/networkTest/enums/ThreeState;

.field public SimOperator:Ljava/lang/String;

.field public SimOperatorName:Ljava/lang/String;

.field public SimState:Lcom/startapp/networkTest/enums/SimStates;

.field public TAC:Ljava/lang/String;

.field public UserLocal:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/startapp/q2;->DeviceManufacturer:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/startapp/q2;->DeviceName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/startapp/q2;->SimOperator:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/startapp/q2;->SimOperatorName:Ljava/lang/String;

    .line 24
    sget-object v1, Lcom/startapp/networkTest/enums/SimStates;->a:Lcom/startapp/networkTest/enums/SimStates;

    iput-object v1, p0, Lcom/startapp/q2;->SimState:Lcom/startapp/networkTest/enums/SimStates;

    .line 36
    sget-object v1, Lcom/startapp/networkTest/enums/Os;->a:Lcom/startapp/networkTest/enums/Os;

    iput-object v1, p0, Lcom/startapp/q2;->OS:Lcom/startapp/networkTest/enums/Os;

    .line 41
    iput-object v0, p0, Lcom/startapp/q2;->OSVersion:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/startapp/q2;->TAC:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/startapp/q2;->BuildFingerprint:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/startapp/q2;->OsSystemVersion:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/startapp/q2;->UserLocal:Ljava/lang/String;

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/startapp/q2;->PhoneCount:I

    .line 85
    sget-object v0, Lcom/startapp/networkTest/enums/ThreeState;->a:Lcom/startapp/networkTest/enums/ThreeState;

    iput-object v0, p0, Lcom/startapp/q2;->PowerSaveMode:Lcom/startapp/networkTest/enums/ThreeState;

    .line 96
    sget-object v0, Lcom/startapp/networkTest/enums/PhoneTypes;->e:Lcom/startapp/networkTest/enums/PhoneTypes;

    iput-object v0, p0, Lcom/startapp/q2;->PhoneType:Lcom/startapp/networkTest/enums/PhoneTypes;

    .line 108
    new-instance v0, Lcom/startapp/l1;

    invoke-direct {v0}, Lcom/startapp/l1;-><init>()V

    iput-object v0, p0, Lcom/startapp/q2;->BluetoothInfo:Lcom/startapp/l1;

    .line 109
    new-instance v0, Lcom/startapp/y6;

    invoke-direct {v0}, Lcom/startapp/y6;-><init>()V

    iput-object v0, p0, Lcom/startapp/q2;->MultiSimInfo:Lcom/startapp/y6;

    .line 110
    new-instance v0, Lcom/startapp/x3;

    invoke-direct {v0}, Lcom/startapp/x3;-><init>()V

    iput-object v0, p0, Lcom/startapp/q2;->HostAppInfo:Lcom/startapp/x3;

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
