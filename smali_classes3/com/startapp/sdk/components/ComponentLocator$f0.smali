.class public Lcom/startapp/sdk/components/ComponentLocator$f0;
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
        "Lcom/startapp/sdk/ads/video/h;",
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
    iput-object p1, p0, Lcom/startapp/sdk/components/ComponentLocator$f0;->c:Lcom/startapp/sdk/components/ComponentLocator;

    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$f0;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/startapp/sdk/ads/video/h;

    iget-object v1, p0, Lcom/startapp/sdk/components/ComponentLocator$f0;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/sdk/components/ComponentLocator$f0;->c:Lcom/startapp/sdk/components/ComponentLocator;

    .line 2
    iget-object v2, v2, Lcom/startapp/sdk/components/ComponentLocator;->z:Lcom/startapp/y1;

    invoke-virtual {v2}, Lcom/startapp/y1;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    .line 3
    sget-object v3, Lcom/startapp/sdk/adsbase/cache/d;->h:Lcom/startapp/sdk/adsbase/cache/d;

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/sdk/ads/video/h;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/startapp/sdk/adsbase/cache/d;)V

    return-object v0
.end method
