.class public Lcom/startapp/l1;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public A2DPConnectionState:Lcom/startapp/networkTest/enums/bluetooth/BluetoothConnectionState;

.field public BluetoothEnabled:Z

.field public ConnectedA2DPBluetoothDevices:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/k1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/k1;",
            ">;"
        }
    .end annotation
.end field

.field public ConnectedHeadsetBluetoothDevices:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/k1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/k1;",
            ">;"
        }
    .end annotation
.end field

.field public ConnectedHealthBluetoothDevices:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/k1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/k1;",
            ">;"
        }
    .end annotation
.end field

.field public HeadsetConnectionState:Lcom/startapp/networkTest/enums/bluetooth/BluetoothConnectionState;

.field public HealthConnectionState:Lcom/startapp/networkTest/enums/bluetooth/BluetoothConnectionState;

.field public MissingPermission:Z

.field public PairedBluetoothDevices:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/k1;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/k1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothConnectionState;->e:Lcom/startapp/networkTest/enums/bluetooth/BluetoothConnectionState;

    iput-object v0, p0, Lcom/startapp/l1;->HealthConnectionState:Lcom/startapp/networkTest/enums/bluetooth/BluetoothConnectionState;

    .line 7
    iput-object v0, p0, Lcom/startapp/l1;->HeadsetConnectionState:Lcom/startapp/networkTest/enums/bluetooth/BluetoothConnectionState;

    .line 12
    iput-object v0, p0, Lcom/startapp/l1;->A2DPConnectionState:Lcom/startapp/networkTest/enums/bluetooth/BluetoothConnectionState;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/startapp/l1;->MissingPermission:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/l1;->PairedBluetoothDevices:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/l1;->ConnectedA2DPBluetoothDevices:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/l1;->ConnectedHealthBluetoothDevices:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/l1;->ConnectedHeadsetBluetoothDevices:Ljava/util/ArrayList;

    return-void
.end method
