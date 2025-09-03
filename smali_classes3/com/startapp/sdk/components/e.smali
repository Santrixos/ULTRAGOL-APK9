.class public Lcom/startapp/sdk/components/e;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/d3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapp/d3<",
        "Lcom/startapp/z3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 2
    new-instance v1, Lcom/startapp/z3;

    .line 3
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->Q()Z

    move-result v2

    .line 4
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->n()Z

    move-result v3

    .line 5
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->u()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/startapp/z3;-><init>(ZZLjava/util/Set;)V

    return-object v1
.end method
