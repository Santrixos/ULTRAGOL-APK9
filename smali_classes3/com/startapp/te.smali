.class public Lcom/startapp/te;
.super Lcom/startapp/wd;
.source "Sta"


# direct methods
.method public constructor <init>(Lcom/startapp/ee$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startapp/ee$b;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "J)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/startapp/wd;-><init>(Lcom/startapp/ee$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/startapp/pd;->c:Lcom/startapp/pd;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/startapp/pd;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/startapp/rd;

    iget-object v2, p0, Lcom/startapp/wd;->c:Ljava/util/HashSet;

    .line 4
    iget-object v3, v1, Lcom/startapp/rd;->h:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v1, v1, Lcom/startapp/rd;->e:Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;

    .line 7
    iget-wide v2, p0, Lcom/startapp/wd;->e:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;->a(Ljava/lang/String;J)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1}, Lcom/startapp/ee;->a(Ljava/lang/String;)V

    return-void
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startapp/wd;->d:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
