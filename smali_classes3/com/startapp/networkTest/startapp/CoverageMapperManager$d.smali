.class public Lcom/startapp/networkTest/startapp/CoverageMapperManager$d;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/networkTest/startapp/CoverageMapperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/networkTest/startapp/CoverageMapperManager;


# direct methods
.method public constructor <init>(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$d;->a:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$d;->a:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    invoke-static {v2}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->e(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 2
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$d;->a:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    sget-object v1, Lcom/startapp/networkTest/enums/TriggerEvents;->m:Lcom/startapp/networkTest/enums/TriggerEvents;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v4}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a(Lcom/startapp/networkTest/startapp/CoverageMapperManager;Lcom/startapp/networkTest/data/LocationInfo;Lcom/startapp/networkTest/enums/TriggerEvents;Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$d;->a:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    invoke-static {v0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->f(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    .line 8
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$d;->a:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    invoke-static {v0}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->g(Lcom/startapp/networkTest/startapp/CoverageMapperManager;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    return-void
.end method
