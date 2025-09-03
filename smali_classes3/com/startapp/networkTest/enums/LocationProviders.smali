.class public final enum Lcom/startapp/networkTest/enums/LocationProviders;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/LocationProviders;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/LocationProviders;

.field public static final enum b:Lcom/startapp/networkTest/enums/LocationProviders;

.field public static final enum c:Lcom/startapp/networkTest/enums/LocationProviders;

.field public static final enum d:Lcom/startapp/networkTest/enums/LocationProviders;

.field public static final enum e:Lcom/startapp/networkTest/enums/LocationProviders;

.field private static final synthetic f:[Lcom/startapp/networkTest/enums/LocationProviders;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/LocationProviders;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/LocationProviders;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/LocationProviders;->a:Lcom/startapp/networkTest/enums/LocationProviders;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/LocationProviders;

    const-string v3, "Gps"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/LocationProviders;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/LocationProviders;->b:Lcom/startapp/networkTest/enums/LocationProviders;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/LocationProviders;

    const-string v5, "Network"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/LocationProviders;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/LocationProviders;->c:Lcom/startapp/networkTest/enums/LocationProviders;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/LocationProviders;

    const-string v7, "Fused"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/LocationProviders;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/LocationProviders;->d:Lcom/startapp/networkTest/enums/LocationProviders;

    .line 21
    new-instance v7, Lcom/startapp/networkTest/enums/LocationProviders;

    const-string v9, "RailNet"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/startapp/networkTest/enums/LocationProviders;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/startapp/networkTest/enums/LocationProviders;->e:Lcom/startapp/networkTest/enums/LocationProviders;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/startapp/networkTest/enums/LocationProviders;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 22
    sput-object v9, Lcom/startapp/networkTest/enums/LocationProviders;->f:[Lcom/startapp/networkTest/enums/LocationProviders;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/LocationProviders;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/LocationProviders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/LocationProviders;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/LocationProviders;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/LocationProviders;->f:[Lcom/startapp/networkTest/enums/LocationProviders;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/LocationProviders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/LocationProviders;

    return-object v0
.end method
