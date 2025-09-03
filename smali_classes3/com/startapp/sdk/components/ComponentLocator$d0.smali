.class public Lcom/startapp/sdk/components/ComponentLocator$d0;
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
        "Lcom/startapp/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$d0;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/startapp/l;

    iget-object v1, p0, Lcom/startapp/sdk/components/ComponentLocator$d0;->b:Landroid/content/Context;

    new-instance v2, Lcom/startapp/sdk/components/q;

    invoke-direct {v2, p0}, Lcom/startapp/sdk/components/q;-><init>(Lcom/startapp/sdk/components/ComponentLocator$d0;)V

    invoke-direct {v0, v1, v2}, Lcom/startapp/l;-><init>(Landroid/content/Context;Lcom/startapp/d3;)V

    return-object v0
.end method
