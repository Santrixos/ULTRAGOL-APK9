.class public final enum Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

.field public static final enum b:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

.field public static final enum c:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

.field public static final enum d:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

.field private static final synthetic e:[Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;->a:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    const-string v3, "CCMP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;->b:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;->c:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    const-string v7, "TKIP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;->d:Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 17
    sput-object v7, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;->e:[Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;->e:[Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/wifi/WifiPairwiseCiphers;

    return-object v0
.end method
