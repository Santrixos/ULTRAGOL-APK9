.class public Lcom/startapp/networkTest/startapp/CoverageMapperManager$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a(Lcom/startapp/networkTest/data/LocationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/networkTest/data/LocationInfo;

.field public final synthetic b:Lcom/startapp/networkTest/startapp/CoverageMapperManager;


# direct methods
.method public constructor <init>(Lcom/startapp/networkTest/startapp/CoverageMapperManager;Lcom/startapp/networkTest/data/LocationInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$a;->b:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    iput-object p2, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$a;->a:Lcom/startapp/networkTest/data/LocationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$a;->b:Lcom/startapp/networkTest/startapp/CoverageMapperManager;

    iget-object v1, p0, Lcom/startapp/networkTest/startapp/CoverageMapperManager$a;->a:Lcom/startapp/networkTest/data/LocationInfo;

    sget-object v2, Lcom/startapp/networkTest/enums/TriggerEvents;->g:Lcom/startapp/networkTest/enums/TriggerEvents;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/startapp/networkTest/startapp/CoverageMapperManager;->a(Lcom/startapp/networkTest/startapp/CoverageMapperManager;Lcom/startapp/networkTest/data/LocationInfo;Lcom/startapp/networkTest/enums/TriggerEvents;Z)V

    return-void
.end method
