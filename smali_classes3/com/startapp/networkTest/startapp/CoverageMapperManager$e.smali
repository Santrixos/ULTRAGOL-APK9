.class public Lcom/startapp/networkTest/startapp/CoverageMapperManager$e;
.super Landroid/content/BroadcastReceiver;
.source "Sta"


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
    iput-object p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$e;->a:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$e;->a:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a(Lcom/startapp/networkTest/startapp/CoverageMapperManager;J)J

    return-void
.end method
