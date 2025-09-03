.class public final enum Lcom/ironsource/mediationsdk/a/b$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/mediationsdk/a/b$a;

.field public static final enum b:Lcom/ironsource/mediationsdk/a/b$a;

.field public static final enum c:Lcom/ironsource/mediationsdk/a/b$a;

.field public static final enum d:Lcom/ironsource/mediationsdk/a/b$a;

.field public static final enum e:Lcom/ironsource/mediationsdk/a/b$a;

.field private static final synthetic g:[Lcom/ironsource/mediationsdk/a/b$a;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/a/b$a;->a:Lcom/ironsource/mediationsdk/a/b$a;

    new-instance v1, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v3, "OFFERWALL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ironsource/mediationsdk/a/b$a;->b:Lcom/ironsource/mediationsdk/a/b$a;

    new-instance v3, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v5, "INTERSTITIAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ironsource/mediationsdk/a/b$a;->c:Lcom/ironsource/mediationsdk/a/b$a;

    new-instance v5, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v7, "REWARDED_VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ironsource/mediationsdk/a/b$a;->d:Lcom/ironsource/mediationsdk/a/b$a;

    new-instance v7, Lcom/ironsource/mediationsdk/a/b$a;

    const-string v9, "BANNER"

    const/4 v10, 0x4

    const/16 v11, 0x8

    invoke-direct {v7, v9, v10, v11}, Lcom/ironsource/mediationsdk/a/b$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/ironsource/mediationsdk/a/b$a;->e:Lcom/ironsource/mediationsdk/a/b$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/ironsource/mediationsdk/a/b$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/ironsource/mediationsdk/a/b$a;->g:[Lcom/ironsource/mediationsdk/a/b$a;

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

    iput p3, p0, Lcom/ironsource/mediationsdk/a/b$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/a/b$a;
    .locals 1

    const-class v0, Lcom/ironsource/mediationsdk/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/a/b$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/a/b$a;
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/a/b$a;->g:[Lcom/ironsource/mediationsdk/a/b$a;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/a/b$a;

    return-object v0
.end method
