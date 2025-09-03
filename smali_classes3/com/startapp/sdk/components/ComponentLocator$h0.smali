.class public Lcom/startapp/sdk/components/ComponentLocator$h0;
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
        "Lcom/startapp/c3<",
        "Landroid/content/Context;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;",
        "Lcom/startapp/h4;",
        ">;>;"
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

    .line 1
    new-instance v0, Lcom/startapp/sdk/components/s;

    invoke-direct {v0, p0}, Lcom/startapp/sdk/components/s;-><init>(Lcom/startapp/sdk/components/ComponentLocator$h0;)V

    return-object v0
.end method
