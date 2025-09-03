.class public Lcom/startapp/g7$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/g7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/g7;


# direct methods
.method public constructor <init>(Lcom/startapp/g7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/g7$a;->a:Lcom/startapp/g7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    const-string v0, ";"

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/startapp/g7$a;->a:Lcom/startapp/g7;

    .line 2
    invoke-virtual {v2}, Lcom/startapp/g7;->a()Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 15
    :cond_0
    iget-object v4, v2, Lcom/startapp/g7;->a:Landroid/content/SharedPreferences;

    const-wide/16 v5, 0x0

    const-string v7, "181bb7005f9db75a"

    invoke-interface {v4, v7, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 16
    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;->c()I

    move-result v6

    const v8, 0xea60

    mul-int v6, v6, v8

    int-to-long v8, v6

    add-long/2addr v4, v8

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v4, v8

    if-gtz v6, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 18
    :try_start_0
    iget-object v6, v2, Lcom/startapp/g7;->b:Lcom/startapp/i7;

    .line 19
    invoke-virtual {v6}, Lcom/startapp/m2;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/String;

    .line 34
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-string v12, "SELECT requestId, statusId, requests.value AS request, statuses.value AS status, COUNT(*), MIN(durationNanos), MAX(durationNanos), AVG(durationNanos), MIN(timeMillis) FROM traces JOIN requests ON requests.id = traces.requestId JOIN statuses ON statuses.id = traces.statusId WHERE timeMillis < ? GROUP BY requestId, statusId"

    .line 35
    invoke-virtual {v6, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 36
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 38
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 39
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x3

    .line 40
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x4

    move-object/from16 v16, v6

    .line 41
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 43
    invoke-virtual {v3}, Lcom/startapp/sdk/adsbase/remoteconfig/NetworkDiagnosticConfig;->b()I

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v17, v2

    int-to-long v1, v13

    cmp-long v13, v5, v1

    if-gez v13, :cond_1

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    .line 54
    :try_start_1
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v13, 0x6

    move-wide/from16 v18, v14

    .line 55
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v15, 0x7

    move-wide/from16 v20, v11

    move-object v12, v10

    .line 56
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v15, 0x8

    move-object/from16 v22, v7

    move-wide/from16 v23, v8

    .line 57
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 59
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v23

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    new-instance v6, Lcom/startapp/i4;

    sget-object v7, Lcom/startapp/j4;->j:Lcom/startapp/j4;

    invoke-direct {v6, v7}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    .line 73
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/startapp/i4;->h:Ljava/lang/Long;

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v8, v20

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, v18

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 75
    iput-object v7, v6, Lcom/startapp/i4;->k:Ljava/lang/String;

    move-object/from16 v7, v16

    .line 76
    iput-object v7, v6, Lcom/startapp/i4;->i:Ljava/lang/String;

    .line 77
    iput-object v12, v6, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 78
    iput-object v5, v6, Lcom/startapp/i4;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v5, v17

    .line 79
    :try_start_2
    iget-object v7, v5, Lcom/startapp/g7;->f:Lcom/startapp/n4;

    invoke-virtual {v6, v7}, Lcom/startapp/i4;->a(Lcom/startapp/n4;)V

    move-wide v8, v1

    move-object v2, v5

    move-object/from16 v7, v22

    const/4 v5, 0x2

    const/4 v10, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v5, v17

    goto :goto_2

    :cond_2
    move-object v5, v2

    move-object/from16 v22, v7

    move-wide v1, v8

    .line 80
    iget-object v0, v5, Lcom/startapp/g7;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move-object/from16 v3, v22

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_1
    if-eqz v4, :cond_6

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v5, v2

    :goto_2
    const/4 v1, 0x2

    .line 81
    :try_start_3
    invoke-virtual {v5, v1}, Lcom/startapp/g7;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_4
    if-eqz v4, :cond_6

    .line 86
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_3
    move-exception v0

    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_5
    throw v0

    :cond_6
    :goto_4
    return-void
.end method
