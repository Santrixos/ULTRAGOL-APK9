.class public final Lcom/startapp/k;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public final a:Lcom/startapp/rd;


# direct methods
.method public constructor <init>(Lcom/startapp/rd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/startapp/k;->a:Lcom/startapp/rd;

    return-void
.end method

.method public static a(Lcom/startapp/n;)Lcom/startapp/k;
    .locals 2

    check-cast p0, Lcom/startapp/rd;

    .line 1
    iget-object v0, p0, Lcom/startapp/rd;->e:Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;

    .line 2
    iget-object v1, v0, Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;->b:Lcom/startapp/k;

    if-nez v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/startapp/rd;->g:Z

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/startapp/k;

    invoke-direct {v1, p0}, Lcom/startapp/k;-><init>(Lcom/startapp/rd;)V

    .line 5
    iput-object v1, v0, Lcom/iab/omid/library/startio/publisher/AdSessionStatePublisher;->b:Lcom/startapp/k;

    return-object v1

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdSession is finished"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "AdEvents already exists for AdSession"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
