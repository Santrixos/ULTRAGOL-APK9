.class public final enum Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

.field public static final enum b:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

.field public static final enum c:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

.field public static final enum d:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

.field private static final synthetic e:[Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    const-string v1, "Classic"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;->a:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    const-string v3, "LowEnergy"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;->b:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    const-string v5, "DualMode"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;->c:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    .line 13
    new-instance v5, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    const-string v7, "Unknown"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;->d:Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;->e:[Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;->e:[Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/bluetooth/BluetoothTypes;

    return-object v0
.end method
