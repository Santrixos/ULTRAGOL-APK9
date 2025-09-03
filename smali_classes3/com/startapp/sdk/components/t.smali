.class public Lcom/startapp/sdk/components/t;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Lcom/startapp/d3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startapp/d3<",
        "Lcom/startapp/sdk/adsbase/remoteconfig/LocationMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/components/ComponentLocator$p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->w()Lcom/startapp/sdk/adsbase/remoteconfig/LocationMetadata;

    move-result-object v0

    return-object v0
.end method
