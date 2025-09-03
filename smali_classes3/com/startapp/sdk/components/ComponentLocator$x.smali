.class public Lcom/startapp/sdk/components/ComponentLocator$x;
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
        "Ljava/util/concurrent/Executor;",
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
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "disk"

    const-wide/16 v3, 0x5

    .line 1
    invoke-static {v0, v1, v2, v3, v4}, Lcom/startapp/sdk/components/ComponentLocator;->a(IILjava/lang/String;J)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method
