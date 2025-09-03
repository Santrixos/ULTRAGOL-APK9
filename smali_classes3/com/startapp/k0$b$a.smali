.class public Lcom/startapp/k0$b$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/e8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/k0$b;->a([Ljava/lang/Void;)Lcom/startapp/networkTest/results/LatencyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Z

.field public final synthetic b:[I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/startapp/y;

.field public final synthetic e:Lcom/startapp/k0$b;


# direct methods
.method public constructor <init>(Lcom/startapp/k0$b;[Z[ILjava/util/ArrayList;Lcom/startapp/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/k0$b$a;->e:Lcom/startapp/k0$b;

    iput-object p2, p0, Lcom/startapp/k0$b$a;->a:[Z

    iput-object p3, p0, Lcom/startapp/k0$b$a;->b:[I

    iput-object p4, p0, Lcom/startapp/k0$b$a;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/startapp/k0$b$a;->d:Lcom/startapp/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IJJ)V
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p4, v1

    if-ltz v3, :cond_0

    .line 1
    iget-object v1, p0, Lcom/startapp/k0$b$a;->a:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 2
    iget-object v1, p0, Lcom/startapp/k0$b$a;->b:[I

    aget v4, v1, v0

    add-int/2addr v4, v2

    aput v4, v1, v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/startapp/k0$b$a;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/startapp/k0$b$a;->e:Lcom/startapp/k0$b;

    long-to-int p5, p4

    invoke-static {v2, p2, p3, p5}, Lcom/startapp/k0$b;->a(Lcom/startapp/k0$b;JI)Lcom/startapp/networkTest/results/speedtest/MeasurementPointLatency;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p2, p0, Lcom/startapp/k0$b$a;->e:Lcom/startapp/k0$b;

    iget-object p2, p2, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {p2}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/startapp/k0$b$a;->e:Lcom/startapp/k0$b;

    iget-object p2, p2, Lcom/startapp/k0$b;->i:Lcom/startapp/k0;

    invoke-static {p2}, Lcom/startapp/k0;->a(Lcom/startapp/k0;)Lcom/startapp/e4;

    move-result-object p2

    int-to-float p1, p1

    iget-object p3, p0, Lcom/startapp/k0$b$a;->e:Lcom/startapp/k0$b;

    invoke-static {p3}, Lcom/startapp/k0$b;->a(Lcom/startapp/k0$b;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, p5

    :goto_0
    invoke-interface {p2, p1, v0}, Lcom/startapp/e4;->b(FI)V

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/startapp/k0$b$a;->e:Lcom/startapp/k0$b;

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/startapp/k0$b$a;->d:Lcom/startapp/y;

    invoke-virtual {p1}, Lcom/startapp/y;->b()V

    :cond_3
    return-void
.end method
