.class public final enum Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum b:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum c:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum d:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum e:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum f:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum g:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum h:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum i:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final enum j:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

.field public static final synthetic k:[Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 41

    .line 1
    new-instance v0, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v1, "ErrorNone"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->a:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 3
    new-instance v1, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v3, "XMLParsingError"

    const/4 v4, 0x1

    const/16 v5, 0x64

    invoke-direct {v1, v3, v4, v5}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->b:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 4
    new-instance v3, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v5, "SchemaValidationError"

    const/4 v6, 0x2

    const/16 v7, 0x65

    invoke-direct {v3, v5, v6, v7}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 5
    new-instance v5, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v7, "VersionOfResponseNotSupported"

    const/4 v8, 0x3

    const/16 v9, 0x66

    invoke-direct {v5, v7, v8, v9}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 6
    new-instance v7, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v9, "TraffickingError"

    const/4 v10, 0x4

    const/16 v11, 0xc8

    invoke-direct {v7, v9, v10, v11}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 7
    new-instance v9, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v11, "VideoPlayerExpectingDifferentLinearity"

    const/4 v12, 0x5

    const/16 v13, 0xc9

    invoke-direct {v9, v11, v12, v13}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 8
    new-instance v11, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v13, "VideoPlayerExpectingDifferentDuration"

    const/4 v14, 0x6

    const/16 v15, 0xca

    invoke-direct {v11, v13, v14, v15}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 9
    new-instance v13, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "VideoPlayerExpectingDifferentSize"

    const/4 v14, 0x7

    const/16 v12, 0xcb

    invoke-direct {v13, v15, v14, v12}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 10
    new-instance v12, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "AdCategoryRequired"

    const/16 v14, 0x8

    const/16 v10, 0xcc

    invoke-direct {v12, v15, v14, v10}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 11
    new-instance v10, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "GeneralWrapperError"

    const/16 v14, 0x9

    const/16 v8, 0x12c

    invoke-direct {v10, v15, v14, v8}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 12
    new-instance v8, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "WrapperTimeout"

    const/16 v14, 0xa

    const/16 v6, 0x12d

    invoke-direct {v8, v15, v14, v6}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->c:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 13
    new-instance v6, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "WrapperLimitReached"

    const/16 v14, 0xb

    const/16 v4, 0x12e

    invoke-direct {v6, v15, v14, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 14
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "WrapperNoReponse"

    const/16 v14, 0xc

    const/16 v2, 0x12f

    invoke-direct {v4, v15, v14, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->d:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 15
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "InlineResponseTimeout"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x130

    invoke-direct {v2, v15, v14, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 16
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "GeneralLinearError"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x190

    invoke-direct {v4, v15, v14, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->e:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 17
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "FileNotFound"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x191

    invoke-direct {v2, v15, v14, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->f:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 18
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "TimeoutMediaFileURI"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x192

    invoke-direct {v4, v15, v14, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->g:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 19
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "MediaNotSupported"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x193

    invoke-direct {v2, v15, v14, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 20
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "MediaFileDisplayError"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x195

    invoke-direct {v4, v15, v14, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->h:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 21
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "MezzanineNotPovided"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x196

    invoke-direct {v2, v15, v14, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 22
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "MezzanineDownloadInProgrees"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x197

    invoke-direct {v4, v15, v14, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 23
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "ConditionalAdRejected"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x198

    invoke-direct {v2, v15, v14, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 24
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v15, "InteractiveCreativeFileNotExecuted"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x199

    invoke-direct {v4, v15, v14, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 25
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "VerificationNotExecuted"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x19a

    invoke-direct {v2, v14, v15, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 26
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "MezzanineNotAsExpected"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x19b

    invoke-direct {v4, v14, v15, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 27
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "GeneralNonLinearAdsError"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x1f4

    invoke-direct {v2, v14, v15, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 28
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "CreativeTooLarge"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x1f5

    invoke-direct {v4, v14, v15, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 29
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "ResourceDownloadFailed"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1f6

    invoke-direct {v2, v14, v15, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 30
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "NonLinearResourceNotSupported"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x1f7

    invoke-direct {v4, v14, v15, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 31
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "GeneralCompanionAdsError"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x258

    invoke-direct {v2, v14, v15, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 32
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "CompanionTooLarge"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x259

    invoke-direct {v4, v14, v15, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 33
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "CompanionNotDisplay"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x25a

    invoke-direct {v2, v14, v15, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 34
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "CompanionFetchFailed"

    const/16 v15, 0x20

    move-object/from16 v35, v2

    const/16 v2, 0x25b

    invoke-direct {v4, v14, v15, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 35
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "CompanionNotSupported"

    const/16 v15, 0x21

    move-object/from16 v36, v4

    const/16 v4, 0x25c

    invoke-direct {v2, v14, v15, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 36
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "UndefinedError"

    const/16 v15, 0x22

    move-object/from16 v37, v2

    const/16 v2, 0x384

    invoke-direct {v4, v14, v15, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->i:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    .line 37
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "GeneralVPAIDerror"

    const/16 v15, 0x23

    move-object/from16 v38, v4

    const/16 v4, 0x385

    invoke-direct {v2, v14, v15, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 39
    new-instance v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "SAShowBeforeVast"

    const/16 v15, 0x24

    move-object/from16 v39, v2

    const/16 v2, 0x2710

    invoke-direct {v4, v14, v15, v2}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    .line 40
    new-instance v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const-string v14, "SAProcessSuccess"

    const/16 v15, 0x25

    move-object/from16 v40, v4

    const/16 v4, 0x4e20

    invoke-direct {v2, v14, v15, v4}, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->j:Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const/16 v4, 0x26

    new-array v4, v4, [Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v35, v4, v0

    const/16 v0, 0x20

    aput-object v36, v4, v0

    const/16 v0, 0x21

    aput-object v37, v4, v0

    const/16 v0, 0x22

    aput-object v38, v4, v0

    const/16 v0, 0x23

    aput-object v39, v4, v0

    const/16 v0, 0x24

    aput-object v40, v4, v0

    const/16 v0, 0x25

    aput-object v2, v4, v0

    .line 41
    sput-object v4, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->k:[Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

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
    iput p3, p0, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    return-object p0
.end method

.method public static values()[Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->k:[Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    invoke-virtual {v0}, [Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/video/vast/VASTErrorCodes;->value:I

    return v0
.end method
