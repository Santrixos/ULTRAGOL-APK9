.class public Lcom/startapp/oe;
.super Lcom/startapp/ee;
.source "Sta"


# direct methods
.method public constructor <init>(Lcom/startapp/ee$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/startapp/ee;-><init>(Lcom/startapp/ee$b;)V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/startapp/ee;->b:Lcom/startapp/ee$b;

    check-cast p1, Lcom/startapp/vd;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/startapp/vd;->a:Lorg/json/JSONObject;

    return-object v0
.end method
