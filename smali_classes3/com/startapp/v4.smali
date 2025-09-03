.class public Lcom/startapp/v4;
.super Lcom/startapp/t4;
.source "Sta"


# instance fields
.field public final e:Lcom/startapp/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/y1<",
            "Lcom/startapp/y3;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/startapp/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/y1<",
            "Lcom/startapp/x8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/startapp/y1;Lcom/startapp/y1;Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/y1<",
            "Lcom/startapp/y3;",
            ">;",
            "Lcom/startapp/y1<",
            "Lcom/startapp/x8;",
            ">;",
            "Lcom/startapp/i4;",
            "Lcom/startapp/k4;",
            "Lcom/startapp/n4;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lcom/startapp/t4;-><init>(Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V

    .line 3
    iput-object p1, p0, Lcom/startapp/v4;->e:Lcom/startapp/y1;

    .line 4
    iput-object p2, p0, Lcom/startapp/v4;->f:Lcom/startapp/y1;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startapp/t4;->a:Lcom/startapp/i4;

    .line 2
    iget-object v0, v0, Lcom/startapp/i4;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/startapp/v4;->f:Lcom/startapp/y1;

    invoke-virtual {v1}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/x8;

    iget-object v2, p0, Lcom/startapp/v4;->e:Lcom/startapp/y1;

    invoke-virtual {v2}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/y3;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/startapp/bb;->a(Lcom/startapp/x8;Lcom/startapp/y3;Ljava/lang/String;Lcom/startapp/b3;)Lcom/startapp/o7$a;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
