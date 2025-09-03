.class public final enum Lcom/startapp/networkTest/enums/BatteryHealthStates;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/BatteryHealthStates;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/BatteryHealthStates;

.field public static final enum b:Lcom/startapp/networkTest/enums/BatteryHealthStates;

.field public static final enum c:Lcom/startapp/networkTest/enums/BatteryHealthStates;

.field public static final enum d:Lcom/startapp/networkTest/enums/BatteryHealthStates;

.field public static final enum e:Lcom/startapp/networkTest/enums/BatteryHealthStates;

.field public static final enum f:Lcom/startapp/networkTest/enums/BatteryHealthStates;

.field private static final synthetic g:[Lcom/startapp/networkTest/enums/BatteryHealthStates;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/BatteryHealthStates;

    const-string v1, "Cold"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/BatteryHealthStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/BatteryHealthStates;->a:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/BatteryHealthStates;

    const-string v3, "Dead"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/BatteryHealthStates;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/BatteryHealthStates;->b:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/BatteryHealthStates;

    const-string v5, "Good"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/BatteryHealthStates;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/BatteryHealthStates;->c:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/BatteryHealthStates;

    const-string v7, "OverVoltage"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/BatteryHealthStates;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/BatteryHealthStates;->d:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    .line 21
    new-instance v7, Lcom/startapp/networkTest/enums/BatteryHealthStates;

    const-string v9, "Overheat"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/startapp/networkTest/enums/BatteryHealthStates;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/startapp/networkTest/enums/BatteryHealthStates;->e:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    .line 26
    new-instance v9, Lcom/startapp/networkTest/enums/BatteryHealthStates;

    const-string v11, "Unknown"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/startapp/networkTest/enums/BatteryHealthStates;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/startapp/networkTest/enums/BatteryHealthStates;->f:Lcom/startapp/networkTest/enums/BatteryHealthStates;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/startapp/networkTest/enums/BatteryHealthStates;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 27
    sput-object v11, Lcom/startapp/networkTest/enums/BatteryHealthStates;->g:[Lcom/startapp/networkTest/enums/BatteryHealthStates;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/BatteryHealthStates;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/BatteryHealthStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/BatteryHealthStates;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/BatteryHealthStates;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/BatteryHealthStates;->g:[Lcom/startapp/networkTest/enums/BatteryHealthStates;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/BatteryHealthStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/BatteryHealthStates;

    return-object v0
.end method
