.class public Lcom/startapp/sdk/components/ComponentLocator$l0;
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
        "Lcom/startapp/r3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startapp/y1;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    const-string v0, "db"

    .line 1
    invoke-static {v0}, Lcom/startapp/sdk/components/ComponentLocator;->a(Ljava/lang/String;)Lcom/startapp/r3;

    move-result-object v0

    return-object v0
.end method
