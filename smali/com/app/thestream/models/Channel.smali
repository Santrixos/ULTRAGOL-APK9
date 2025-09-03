.class public Lcom/app/thestream/models/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public category_name:Ljava/lang/String;

.field public channel_description:Ljava/lang/String;

.field public channel_id:Ljava/lang/String;

.field public channel_image:Ljava/lang/String;

.field public channel_name:Ljava/lang/String;

.field public channel_type:Ljava/lang/String;

.field public channel_url:Ljava/lang/String;

.field public user_agent:Ljava/lang/String;

.field public video_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->channel_url:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->channel_description:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/app/thestream/models/Channel;->user_agent:Ljava/lang/String;

    return-void
.end method
