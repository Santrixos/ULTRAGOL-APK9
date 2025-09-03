.class public Lcom/startapp/sdk/components/ComponentLocator$h;
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
        "Lcom/startapp/c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/startapp/sdk/components/ComponentLocator$h;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/startapp/c0;

    new-instance v1, Lcom/startapp/sdk/adsbase/e;

    iget-object v2, p0, Lcom/startapp/sdk/components/ComponentLocator$h;->b:Landroid/content/Context;

    const-string v3, "StartApp-790ba54ab8e69f2f"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    .line 2
    invoke-direct {v1, v2, v3}, Lcom/startapp/sdk/adsbase/e;-><init>(Landroid/content/SharedPreferences;Lcom/startapp/sdk/adsbase/e$b;)V

    .line 3
    invoke-direct {v0, v1}, Lcom/startapp/c0;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method
