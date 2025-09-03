.class public final enum Lcom/ironsource/mediationsdk/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum b:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum c:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum d:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum e:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum f:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum g:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum h:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum i:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum j:Lcom/ironsource/mediationsdk/b$a;

.field public static final enum k:Lcom/ironsource/mediationsdk/b$a;

.field private static final synthetic m:[Lcom/ironsource/mediationsdk/b$a;


# instance fields
.field public l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/ironsource/mediationsdk/b$a;

    const-string v1, "NOT_INITIATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/b$a;->a:Lcom/ironsource/mediationsdk/b$a;

    new-instance v1, Lcom/ironsource/mediationsdk/b$a;

    const-string v3, "INIT_FAILED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ironsource/mediationsdk/b$a;->b:Lcom/ironsource/mediationsdk/b$a;

    new-instance v3, Lcom/ironsource/mediationsdk/b$a;

    const-string v5, "INITIATED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ironsource/mediationsdk/b$a;->c:Lcom/ironsource/mediationsdk/b$a;

    new-instance v5, Lcom/ironsource/mediationsdk/b$a;

    const-string v7, "AVAILABLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ironsource/mediationsdk/b$a;->d:Lcom/ironsource/mediationsdk/b$a;

    new-instance v7, Lcom/ironsource/mediationsdk/b$a;

    const-string v9, "NOT_AVAILABLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ironsource/mediationsdk/b$a;->e:Lcom/ironsource/mediationsdk/b$a;

    new-instance v9, Lcom/ironsource/mediationsdk/b$a;

    const-string v11, "EXHAUSTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ironsource/mediationsdk/b$a;->f:Lcom/ironsource/mediationsdk/b$a;

    new-instance v11, Lcom/ironsource/mediationsdk/b$a;

    const-string v13, "CAPPED_PER_SESSION"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ironsource/mediationsdk/b$a;->g:Lcom/ironsource/mediationsdk/b$a;

    new-instance v13, Lcom/ironsource/mediationsdk/b$a;

    const-string v15, "INIT_PENDING"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ironsource/mediationsdk/b$a;->h:Lcom/ironsource/mediationsdk/b$a;

    new-instance v15, Lcom/ironsource/mediationsdk/b$a;

    const-string v14, "LOAD_PENDING"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/ironsource/mediationsdk/b$a;->i:Lcom/ironsource/mediationsdk/b$a;

    new-instance v14, Lcom/ironsource/mediationsdk/b$a;

    const-string v12, "CAPPED_PER_DAY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/ironsource/mediationsdk/b$a;->j:Lcom/ironsource/mediationsdk/b$a;

    new-instance v12, Lcom/ironsource/mediationsdk/b$a;

    const-string v10, "NEEDS_RELOAD"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/ironsource/mediationsdk/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ironsource/mediationsdk/b$a;->k:Lcom/ironsource/mediationsdk/b$a;

    const/16 v10, 0xb

    new-array v10, v10, [Lcom/ironsource/mediationsdk/b$a;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lcom/ironsource/mediationsdk/b$a;->m:[Lcom/ironsource/mediationsdk/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ironsource/mediationsdk/b$a;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/b$a;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/b$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/b$a;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/b$a;->m:[Lcom/ironsource/mediationsdk/b$a;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/b$a;

    return-object v0
.end method
