.class public Lcom/startapp/w6;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public cdn:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public criteria:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startapp/w6;->cdn:Ljava/util/ArrayList;

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/startapp/w6;->criteria:Ljava/lang/String;

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
