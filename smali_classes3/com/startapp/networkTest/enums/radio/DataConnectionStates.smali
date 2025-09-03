.class public final enum Lcom/startapp/networkTest/enums/radio/DataConnectionStates;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/radio/DataConnectionStates;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

.field public static final enum b:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

.field public static final enum c:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

.field public static final enum d:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

.field public static final enum e:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

.field public static final enum f:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

.field private static final synthetic g:[Lcom/startapp/networkTest/enums/radio/DataConnectionStates;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    const-string v1, "Disconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->a:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    .line 8
    new-instance v1, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    const-string v3, "Suspended"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->b:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    .line 13
    new-instance v3, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    const-string v5, "Connecting"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->c:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    .line 18
    new-instance v5, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    const-string v7, "Connected"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->d:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    .line 23
    new-instance v7, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    const-string v9, "Unknown"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->e:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    .line 28
    new-instance v9, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    const-string v11, "Disabled"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->f:Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 29
    sput-object v11, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->g:[Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/radio/DataConnectionStates;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/radio/DataConnectionStates;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->g:[Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/radio/DataConnectionStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/radio/DataConnectionStates;

    return-object v0
.end method
