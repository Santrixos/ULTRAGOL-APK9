.class public Lcom/startapp/sdk/components/ComponentLocator$g;
.super Lcom/startapp/y1;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/components/ComponentLocator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapp/y1<",
        "Lcom/startapp/jb;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/startapp/sdk/components/ComponentLocator;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/components/ComponentLocator$g;->c:Lcom/startapp/sdk/components/ComponentLocator;

    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$g;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Lcom/startapp/jb;

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$g;->b:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/startapp/sdk/adsbase/e;

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$g;->b:Landroid/content/Context;

    const-string v3, "StartApp-fba1a5307d96ef31"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    .line 4
    invoke-direct {v2, v0, v3}, Lcom/startapp/sdk/adsbase/e;-><init>(Landroid/content/SharedPreferences;Lcom/startapp/sdk/adsbase/e$b;)V

    const/4 v0, 0x1

    const-string v3, "tlp"

    const-wide/16 v5, 0x5

    .line 5
    invoke-static {v4, v0, v3, v5, v6}, Lcom/startapp/sdk/components/ComponentLocator;->a(IILjava/lang/String;J)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$g;->c:Lcom/startapp/sdk/components/ComponentLocator;

    .line 6
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->m()Lcom/startapp/m5;

    move-result-object v4

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$g;->c:Lcom/startapp/sdk/components/ComponentLocator;

    .line 7
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a()Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;

    move-result-object v5

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$g;->c:Lcom/startapp/sdk/components/ComponentLocator;

    .line 8
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->v()Lcom/startapp/ub;

    move-result-object v6

    new-instance v7, Lcom/startapp/sdk/components/c;

    invoke-direct {v7, p0}, Lcom/startapp/sdk/components/c;-><init>(Lcom/startapp/sdk/components/ComponentLocator$g;)V

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/startapp/jb;-><init>(Ljava/lang/String;Lcom/startapp/sdk/adsbase/e;Ljava/util/concurrent/Executor;Lcom/startapp/m5;Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;Lcom/startapp/ub;Lcom/startapp/d3;)V

    return-object v8
.end method
