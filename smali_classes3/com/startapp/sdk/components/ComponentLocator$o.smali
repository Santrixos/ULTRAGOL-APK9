.class public Lcom/startapp/sdk/components/ComponentLocator$o;
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
        "Lcom/startapp/p9;",
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
    iput-object p1, p0, Lcom/startapp/sdk/components/ComponentLocator$o;->c:Lcom/startapp/sdk/components/ComponentLocator;

    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$o;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, Lcom/startapp/p9;

    iget-object v1, p0, Lcom/startapp/sdk/components/ComponentLocator$o;->b:Landroid/content/Context;

    new-instance v2, Lcom/startapp/sdk/adsbase/e;

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$o;->b:Landroid/content/Context;

    const-string v3, "StartApp-6cd3cac226013e8e"

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v3, 0x0

    .line 4
    invoke-direct {v2, v0, v3}, Lcom/startapp/sdk/adsbase/e;-><init>(Landroid/content/SharedPreferences;Lcom/startapp/sdk/adsbase/e$b;)V

    .line 5
    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$o;->c:Lcom/startapp/sdk/components/ComponentLocator;

    .line 6
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->f()Lcom/startapp/e2;

    move-result-object v3

    iget-object v0, p0, Lcom/startapp/sdk/components/ComponentLocator$o;->c:Lcom/startapp/sdk/components/ComponentLocator;

    .line 7
    invoke-virtual {v0}, Lcom/startapp/sdk/components/ComponentLocator;->h()Lcom/startapp/r3;

    move-result-object v4

    new-instance v5, Lcom/startapp/sdk/components/l;

    invoke-direct {v5, p0}, Lcom/startapp/sdk/components/l;-><init>(Lcom/startapp/sdk/components/ComponentLocator$o;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/startapp/p9;-><init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/e;Lcom/startapp/e2;Lcom/startapp/r3;Lcom/startapp/d3;)V

    return-object v6
.end method
