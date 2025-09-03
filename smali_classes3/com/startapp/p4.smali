.class public Lcom/startapp/p4;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/i4;

.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lcom/startapp/o4;


# direct methods
.method public constructor <init>(Lcom/startapp/o4;Lcom/startapp/i4;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/p4;->d:Lcom/startapp/o4;

    iput-object p2, p0, Lcom/startapp/p4;->a:Lcom/startapp/i4;

    iput p3, p0, Lcom/startapp/p4;->b:I

    iput-wide p4, p0, Lcom/startapp/p4;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/p4;->d:Lcom/startapp/o4;

    iget-object v1, p0, Lcom/startapp/p4;->a:Lcom/startapp/i4;

    iget v2, p0, Lcom/startapp/p4;->b:I

    iget-wide v3, p0, Lcom/startapp/p4;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/startapp/o4;->a(Lcom/startapp/i4;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
