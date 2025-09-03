.class public Lcom/app/thestream/callbacks/CallbackDetailCategory;
.super Ljava/lang/Object;
.source "CallbackDetailCategory.java"


# instance fields
.field public category:Lcom/app/thestream/models/Category;

.field public count:I

.field public count_total:I

.field public pages:I

.field public posts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Channel;",
            ">;"
        }
    .end annotation
.end field

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackDetailCategory;->status:Ljava/lang/String;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/app/thestream/callbacks/CallbackDetailCategory;->count:I

    .line 13
    iput v0, p0, Lcom/app/thestream/callbacks/CallbackDetailCategory;->count_total:I

    .line 14
    iput v0, p0, Lcom/app/thestream/callbacks/CallbackDetailCategory;->pages:I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackDetailCategory;->category:Lcom/app/thestream/models/Category;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackDetailCategory;->posts:Ljava/util/List;

    return-void
.end method
