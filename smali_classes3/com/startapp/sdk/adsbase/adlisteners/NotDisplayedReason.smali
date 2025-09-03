.class public final enum Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum b:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum c:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum d:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum e:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum f:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum g:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum h:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum i:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum j:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum k:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum l:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum m:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum n:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum o:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum p:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum q:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final enum r:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public static final synthetic s:[Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;


# instance fields
.field private final priority:I


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v1, "AD_CLOSED_TOO_QUICKLY"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->a:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 2
    new-instance v1, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v4, "NETWORK_PROBLEM"

    const/4 v5, 0x1

    const/16 v6, 0x14

    invoke-direct {v1, v4, v5, v6}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->b:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 3
    new-instance v4, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v6, "APP_IN_BACKGROUND"

    const/4 v7, 0x2

    const/16 v8, 0x1e

    invoke-direct {v4, v6, v7, v8}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->c:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 4
    new-instance v6, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v8, "WINDOW_NOT_FOCUSED"

    const/4 v9, 0x3

    const/16 v10, 0x1f

    invoke-direct {v6, v8, v9, v10}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->d:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 5
    new-instance v8, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v10, "VIEW_NOT_ATTACHED"

    const/4 v11, 0x4

    const/16 v12, 0x20

    invoke-direct {v8, v10, v11, v12}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->e:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 6
    new-instance v10, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v12, "AD_RULES"

    const/4 v13, 0x5

    const/16 v14, 0x28

    invoke-direct {v10, v12, v13, v14}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->f:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 7
    new-instance v12, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v14, "AD_NOT_READY"

    const/4 v15, 0x6

    const/16 v13, 0x29

    invoke-direct {v12, v14, v15, v13}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->g:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 8
    new-instance v13, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v14, "AD_EXPIRED"

    const/4 v15, 0x7

    const/16 v11, 0x2a

    invoke-direct {v13, v14, v15, v11}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->h:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 9
    new-instance v11, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v14, "VIDEO_BACK"

    const/16 v15, 0x8

    const/16 v9, 0x2b

    invoke-direct {v11, v14, v15, v9}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->i:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 10
    new-instance v9, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v14, "VIDEO_ERROR"

    const/16 v15, 0x9

    const/16 v7, 0x2c

    invoke-direct {v9, v14, v15, v7}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->j:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 11
    new-instance v7, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v14, "AD_NOT_READY_VIDEO_FALLBACK"

    const/16 v15, 0x2d

    invoke-direct {v7, v14, v3, v15}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->k:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 12
    new-instance v14, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v15, "VIEW_NOT_VISIBLE"

    const/16 v3, 0xb

    const/16 v5, 0x32

    invoke-direct {v14, v15, v3, v5}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->l:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 13
    new-instance v5, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v15, "VIEW_TRANSPARENT"

    const/16 v3, 0xc

    const/16 v2, 0x33

    invoke-direct {v5, v15, v3, v2}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->m:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 14
    new-instance v2, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v15, "VIEW_INVALID_SIZE"

    const/16 v3, 0xd

    move-object/from16 v16, v5

    const/16 v5, 0x34

    invoke-direct {v2, v15, v3, v5}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->n:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 15
    new-instance v5, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v15, "AD_CLIPPED"

    const/16 v3, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x3c

    invoke-direct {v5, v15, v3, v2}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->o:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 16
    new-instance v2, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v15, "AD_WAS_COVERED"

    const/16 v3, 0xf

    move-object/from16 v18, v5

    const/16 v5, 0x3d

    invoke-direct {v2, v15, v3, v5}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->p:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 17
    new-instance v5, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v15, "SERVING_ADS_DISABLED"

    const/16 v3, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x46

    invoke-direct {v5, v15, v3, v2}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->q:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 18
    new-instance v2, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const-string v15, "INTERNAL_ERROR"

    const/16 v3, 0x11

    move-object/from16 v20, v5

    const/16 v5, 0x50

    invoke-direct {v2, v15, v3, v5}, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->r:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const/16 v5, 0x12

    new-array v5, v5, [Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    const/4 v15, 0x0

    aput-object v0, v5, v15

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v6, v5, v0

    const/4 v0, 0x4

    aput-object v8, v5, v0

    const/4 v0, 0x5

    aput-object v10, v5, v0

    const/4 v0, 0x6

    aput-object v12, v5, v0

    const/4 v0, 0x7

    aput-object v13, v5, v0

    const/16 v0, 0x8

    aput-object v11, v5, v0

    const/16 v0, 0x9

    aput-object v9, v5, v0

    const/16 v0, 0xa

    aput-object v7, v5, v0

    const/16 v0, 0xb

    aput-object v14, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    const/16 v0, 0xf

    aput-object v19, v5, v0

    const/16 v0, 0x10

    aput-object v20, v5, v0

    aput-object v2, v5, v3

    .line 19
    sput-object v5, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->s:[Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object p0
.end method

.method public static values()[Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->s:[Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    invoke-virtual {v0}, [Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->priority:I

    return v0
.end method
