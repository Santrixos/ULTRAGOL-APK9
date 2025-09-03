.class public Lcom/app/thestream/callbacks/CallbackChannelDetail;
.super Ljava/lang/Object;
.source "CallbackChannelDetail.java"


# instance fields
.field public post:Lcom/app/thestream/models/Channel;

.field public status:Ljava/lang/String;

.field public suggested:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Channel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackChannelDetail;->status:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackChannelDetail;->post:Lcom/app/thestream/models/Channel;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackChannelDetail;->suggested:Ljava/util/List;

    return-void
.end method
