.class public Lcom/startapp/y5;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public a:Lcom/startapp/g4;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/w5;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/startapp/y5;->c:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/startapp/g4;

    invoke-direct {v0}, Lcom/startapp/g4;-><init>()V

    iput-object v0, p0, Lcom/startapp/y5;->a:Lcom/startapp/g4;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/startapp/y5;->a:Lcom/startapp/g4;

    .line 8
    iget-object v0, v0, Lcom/startapp/g4;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/j9;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    const-string v3, "AD_CLOSED_TOO_QUICKLY"

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/startapp/j9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/startapp/r7;Z)V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/startapp/y5;->a:Lcom/startapp/g4;

    .line 12
    iput-object p1, v0, Lcom/startapp/g4;->d:Lcom/startapp/r7;

    if-eqz p2, :cond_2

    .line 13
    iget-object p1, v0, Lcom/startapp/g4;->c:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    .line 14
    iput p1, v0, Lcom/startapp/g4;->e:I

    .line 15
    iget-object p1, v0, Lcom/startapp/g4;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 17
    iget-object p1, v0, Lcom/startapp/g4;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapp/j9;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    const-string v2, "AD_CLOSED_TOO_QUICKLY"

    .line 20
    invoke-virtual {p2, v2, v1}, Lcom/startapp/j9;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, v0, Lcom/startapp/g4;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-void
.end method

.method public a(Lcom/startapp/sdk/adsbase/model/AdDetails;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/startapp/w5;

    invoke-direct {v0, p1}, Lcom/startapp/w5;-><init>(Lcom/startapp/sdk/adsbase/model/AdDetails;)V

    .line 2
    iget-object p1, p0, Lcom/startapp/y5;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lcom/startapp/y5;->a:Lcom/startapp/g4;

    iget-object v1, p0, Lcom/startapp/y5;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4
    iget-object v2, v0, Lcom/startapp/w5;->a:Ljava/lang/String;

    .line 5
    iget-object v0, v0, Lcom/startapp/w5;->i:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1, v2, v0}, Lcom/startapp/g4;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    return-void
.end method
