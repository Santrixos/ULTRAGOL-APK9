.class public Lcom/startapp/u4;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/c3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapp/c3<",
        "Lcom/startapp/i4;",
        "Lcom/startapp/k4;",
        "Lcom/startapp/n4;",
        "Lcom/startapp/t4;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/startapp/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/y1<",
            "Lcom/startapp/y3;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/startapp/y1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/y1<",
            "Lcom/startapp/x8;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/y1;Lcom/startapp/y1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startapp/y1<",
            "Lcom/startapp/y3;",
            ">;",
            "Lcom/startapp/y1<",
            "Lcom/startapp/x8;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/u4;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/startapp/u4;->b:Lcom/startapp/y1;

    .line 4
    iput-object p3, p0, Lcom/startapp/u4;->c:Lcom/startapp/y1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    move-object v3, p1

    check-cast v3, Lcom/startapp/i4;

    move-object v4, p2

    check-cast v4, Lcom/startapp/k4;

    move-object v5, p3

    check-cast v5, Lcom/startapp/n4;

    if-eqz v3, :cond_2

    if-nez v4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/startapp/j4;->l:Lcom/startapp/j4;

    .line 3
    iget-object p2, v3, Lcom/startapp/i4;->a:Lcom/startapp/j4;

    .line 4
    invoke-virtual {p1, p2}, Lcom/startapp/j4;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    new-instance p1, Lcom/startapp/v4;

    iget-object v1, p0, Lcom/startapp/u4;->b:Lcom/startapp/y1;

    iget-object v2, p0, Lcom/startapp/u4;->c:Lcom/startapp/y1;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/startapp/v4;-><init>(Lcom/startapp/y1;Lcom/startapp/y1;Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V

    goto :goto_1

    .line 14
    :cond_1
    new-instance p1, Lcom/startapp/s4;

    iget-object p2, p0, Lcom/startapp/u4;->a:Landroid/content/Context;

    invoke-direct {p1, p2, v3, v4, v5}, Lcom/startapp/s4;-><init>(Landroid/content/Context;Lcom/startapp/i4;Lcom/startapp/k4;Lcom/startapp/n4;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
