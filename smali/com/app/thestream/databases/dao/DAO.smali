.class public interface abstract Lcom/app/thestream/databases/dao/DAO;
.super Ljava/lang/Object;
.source "DAO.java"


# virtual methods
.method public abstract deleteAllChannel()V
.end method

.method public abstract deleteChannel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_id"
        }
    .end annotation
.end method

.method public abstract getAllChannel()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/app/thestream/databases/dao/ChannelEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChannel(Ljava/lang/String;)Lcom/app/thestream/databases/dao/ChannelEntity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel_id"
        }
    .end annotation
.end method

.method public abstract getChannelCount()Ljava/lang/Integer;
.end method

.method public abstract insertChannel(Lcom/app/thestream/databases/dao/ChannelEntity;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation
.end method
