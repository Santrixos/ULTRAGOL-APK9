.class public final enum Lcom/startapp/networkTest/enums/NetworkGenerations;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/NetworkGenerations;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/NetworkGenerations;

.field public static final enum b:Lcom/startapp/networkTest/enums/NetworkGenerations;

.field public static final enum c:Lcom/startapp/networkTest/enums/NetworkGenerations;

.field public static final enum d:Lcom/startapp/networkTest/enums/NetworkGenerations;

.field public static final enum e:Lcom/startapp/networkTest/enums/NetworkGenerations;

.field private static final synthetic f:[Lcom/startapp/networkTest/enums/NetworkGenerations;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/NetworkGenerations;

    const-string v1, "Gen2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/NetworkGenerations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/NetworkGenerations;->a:Lcom/startapp/networkTest/enums/NetworkGenerations;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/NetworkGenerations;

    const-string v3, "Gen3"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/NetworkGenerations;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/NetworkGenerations;->b:Lcom/startapp/networkTest/enums/NetworkGenerations;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/NetworkGenerations;

    const-string v5, "Gen4"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/NetworkGenerations;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/NetworkGenerations;->c:Lcom/startapp/networkTest/enums/NetworkGenerations;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/NetworkGenerations;

    const-string v7, "Gen5"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/NetworkGenerations;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/NetworkGenerations;->d:Lcom/startapp/networkTest/enums/NetworkGenerations;

    .line 21
    new-instance v7, Lcom/startapp/networkTest/enums/NetworkGenerations;

    const-string v9, "Unknown"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/startapp/networkTest/enums/NetworkGenerations;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/startapp/networkTest/enums/NetworkGenerations;->e:Lcom/startapp/networkTest/enums/NetworkGenerations;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/startapp/networkTest/enums/NetworkGenerations;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 22
    sput-object v9, Lcom/startapp/networkTest/enums/NetworkGenerations;->f:[Lcom/startapp/networkTest/enums/NetworkGenerations;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/NetworkGenerations;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/NetworkGenerations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/NetworkGenerations;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/NetworkGenerations;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/NetworkGenerations;->f:[Lcom/startapp/networkTest/enums/NetworkGenerations;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/NetworkGenerations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/NetworkGenerations;

    return-object v0
.end method
