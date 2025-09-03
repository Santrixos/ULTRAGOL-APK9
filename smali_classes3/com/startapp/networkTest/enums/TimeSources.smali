.class public final enum Lcom/startapp/networkTest/enums/TimeSources;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/TimeSources;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/TimeSources;

.field public static final enum b:Lcom/startapp/networkTest/enums/TimeSources;

.field public static final enum c:Lcom/startapp/networkTest/enums/TimeSources;

.field public static final enum d:Lcom/startapp/networkTest/enums/TimeSources;

.field private static final synthetic e:[Lcom/startapp/networkTest/enums/TimeSources;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/TimeSources;

    const-string v1, "NTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/TimeSources;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/TimeSources;->a:Lcom/startapp/networkTest/enums/TimeSources;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/TimeSources;

    const-string v3, "GPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/TimeSources;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/TimeSources;->b:Lcom/startapp/networkTest/enums/TimeSources;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/TimeSources;

    const-string v5, "Device"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/TimeSources;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/TimeSources;->c:Lcom/startapp/networkTest/enums/TimeSources;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/TimeSources;

    const-string v7, "Unknown"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/TimeSources;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/TimeSources;->d:Lcom/startapp/networkTest/enums/TimeSources;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/startapp/networkTest/enums/TimeSources;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 17
    sput-object v7, Lcom/startapp/networkTest/enums/TimeSources;->e:[Lcom/startapp/networkTest/enums/TimeSources;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/TimeSources;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/TimeSources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/TimeSources;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/TimeSources;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/TimeSources;->e:[Lcom/startapp/networkTest/enums/TimeSources;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/TimeSources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/TimeSources;

    return-object v0
.end method
