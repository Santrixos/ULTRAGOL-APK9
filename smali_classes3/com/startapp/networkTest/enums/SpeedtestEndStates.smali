.class public final enum Lcom/startapp/networkTest/enums/SpeedtestEndStates;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/SpeedtestEndStates;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum b:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum c:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum d:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum e:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum f:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum g:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum h:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum i:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum j:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum k:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum l:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum m:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum n:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum o:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field public static final enum p:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

.field private static final synthetic q:[Lcom/startapp/networkTest/enums/SpeedtestEndStates;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->a:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v3, "ConnectingToControlServer"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->b:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v5, "ConnectedToControlServer"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->c:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v7, "ConnectingToTestServer"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->d:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 21
    new-instance v7, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v9, "ConnectedToTestServer"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->e:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 26
    new-instance v9, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v11, "LatencyTestStart"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->f:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 31
    new-instance v11, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v13, "LatencyTestEnd"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->g:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 36
    new-instance v13, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v15, "DownloadTestStart"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->h:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 41
    new-instance v15, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v14, "DownloadTestEnd"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->i:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 46
    new-instance v14, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v12, "UploadTestStart"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->j:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 51
    new-instance v12, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v10, "UploadTestEnd"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->k:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 56
    new-instance v10, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v8, "TracerouteTestStart"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->l:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 61
    new-instance v8, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v6, "TracerouteTestEnd"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->m:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 66
    new-instance v6, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v4, "TestStart"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->n:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 71
    new-instance v4, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v2, "TestEnd"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->o:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    .line 76
    new-instance v2, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const-string v6, "Finish"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/startapp/networkTest/enums/SpeedtestEndStates;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->p:Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const/16 v6, 0x10

    new-array v6, v6, [Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    .line 77
    sput-object v6, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->q:[Lcom/startapp/networkTest/enums/SpeedtestEndStates;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/SpeedtestEndStates;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/SpeedtestEndStates;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/SpeedtestEndStates;->q:[Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/SpeedtestEndStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/SpeedtestEndStates;

    return-object v0
.end method
