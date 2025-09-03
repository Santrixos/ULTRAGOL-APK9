.class public final enum Lcom/startapp/networkTest/enums/CtCriteriaTypes;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/CtCriteriaTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

.field public static final enum b:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

.field public static final enum c:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

.field public static final enum d:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

.field public static final enum e:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

.field public static final enum f:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

.field private static final synthetic g:[Lcom/startapp/networkTest/enums/CtCriteriaTypes;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    const-string v1, "TotalTests"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/CtCriteriaTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->a:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    const-string v3, "DNSSuccessful"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/CtCriteriaTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->b:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    const-string v5, "TCPSuccessful"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/CtCriteriaTypes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->c:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    const-string v7, "FullSuccessful"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/CtCriteriaTypes;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->d:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    .line 21
    new-instance v7, Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    const-string v9, "Random"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/startapp/networkTest/enums/CtCriteriaTypes;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->e:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    .line 26
    new-instance v9, Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    const-string v11, "NoChange"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/startapp/networkTest/enums/CtCriteriaTypes;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->f:Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 27
    sput-object v11, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->g:[Lcom/startapp/networkTest/enums/CtCriteriaTypes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/CtCriteriaTypes;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/CtCriteriaTypes;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/CtCriteriaTypes;->g:[Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/CtCriteriaTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/CtCriteriaTypes;

    return-object v0
.end method
