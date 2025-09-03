.class public final Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;
.super Ljava/lang/Object;
.source "OSOutcomeEventsCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J(\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J \u0010\u001a\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J\u0018\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u000eH\u0007J\u0010\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\"H\u0007J\u000e\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0$H\u0007J4\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u001c2\u0006\u0010+\u001a\u00020\u000e2\u0008\u0010,\u001a\u0004\u0018\u00010&H\u0002J$\u0010-\u001a\u0008\u0012\u0004\u0012\u00020.0$2\u0006\u0010/\u001a\u00020\u000e2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020.0$H\u0007J*\u00101\u001a\u0004\u0018\u00010&2\u0006\u00102\u001a\u00020(2\u0006\u0010)\u001a\u00020\u001c2\u0006\u0010*\u001a\u00020\u001c2\u0006\u00103\u001a\u00020\u000eH\u0002J\u0010\u00104\u001a\u00020\u00122\u0006\u00105\u001a\u00020\"H\u0007J\u0018\u00106\u001a\u00020\u00122\u0010\u00107\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000e\u0018\u00010\rJ\u0010\u00108\u001a\u00020\u00122\u0006\u00105\u001a\u00020\"H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u00069"
    }
    d2 = {
        "Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;",
        "",
        "logger",
        "Lcom/onesignal/OSLogger;",
        "dbHelper",
        "Lcom/onesignal/OneSignalDb;",
        "preferences",
        "Lcom/onesignal/OSSharedPreferences;",
        "(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V",
        "isOutcomesV2ServiceEnabled",
        "",
        "()Z",
        "unattributedUniqueOutcomeEventsSentByChannel",
        "",
        "",
        "getUnattributedUniqueOutcomeEventsSentByChannel",
        "()Ljava/util/Set;",
        "addIdToListFromChannel",
        "",
        "cachedUniqueOutcomes",
        "",
        "Lcom/onesignal/outcomes/domain/OSCachedUniqueOutcome;",
        "channelIds",
        "Lorg/json/JSONArray;",
        "channel",
        "Lcom/onesignal/influence/domain/OSInfluenceChannel;",
        "addIdsToListFromSource",
        "sourceBody",
        "Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;",
        "cleanCachedUniqueOutcomeEventNotifications",
        "notificationTableName",
        "notificationIdColumnName",
        "deleteOldOutcomeEvent",
        "event",
        "Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;",
        "getAllEventsToSend",
        "",
        "getIAMInfluenceSource",
        "Lcom/onesignal/outcomes/domain/OSOutcomeSource;",
        "iamInfluenceType",
        "Lcom/onesignal/influence/domain/OSInfluenceType;",
        "directSourceBody",
        "indirectSourceBody",
        "iamIds",
        "source",
        "getNotCachedUniqueInfluencesForOutcome",
        "Lcom/onesignal/influence/domain/OSInfluence;",
        "name",
        "influences",
        "getNotificationInfluenceSource",
        "notificationInfluenceType",
        "notificationIds",
        "saveOutcomeEvent",
        "eventParams",
        "saveUnattributedUniqueOutcomeEventsSentByChannel",
        "unattributedUniqueOutcomeEvents",
        "saveUniqueOutcomeEventParams",
        "onesignal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final dbHelper:Lcom/onesignal/OneSignalDb;

.field private final logger:Lcom/onesignal/OSLogger;

.field private final preferences:Lcom/onesignal/OSSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferences"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    iput-object p2, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    iput-object p3, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-void
.end method

.method private final addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/domain/OSInfluenceChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/domain/OSCachedUniqueOutcome;",
            ">;",
            "Lorg/json/JSONArray;",
            "Lcom/onesignal/influence/domain/OSInfluenceChannel;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    new-instance v3, Lcom/onesignal/outcomes/domain/OSCachedUniqueOutcome;

    const-string v4, "influenceId"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2, p3}, Lcom/onesignal/outcomes/domain/OSCachedUniqueOutcome;-><init>(Ljava/lang/String;Lcom/onesignal/influence/domain/OSInfluenceChannel;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 222
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/domain/OSCachedUniqueOutcome;",
            ">;",
            "Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v0

    .line 231
    invoke-virtual {p2}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object p2

    .line 232
    sget-object v1, Lcom/onesignal/influence/domain/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/domain/OSInfluenceChannel;

    invoke-direct {p0, p1, v0, v1}, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/domain/OSInfluenceChannel;)V

    .line 233
    sget-object v0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/domain/OSInfluenceChannel;

    invoke-direct {p0, p1, p2, v0}, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->addIdToListFromChannel(Ljava/util/List;Lorg/json/JSONArray;Lcom/onesignal/influence/domain/OSInfluenceChannel;)V

    :cond_0
    return-void
.end method

.method private final getIAMInfluenceSource(Lcom/onesignal/influence/domain/OSInfluenceType;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Ljava/lang/String;Lcom/onesignal/outcomes/domain/OSOutcomeSource;)Lcom/onesignal/outcomes/domain/OSOutcomeSource;
    .locals 2

    .line 198
    sget-object v0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/onesignal/influence/domain/OSInfluenceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    if-eqz p5, :cond_1

    .line 206
    invoke-virtual {p5, p3}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;->setIndirectBody(Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    move-result-object p5

    if-eqz p5, :cond_1

    goto :goto_0

    .line 207
    :cond_1
    new-instance p5, Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    invoke-direct {p5, v1, p3}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)V

    goto :goto_0

    .line 200
    :cond_2
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->setInAppMessagesIds(Lorg/json/JSONArray;)V

    if-eqz p5, :cond_3

    .line 201
    invoke-virtual {p5, p2}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;->setDirectBody(Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    move-result-object p5

    if-eqz p5, :cond_3

    goto :goto_0

    .line 202
    :cond_3
    new-instance p5, Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    invoke-direct {p5, p2, v1}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)V

    :goto_0
    return-object p5
.end method

.method private final getNotificationInfluenceSource(Lcom/onesignal/influence/domain/OSInfluenceType;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Ljava/lang/String;)Lcom/onesignal/outcomes/domain/OSOutcomeSource;
    .locals 2

    .line 178
    sget-object v0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/onesignal/influence/domain/OSInfluenceType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    .line 185
    new-instance p1, Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    invoke-direct {p1, v1, p3}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)V

    goto :goto_0

    .line 180
    :cond_1
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->setNotificationIds(Lorg/json/JSONArray;)V

    .line 181
    new-instance p1, Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    invoke-direct {p1, p2, v1}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)V

    :goto_0
    move-object v1, p1

    :goto_1
    return-object v1
.end method


# virtual methods
.method public final declared-synchronized cleanCachedUniqueOutcomeEventNotifications(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "notificationTableName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationIdColumnName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT EXISTS(SELECT NULL FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " n "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "WHERE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " n."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "channel_influence_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "channel_type"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    sget-object p1, Lcom/onesignal/influence/domain/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/domain/OSInfluenceChannel;

    invoke-virtual {p1}, Lcom/onesignal/influence/domain/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "Locale.ROOT"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 327
    iget-object p2, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v0, "cached_unique_outcome"

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lcom/onesignal/OneSignalDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 325
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized deleteOldOutcomeEvent(Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v1, "outcome"

    const-string v2, "timestamp = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OneSignalDb;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getAllEventsToSend()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    monitor-enter p0

    .line 118
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    const/4 v9, 0x0

    .line 119
    move-object v0, v9

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 121
    :try_start_1
    iget-object v10, v7, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v11, "outcome"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v10 .. v17}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const-string v0, "notification_influence_type"

    .line 134
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    sget-object v1, Lcom/onesignal/influence/domain/OSInfluenceType;->Companion:Lcom/onesignal/influence/domain/OSInfluenceType$Companion;

    invoke-virtual {v1, v0}, Lcom/onesignal/influence/domain/OSInfluenceType$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/domain/OSInfluenceType;

    move-result-object v0

    const-string v1, "iam_influence_type"

    .line 136
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    sget-object v2, Lcom/onesignal/influence/domain/OSInfluenceType;->Companion:Lcom/onesignal/influence/domain/OSInfluenceType$Companion;

    invoke-virtual {v2, v1}, Lcom/onesignal/influence/domain/OSInfluenceType$Companion;->fromString(Ljava/lang/String;)Lcom/onesignal/influence/domain/OSInfluenceType;

    move-result-object v2

    const-string v1, "notification_ids"

    .line 140
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "[]"

    :goto_0
    const-string v3, "iam_ids"

    .line 142
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, "[]"

    :goto_1
    move-object v5, v3

    const-string v3, "name"

    .line 146
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v3, "weight"

    .line 147
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v14

    const-string v3, "timestamp"

    .line 148
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    :try_start_3
    new-instance v3, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;

    const/4 v4, 0x3

    invoke-direct {v3, v9, v9, v4, v9}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 152
    new-instance v6, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;

    invoke-direct {v6, v9, v9, v4, v9}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;-><init>(Lorg/json/JSONArray;Lorg/json/JSONArray;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 153
    invoke-direct {v7, v0, v3, v6, v1}, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->getNotificationInfluenceSource(Lcom/onesignal/influence/domain/OSInfluenceType;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Ljava/lang/String;)Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    move-result-object v0

    move-object/from16 v1, p0

    move-object v4, v6

    move-object v6, v0

    .line 155
    invoke-direct/range {v1 .. v6}, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->getIAMInfluenceSource(Lcom/onesignal/influence/domain/OSInfluenceType;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Ljava/lang/String;Lcom/onesignal/outcomes/domain/OSOutcomeSource;)Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    if-eqz v0, :cond_3

    :goto_2
    move-object v13, v0

    goto :goto_3

    .line 156
    :cond_3
    new-instance v0, Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    invoke-direct {v0, v9, v9}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;-><init>(Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)V

    goto :goto_2

    .line 157
    :goto_3
    new-instance v0, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;

    const-string v1, "name"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;-><init>(Ljava/lang/String;Lcom/onesignal/outcomes/domain/OSOutcomeSource;FJ)V

    .line 158
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 161
    :try_start_4
    iget-object v1, v7, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Generating JSONArray from notifications ids outcome:JSON Failed."

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, v2, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_0

    :cond_4
    if-eqz v10, :cond_5

    .line 168
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 171
    :cond_5
    monitor-exit p0

    return-object v8

    :catchall_0
    move-exception v0

    move-object v9, v10

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v9, :cond_6

    .line 168
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getNotCachedUniqueInfluencesForOutcome(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    const-string v2, "name"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "influences"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v4, 0x0

    .line 269
    move-object v5, v4

    check-cast v5, Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 271
    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onesignal/influence/domain/OSInfluence;

    .line 272
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 273
    invoke-virtual {v5}, Lcom/onesignal/influence/domain/OSInfluence;->getIds()Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 275
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_2

    .line 276
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 277
    invoke-virtual {v5}, Lcom/onesignal/influence/domain/OSInfluence;->getInfluenceChannel()Lcom/onesignal/influence/domain/OSInfluenceChannel;

    move-result-object v12

    new-array v15, v9, [Ljava/lang/String;

    const-string v16, "channel_influence_id = ? AND channel_type = ? AND name = ?"

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/String;

    aput-object v11, v14, v9

    .line 282
    invoke-virtual {v12}, Lcom/onesignal/influence/domain/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v14, v13

    const/4 v12, 0x2

    aput-object v0, v14, v12

    .line 283
    iget-object v13, v1, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v12, "cached_unique_outcome"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, "1"

    move-object/from16 v17, v14

    move-object v14, v12

    invoke-interface/range {v13 .. v21}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v12, "cursor"

    .line 295
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 299
    invoke-virtual {v5}, Lcom/onesignal/influence/domain/OSInfluence;->copy()Lcom/onesignal/influence/domain/OSInfluence;

    move-result-object v5

    .line 300
    invoke-virtual {v5, v6}, Lcom/onesignal/influence/domain/OSInfluence;->setIds(Lorg/json/JSONArray;)V

    .line 302
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    .line 310
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 307
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    .line 310
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_4

    goto :goto_2

    .line 313
    :cond_4
    :goto_3
    monitor-exit p0

    return-object v2

    :goto_4
    if-eqz v4, :cond_5

    .line 310
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getUnattributedUniqueOutcomeEventsSentByChannel()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 34
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    const/4 v3, 0x0

    .line 33
    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final isOutcomesV2ServiceEnabled()Z
    .locals 4

    .line 27
    iget-object v0, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 28
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    invoke-interface {v2}, Lcom/onesignal/OSSharedPreferences;->getOutcomesV2KeyName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 27
    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/OSSharedPreferences;->getBool(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized saveOutcomeEvent(Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "eventParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 62
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 63
    sget-object v2, Lcom/onesignal/influence/domain/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/domain/OSInfluenceType;

    .line 64
    sget-object v3, Lcom/onesignal/influence/domain/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/domain/OSInfluenceType;

    .line 66
    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 67
    invoke-virtual {v4}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 69
    sget-object v2, Lcom/onesignal/influence/domain/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/domain/OSInfluenceType;

    move-object v0, v5

    .line 73
    :cond_0
    invoke-virtual {v4}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 74
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 75
    sget-object v3, Lcom/onesignal/influence/domain/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/domain/OSInfluenceType;

    move-object v1, v4

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 82
    invoke-virtual {v4}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->getNotificationIds()Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 83
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 84
    sget-object v2, Lcom/onesignal/influence/domain/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/domain/OSInfluenceType;

    move-object v0, v5

    .line 88
    :cond_2
    invoke-virtual {v4}, Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;->getInAppMessagesIds()Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 89
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 90
    sget-object v3, Lcom/onesignal/influence/domain/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/domain/OSInfluenceType;

    move-object v1, v4

    .line 95
    :cond_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "notification_ids"

    .line 97
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iam_ids"

    .line 98
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notification_influence_type"

    .line 100
    invoke-virtual {v2}, Lcom/onesignal/influence/domain/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iam_influence_type"

    .line 101
    invoke-virtual {v3}, Lcom/onesignal/influence/domain/OSInfluenceType;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    .line 103
    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "weight"

    .line 104
    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getWeight()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v0, "timestamp"

    .line 105
    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getTimestamp()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    iget-object p1, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v0, "outcome"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v4}, Lcom/onesignal/OneSignalDb;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 101
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final saveUnattributedUniqueOutcomeEventsSentByChannel(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 40
    invoke-interface {v0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "PREFS_OS_UNATTRIBUTED_UNIQUE_OUTCOME_EVENTS_SENT"

    .line 39
    invoke-interface {v0, v1, v2, p1}, Lcom/onesignal/OSSharedPreferences;->saveStringSet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public final declared-synchronized saveUniqueOutcomeEventParams(Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "eventParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal saveUniqueOutcomeEventParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getOutcomeId()Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 246
    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;->getDirectBody()Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 247
    :goto_0
    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;->getOutcomeSource()Lcom/onesignal/outcomes/domain/OSOutcomeSource;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/onesignal/outcomes/domain/OSOutcomeSource;->getIndirectBody()Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    .line 248
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)V

    .line 249
    invoke-direct {p0, v1, p1}, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->addIdsToListFromSource(Ljava/util/List;Lcom/onesignal/outcomes/domain/OSOutcomeSourceBody;)V

    .line 251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/outcomes/domain/OSCachedUniqueOutcome;

    .line 252
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "channel_influence_id"

    .line 253
    invoke-virtual {v1}, Lcom/onesignal/outcomes/domain/OSCachedUniqueOutcome;->getInfluenceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "channel_type"

    .line 254
    invoke-virtual {v1}, Lcom/onesignal/outcomes/domain/OSCachedUniqueOutcome;->getChannel()Lcom/onesignal/influence/domain/OSInfluenceChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/influence/domain/OSInfluenceChannel;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    .line 255
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;->dbHelper:Lcom/onesignal/OneSignalDb;

    const-string v4, "cached_unique_outcome"

    invoke-interface {v1, v4, v3, v2}, Lcom/onesignal/OneSignalDb;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 260
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
