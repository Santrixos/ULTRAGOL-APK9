.class public Lcom/startapp/n0;
.super Lcom/startapp/sdk/adsbase/model/GetAdRequest;
.source "Sta"


# instance fields
.field public T0:Z

.field public U0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startapp/sdk/adsbase/model/GetAdRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/m8;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/startapp/sdk/common/SDKException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->a(Lcom/startapp/m8;)V

    .line 2
    iget-boolean v0, p0, Lcom/startapp/n0;->T0:Z

    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "fixedSize"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 5
    iget v0, p0, Lcom/startapp/n0;->U0:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bnrt"

    .line 7
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/startapp/m8;->a(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/startapp/sdk/components/ComponentLocator;->a(Landroid/content/Context;)Lcom/startapp/sdk/components/ComponentLocator;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/startapp/sdk/components/ComponentLocator;->s()Lcom/startapp/w9;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->h0:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 4
    iget v1, p0, Lcom/startapp/n0;->U0:I

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/startapp/w9;->a:Ljava/util/Map;

    new-instance v2, Lcom/startapp/w9$a;

    invoke-direct {v2, v0, v1}, Lcom/startapp/w9$a;-><init>(Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;I)V

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/model/GetAdRequest;->v0:Ljava/lang/String;

    return-void
.end method
