.class public Lcom/startapp/k1;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public BondState:Lcom/startapp/networkTest/enums/bluetooth/BluetoothBondStates;

.field public DeviceClass:Lcom/startapp/networkTest/enums/bluetooth/BluetoothDeviceClasses;

.field public MajorDeviceClass:Lcom/startapp/networkTest/enums/bluetooth/BluetoothMajorDeviceClasses;

.field public Name:Ljava/lang/String;

.field public Type:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/startapp/k1;->Name:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;->d:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    iput-object v0, p0, Lcom/startapp/k1;->Type:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    .line 13
    sget-object v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothDeviceClasses;->Y:Lcom/startapp/networkTest/enums/bluetooth/BluetoothDeviceClasses;

    iput-object v0, p0, Lcom/startapp/k1;->DeviceClass:Lcom/startapp/networkTest/enums/bluetooth/BluetoothDeviceClasses;

    .line 15
    sget-object v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothMajorDeviceClasses;->l:Lcom/startapp/networkTest/enums/bluetooth/BluetoothMajorDeviceClasses;

    iput-object v0, p0, Lcom/startapp/k1;->MajorDeviceClass:Lcom/startapp/networkTest/enums/bluetooth/BluetoothMajorDeviceClasses;

    .line 17
    sget-object v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothBondStates;->d:Lcom/startapp/networkTest/enums/bluetooth/BluetoothBondStates;

    iput-object v0, p0, Lcom/startapp/k1;->BondState:Lcom/startapp/networkTest/enums/bluetooth/BluetoothBondStates;

    return-void
.end method
