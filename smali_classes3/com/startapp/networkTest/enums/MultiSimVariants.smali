.class public final enum Lcom/startapp/networkTest/enums/MultiSimVariants;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/MultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/MultiSimVariants;

.field public static final enum b:Lcom/startapp/networkTest/enums/MultiSimVariants;

.field public static final enum c:Lcom/startapp/networkTest/enums/MultiSimVariants;

.field public static final enum d:Lcom/startapp/networkTest/enums/MultiSimVariants;

.field private static final synthetic e:[Lcom/startapp/networkTest/enums/MultiSimVariants;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/MultiSimVariants;

    const-string v1, "DSDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/MultiSimVariants;->a:Lcom/startapp/networkTest/enums/MultiSimVariants;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/MultiSimVariants;

    const-string v3, "DSDA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/MultiSimVariants;->b:Lcom/startapp/networkTest/enums/MultiSimVariants;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/MultiSimVariants;

    const-string v5, "TSTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/MultiSimVariants;->c:Lcom/startapp/networkTest/enums/MultiSimVariants;

    .line 13
    new-instance v5, Lcom/startapp/networkTest/enums/MultiSimVariants;

    const-string v7, "Unknown"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/MultiSimVariants;->d:Lcom/startapp/networkTest/enums/MultiSimVariants;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/startapp/networkTest/enums/MultiSimVariants;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 14
    sput-object v7, Lcom/startapp/networkTest/enums/MultiSimVariants;->e:[Lcom/startapp/networkTest/enums/MultiSimVariants;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/MultiSimVariants;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/MultiSimVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/MultiSimVariants;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/MultiSimVariants;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/MultiSimVariants;->e:[Lcom/startapp/networkTest/enums/MultiSimVariants;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/MultiSimVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/MultiSimVariants;

    return-object v0
.end method
