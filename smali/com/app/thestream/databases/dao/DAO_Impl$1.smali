.class Lcom/app/thestream/databases/dao/DAO_Impl$1;
.super Landroidx/room/EntityInsertionAdapter;
.source "DAO_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/databases/dao/DAO_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertionAdapter<",
        "Lcom/app/thestream/databases/dao/ChannelEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/databases/dao/DAO_Impl;


# direct methods
.method constructor <init>(Lcom/app/thestream/databases/dao/DAO_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl$1;->this$0:Lcom/app/thestream/databases/dao/DAO_Impl;

    invoke-direct {p0, p2}, Landroidx/room/EntityInsertionAdapter;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/app/thestream/databases/dao/ChannelEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 40
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 41
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 45
    :goto_0
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 46
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 50
    :goto_1
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 51
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_2

    .line 53
    :cond_2
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 55
    :goto_2
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 56
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_3

    .line 58
    :cond_3
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 60
    :goto_3
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 61
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_4

    .line 63
    :cond_4
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 65
    :goto_4
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 66
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_5

    .line 68
    :cond_5
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 70
    :goto_5
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_6

    .line 71
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_6

    .line 73
    :cond_6
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :goto_6
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_7

    .line 76
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 78
    :cond_7
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :goto_7
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_8

    .line 81
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_8

    .line 83
    :cond_8
    iget-object v0, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_8
    const/16 v0, 0xa

    .line 85
    iget-wide v1, p2, Lcom/app/thestream/databases/dao/ChannelEntity;->saved_date:J

    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method public bridge synthetic bind(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "stmt",
            "value"
        }
    .end annotation

    .line 32
    check-cast p2, Lcom/app/thestream/databases/dao/ChannelEntity;

    invoke-virtual {p0, p1, p2}, Lcom/app/thestream/databases/dao/DAO_Impl$1;->bind(Landroidx/sqlite/db/SupportSQLiteStatement;Lcom/app/thestream/databases/dao/ChannelEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `channel` (`channel_id`,`channel_name`,`channel_image`,`channel_url`,`channel_description`,`channel_type`,`video_id`,`category_name`,`user_agent`,`saved_date`) VALUES (?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
