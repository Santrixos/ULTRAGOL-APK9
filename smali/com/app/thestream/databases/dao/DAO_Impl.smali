.class public final Lcom/app/thestream/databases/dao/DAO_Impl;
.super Ljava/lang/Object;
.source "DAO_Impl.java"

# interfaces
.implements Lcom/app/thestream/databases/dao/DAO;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfChannelEntity:Landroidx/room/EntityInsertionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/EntityInsertionAdapter<",
            "Lcom/app/thestream/databases/dao/ChannelEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final __preparedStmtOfDeleteAllChannel:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteChannel:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "__db"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 32
    new-instance v0, Lcom/app/thestream/databases/dao/DAO_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/app/thestream/databases/dao/DAO_Impl$1;-><init>(Lcom/app/thestream/databases/dao/DAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__insertionAdapterOfChannelEntity:Landroidx/room/EntityInsertionAdapter;

    .line 88
    new-instance v0, Lcom/app/thestream/databases/dao/DAO_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/app/thestream/databases/dao/DAO_Impl$2;-><init>(Lcom/app/thestream/databases/dao/DAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__preparedStmtOfDeleteChannel:Landroidx/room/SharedSQLiteStatement;

    .line 95
    new-instance v0, Lcom/app/thestream/databases/dao/DAO_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/app/thestream/databases/dao/DAO_Impl$3;-><init>(Lcom/app/thestream/databases/dao/DAO_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__preparedStmtOfDeleteAllChannel:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method public static getRequiredConverters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllChannel()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 139
    iget-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__preparedStmtOfDeleteAllChannel:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 142
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 143
    iget-object v1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 146
    iget-object v1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__preparedStmtOfDeleteAllChannel:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 145
    iget-object v2, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 146
    iget-object v2, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__preparedStmtOfDeleteAllChannel:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 147
    throw v1
.end method

.method public deleteChannel(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "channel_id"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 119
    iget-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__preparedStmtOfDeleteChannel:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 122
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 129
    iget-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 132
    iget-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__preparedStmtOfDeleteChannel:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 131
    iget-object v1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 132
    iget-object v1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__preparedStmtOfDeleteChannel:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 133
    throw p1
.end method

.method public getAllChannel()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/app/thestream/databases/dao/ChannelEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM channel ORDER BY saved_date DESC"

    const/4 v2, 0x0

    .line 153
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 154
    iget-object v0, v1, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 155
    iget-object v0, v1, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "channel_id"

    .line 157
    invoke-static {v2, v0}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "channel_name"

    .line 158
    invoke-static {v2, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "channel_image"

    .line 159
    invoke-static {v2, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "channel_url"

    .line 160
    invoke-static {v2, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "channel_description"

    .line 161
    invoke-static {v2, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "channel_type"

    .line 162
    invoke-static {v2, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "video_id"

    .line 163
    invoke-static {v2, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "category_name"

    .line 164
    invoke-static {v2, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "user_agent"

    .line 165
    invoke-static {v2, v12}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "saved_date"

    .line 166
    invoke-static {v2, v13}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 167
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_9

    .line 170
    new-instance v15, Lcom/app/thestream/databases/dao/ChannelEntity;

    invoke-direct {v15}, Lcom/app/thestream/databases/dao/ChannelEntity;-><init>()V

    .line 171
    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 172
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    goto :goto_1

    .line 174
    :cond_0
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    .line 176
    :goto_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 177
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    goto :goto_2

    .line 179
    :cond_1
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    .line 181
    :goto_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    .line 182
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    goto :goto_3

    .line 184
    :cond_2
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    .line 186
    :goto_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    .line 187
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    goto :goto_4

    .line 189
    :cond_3
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    .line 191
    :goto_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    .line 192
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    goto :goto_5

    .line 194
    :cond_4
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    .line 196
    :goto_5
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 197
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    goto :goto_6

    .line 199
    :cond_5
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    .line 201
    :goto_6
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    .line 202
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    goto :goto_7

    .line 204
    :cond_6
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    .line 206
    :goto_7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    .line 207
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    goto :goto_8

    .line 209
    :cond_7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    .line 211
    :goto_8
    invoke-interface {v2, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    .line 212
    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    goto :goto_9

    .line 214
    :cond_8
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    :goto_9
    move v4, v0

    .line 216
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v15, Lcom/app/thestream/databases/dao/ChannelEntity;->saved_date:J

    .line 217
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v1, p0

    move v0, v4

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 221
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 222
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_0
    move-exception v0

    .line 221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 222
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 223
    throw v0
.end method

.method public getChannel(Ljava/lang/String;)Lcom/app/thestream/databases/dao/ChannelEntity;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "channel_id"
        }
    .end annotation

    const-string v0, "SELECT * FROM channel WHERE channel_id = ? LIMIT 1"

    const/4 v1, 0x1

    .line 255
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 258
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 262
    :goto_0
    iget-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 263
    iget-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v1, "channel_id"

    .line 265
    invoke-static {p1, v1}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v3, "channel_name"

    .line 266
    invoke-static {p1, v3}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "channel_image"

    .line 267
    invoke-static {p1, v4}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "channel_url"

    .line 268
    invoke-static {p1, v5}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "channel_description"

    .line 269
    invoke-static {p1, v6}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "channel_type"

    .line 270
    invoke-static {p1, v7}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "video_id"

    .line 271
    invoke-static {p1, v8}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "category_name"

    .line 272
    invoke-static {p1, v9}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "user_agent"

    .line 273
    invoke-static {p1, v10}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "saved_date"

    .line 274
    invoke-static {p1, v11}, Landroidx/room/util/CursorUtil;->getColumnIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    .line 276
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 277
    new-instance v12, Lcom/app/thestream/databases/dao/ChannelEntity;

    invoke-direct {v12}, Lcom/app/thestream/databases/dao/ChannelEntity;-><init>()V

    .line 278
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 279
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    goto :goto_1

    .line 281
    :cond_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_id:Ljava/lang/String;

    .line 283
    :goto_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    goto :goto_2

    .line 286
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_name:Ljava/lang/String;

    .line 288
    :goto_2
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 289
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    goto :goto_3

    .line 291
    :cond_3
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_image:Ljava/lang/String;

    .line 293
    :goto_3
    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 294
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    goto :goto_4

    .line 296
    :cond_4
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_url:Ljava/lang/String;

    .line 298
    :goto_4
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 299
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    goto :goto_5

    .line 301
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_description:Ljava/lang/String;

    .line 303
    :goto_5
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    goto :goto_6

    .line 306
    :cond_6
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->channel_type:Ljava/lang/String;

    .line 308
    :goto_6
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 309
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    goto :goto_7

    .line 311
    :cond_7
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->video_id:Ljava/lang/String;

    .line 313
    :goto_7
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 314
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    goto :goto_8

    .line 316
    :cond_8
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->category_name:Ljava/lang/String;

    .line 318
    :goto_8
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 319
    iput-object v2, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    goto :goto_9

    .line 321
    :cond_9
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->user_agent:Ljava/lang/String;

    .line 323
    :goto_9
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v12, Lcom/app/thestream/databases/dao/ChannelEntity;->saved_date:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v12

    .line 329
    :cond_a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 330
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v2

    :catchall_0
    move-exception v1

    .line 329
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 330
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 331
    throw v1
.end method

.method public getChannelCount()Ljava/lang/Integer;
    .locals 5

    const-string v0, "SELECT COUNT(channel_id) FROM channel"

    const/4 v1, 0x0

    .line 229
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 230
    iget-object v2, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 231
    iget-object v2, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Landroidx/room/util/DBUtil;->query(Landroidx/room/RoomDatabase;Landroidx/sqlite/db/SupportSQLiteQuery;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    .line 234
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v1

    .line 247
    :cond_1
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 248
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 247
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 248
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 249
    throw v1
.end method

.method public insertChannel(Lcom/app/thestream/databases/dao/ChannelEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "channel"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->assertNotSuspendingTransaction()V

    .line 107
    iget-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__insertionAdapterOfChannelEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/app/thestream/databases/dao/DAO_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 113
    throw p1
.end method
