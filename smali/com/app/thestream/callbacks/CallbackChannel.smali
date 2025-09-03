.class public Lcom/app/thestream/callbacks/CallbackChannel;
.super Ljava/lang/Object;
.source "CallbackChannel.java"


# instance fields
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackChannel;->status:Ljava/lang/String;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/app/thestream/callbacks/CallbackChannel;->count:I

    .line 12
    iput v0, p0, Lcom/app/thestream/callbacks/CallbackChannel;->count_total:I

    .line 13
    iput v0, p0, Lcom/app/thestream/callbacks/CallbackChannel;->pages:I

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackChannel;->posts:Ljava/util/List;

    return-void
.end method
