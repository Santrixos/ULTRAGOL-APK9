.class public Lcom/startapp/sdk/components/ComponentLocator$q;
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
        "Lcom/startapp/b9;",
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
    iput-object p1, p0, Lcom/startapp/sdk/components/ComponentLocator$q;->c:Lcom/startapp/sdk/components/ComponentLocator;

    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$q;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/startapp/b9;

    iget-object v1, p0, Lcom/startapp/sdk/components/ComponentLocator$q;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/startapp/sdk/components/ComponentLocator$q;->c:Lcom/startapp/sdk/components/ComponentLocator;

    .line 3
    invoke-virtual {v2}, Lcom/startapp/sdk/components/ComponentLocator;->j()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/startapp/sdk/components/n;

    invoke-direct {v3, p0}, Lcom/startapp/sdk/components/n;-><init>(Lcom/startapp/sdk/components/ComponentLocator$q;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/startapp/b9;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/startapp/d3;)V

    return-object v0
.end method
