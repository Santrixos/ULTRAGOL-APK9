.class public Lcom/startapp/x3;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public AppCategory:Lcom/startapp/networkTest/enums/AppCategoryTypes;

.field public AppName:Ljava/lang/String;

.field public AppPackageName:Ljava/lang/String;

.field public AppPermissions:Ljava/util/ArrayList;
    .annotation runtime Lcom/startapp/ob;
        type = Ljava/util/ArrayList;
        value = Lcom/startapp/d0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/startapp/d0;",
            ">;"
        }
    .end annotation
.end field

.field public AppTargetVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/startapp/x3;->AppPackageName:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/startapp/networkTest/enums/AppCategoryTypes;->j:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    iput-object v1, p0, Lcom/startapp/x3;->AppCategory:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    .line 12
    iput-object v0, p0, Lcom/startapp/x3;->AppName:Ljava/lang/String;

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/startapp/x3;->AppTargetVersion:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/startapp/x3;->AppPermissions:Ljava/util/ArrayList;

    return-void
.end method
