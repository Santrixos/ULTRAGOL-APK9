.class public Lcom/startapp/z4;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public a:Ljava/security/PublicKey;

.field public b:Lcom/startapp/y4;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/startapp/z4;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 2
    new-instance p0, Lcom/startapp/z4;

    invoke-direct {p0}, Lcom/startapp/z4;-><init>()V

    .line 3
    const-class v1, Lcom/startapp/y4;

    invoke-static {v0, v1}, Lcom/startapp/r5;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/y4;

    iput-object v0, p0, Lcom/startapp/z4;->b:Lcom/startapp/y4;

    return-object p0
.end method
