.class public Lcom/startapp/v1;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public ct:Lcom/startapp/w6;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field public ltr:Lcom/startapp/w6;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/startapp/v1;->ct:Lcom/startapp/w6;

    .line 5
    iput-object v0, p0, Lcom/startapp/v1;->ltr:Lcom/startapp/w6;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startapp/r5;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
