.class public Lcom/startapp/sdk/components/ComponentLocator$i;
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
        "Lcom/startapp/y3;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/startapp/y1;

.field public final synthetic d:Lcom/startapp/sdk/components/ComponentLocator;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator;Landroid/content/Context;Lcom/startapp/y1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->d:Lcom/startapp/sdk/components/ComponentLocator;

    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->c:Lcom/startapp/y1;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 13

    .line 1
    new-instance v6, Lcom/startapp/y3;

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->d:Lcom/startapp/sdk/components/ComponentLocator;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a()Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->d:Lcom/startapp/sdk/components/ComponentLocator;

    .line 3
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->v()Lcom/startapp/ub;

    move-result-object v2

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->d:Lcom/startapp/sdk/components/ComponentLocator;

    .line 4
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->n()Lcom/startapp/c6;

    move-result-object v3

    new-instance v4, Lcom/startapp/g7;

    iget-object v8, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->b:Landroid/content/Context;

    new-instance v9, Lcom/startapp/sdk/adsbase/e;

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->b:Landroid/content/Context;

    const-string v5, "StartApp-770c613f81fb5b52"

    const/4 v7, 0x0

    .line 7
    invoke-virtual {v0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v5, 0x0

    .line 8
    invoke-direct {v9, v0, v5}, Lcom/startapp/sdk/adsbase/e;-><init>(Landroid/content/SharedPreferences;Lcom/startapp/sdk/adsbase/e$b;)V

    .line 9
    new-instance v10, Lcom/startapp/i7;

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->b:Landroid/content/Context;

    const-string v5, "StartApp-ac51a09f00e0f80c"

    invoke-direct {v10, v0, v5}, Lcom/startapp/i7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$i;->c:Lcom/startapp/y1;

    .line 11
    invoke-virtual {v0}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/concurrent/Executor;

    new-instance v12, Lcom/startapp/sdk/components/d;

    invoke-direct {v12, p0}, Lcom/startapp/sdk/components/d;-><init>(Lcom/startapp/sdk/components/ComponentLocator$i;)V

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/startapp/g7;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/startapp/i7;Ljava/util/concurrent/Executor;Lcom/startapp/d3;)V

    new-instance v5, Lcom/startapp/sdk/components/e;

    invoke-direct {v5, p0}, Lcom/startapp/sdk/components/e;-><init>(Lcom/startapp/sdk/components/ComponentLocator$i;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/startapp/y3;-><init>(Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;Lcom/startapp/ub;Lcom/startapp/c6;Lcom/startapp/g7;Lcom/startapp/d3;)V

    return-object v6
.end method
