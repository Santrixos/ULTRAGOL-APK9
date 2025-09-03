.class public final enum Lcom/startapp/networkTest/enums/AppCategoryTypes;
.super Ljava/lang/Enum;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/startapp/networkTest/enums/AppCategoryTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum b:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum c:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum d:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum e:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum f:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum g:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum h:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum i:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public static final enum j:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field private static final synthetic k:[Lcom/startapp/networkTest/enums/AppCategoryTypes;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v1, "Audio"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->a:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 6
    new-instance v1, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v3, "Game"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/startapp/networkTest/enums/AppCategoryTypes;->b:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 11
    new-instance v3, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v5, "Image"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/startapp/networkTest/enums/AppCategoryTypes;->c:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 16
    new-instance v5, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v7, "Maps"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/startapp/networkTest/enums/AppCategoryTypes;->d:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 21
    new-instance v7, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v9, "News"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/startapp/networkTest/enums/AppCategoryTypes;->e:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 26
    new-instance v9, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v11, "Productivity"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/startapp/networkTest/enums/AppCategoryTypes;->f:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 31
    new-instance v11, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v13, "Social"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/startapp/networkTest/enums/AppCategoryTypes;->g:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 36
    new-instance v13, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v15, "Video"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/startapp/networkTest/enums/AppCategoryTypes;->h:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 41
    new-instance v15, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v14, "Undefined"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/startapp/networkTest/enums/AppCategoryTypes;->i:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 46
    new-instance v14, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const-string v12, "Unknown"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/startapp/networkTest/enums/AppCategoryTypes;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/startapp/networkTest/enums/AppCategoryTypes;->j:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/startapp/networkTest/enums/AppCategoryTypes;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 47
    sput-object v12, Lcom/startapp/networkTest/enums/AppCategoryTypes;->k:[Lcom/startapp/networkTest/enums/AppCategoryTypes;

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

.method public static valueOf(Ljava/lang/String;)Lcom/startapp/networkTest/enums/AppCategoryTypes;
    .locals 1

    .line 1
    const-class v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/startapp/networkTest/enums/AppCategoryTypes;

    return-object p0
.end method

.method public static values()[Lcom/startapp/networkTest/enums/AppCategoryTypes;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->k:[Lcom/startapp/networkTest/enums/AppCategoryTypes;

    invoke-virtual {v0}, [Lcom/startapp/networkTest/enums/AppCategoryTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/startapp/networkTest/enums/AppCategoryTypes;

    return-object v0
.end method
