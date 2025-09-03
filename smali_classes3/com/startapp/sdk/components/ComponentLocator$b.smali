.class public Lcom/startapp/sdk/components/ComponentLocator$b;
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
        "Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$b;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;

    iget-object v1, p0, Lcom/startapp/sdk/components/ComponentLocator$b;->b:Landroid/content/Context;

    .line 2
    new-instance v2, Lcom/startapp/sdk/components/ComponentLocator$j0;

    const-string v3, "air"

    invoke-direct {v2, v3}, Lcom/startapp/sdk/components/ComponentLocator$j0;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v3, Lcom/startapp/sdk/components/a;

    invoke-direct {v3, p0}, Lcom/startapp/sdk/components/a;-><init>(Lcom/startapp/sdk/components/ComponentLocator$b;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;-><init>(Landroid/content/Context;Ljava/util/concurrent/ThreadFactory;Lcom/startapp/d3;)V

    return-object v0
.end method
