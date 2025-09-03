.class public Lcom/startapp/kc;
.super Lcom/startapp/ic;
.source "Sta"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startapp/simple/bloomfilter/version/BloomVersion;->d:Lcom/startapp/simple/bloomfilter/version/BloomVersion;

    new-instance v1, Lcom/startapp/e3;

    new-instance v2, Lcom/startapp/va;

    invoke-direct {v2}, Lcom/startapp/va;-><init>()V

    invoke-direct {v1, v2}, Lcom/startapp/e3;-><init>(Lcom/startapp/va;)V

    new-instance v2, Lcom/startapp/n2;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/simple/bloomfilter/version/BloomVersion;->a()I

    move-result v3

    .line 3
    invoke-virtual {v0}, Lcom/startapp/simple/bloomfilter/version/BloomVersion;->b()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/startapp/n2;-><init>(II)V

    new-instance v3, Lcom/startapp/c1;

    .line 4
    invoke-virtual {v0}, Lcom/startapp/simple/bloomfilter/version/BloomVersion;->a()I

    move-result v4

    invoke-virtual {v0}, Lcom/startapp/simple/bloomfilter/version/BloomVersion;->b()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/startapp/c1;-><init>(II)V

    .line 5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/startapp/ic;-><init>(Lcom/startapp/simple/bloomfilter/version/BloomVersion;Lcom/startapp/xa;Lcom/startapp/za;Lcom/startapp/c1;)V

    return-void
.end method
