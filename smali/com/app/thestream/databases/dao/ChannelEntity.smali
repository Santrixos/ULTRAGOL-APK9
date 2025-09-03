.class public Lcom/app/thestream/databases/dao/ChannelEntity;
.super Ljava/lang/Object;
.source "ChannelEntity.java"


# instance fields
.field public category_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public channel_description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public channel_id:Ljava/lang/String;

.field public channel_image:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public channel_name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public channel_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public channel_url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public saved_date:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public user_agent:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public video_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->saved_date:J

    return-void
.end method

.method public static entity(Lcom/app/thestream/models/Channel;)Lcom/app/thestream/databases/dao/ChannelEntity;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "radio"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/app/thestream/databases/dao/ChannelEntity;

    invoke-direct {v0}, Lcom/app/thestream/databases/dao/ChannelEntity;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    .line 60
    iget-object v1, p0, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/app/thestream/models/Channel;->channel_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/app/thestream/models/Channel;->channel_description:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    .line 65
    iget-object v1, p0, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    .line 66
    iget-object v1, p0, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    .line 67
    iget-object p0, p0, Lcom/app/thestream/models/Channel;->user_agent:Ljava/lang/String;

    iput-object p0, v0, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public original()Lcom/app/thestream/models/Channel;
    .locals 2

    .line 72
    new-instance v0, Lcom/app/thestream/models/Channel;

    invoke-direct {v0}, Lcom/app/thestream/models/Channel;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->channel_url:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->channel_description:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    .line 81
    iget-object v1, p0, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    iput-object v1, v0, Lcom/app/thestream/models/Channel;->user_agent:Ljava/lang/String;

    return-object v0
.end method
