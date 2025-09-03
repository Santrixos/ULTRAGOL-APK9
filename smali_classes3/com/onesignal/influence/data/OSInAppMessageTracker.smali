.class public final Lcom/onesignal/influence/data/OSInAppMessageTracker;
.super Lcom/onesignal/influence/data/OSChannelTracker;
.source "OSInAppMessageTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0016J\u0008\u0010!\u001a\u00020\u001cH\u0016J\u0012\u0010\"\u001a\u00020\u00182\u0008\u0010#\u001a\u0004\u0018\u00010\u0012H\u0016J\u0008\u0010$\u001a\u00020\u001cH\u0016J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u0018H\u0016R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00128VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000cR\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/onesignal/influence/data/OSInAppMessageTracker;",
        "Lcom/onesignal/influence/data/OSChannelTracker;",
        "dataRepository",
        "Lcom/onesignal/influence/data/OSInfluenceDataRepository;",
        "logger",
        "Lcom/onesignal/OSLogger;",
        "timeProvider",
        "Lcom/onesignal/OSTime;",
        "(Lcom/onesignal/influence/data/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;Lcom/onesignal/OSTime;)V",
        "channelLimit",
        "",
        "getChannelLimit",
        "()I",
        "channelType",
        "Lcom/onesignal/influence/domain/OSInfluenceChannel;",
        "getChannelType",
        "()Lcom/onesignal/influence/domain/OSInfluenceChannel;",
        "idTag",
        "",
        "getIdTag",
        "()Ljava/lang/String;",
        "indirectAttributionWindow",
        "getIndirectAttributionWindow",
        "lastChannelObjects",
        "Lorg/json/JSONArray;",
        "getLastChannelObjects",
        "()Lorg/json/JSONArray;",
        "addSessionData",
        "",
        "jsonObject",
        "Lorg/json/JSONObject;",
        "influence",
        "Lcom/onesignal/influence/domain/OSInfluence;",
        "cacheState",
        "getLastChannelObjectsReceivedByNewId",
        "id",
        "initInfluencedTypeFromCache",
        "saveChannelObjects",
        "channelObjects",
        "onesignal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/onesignal/influence/data/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;Lcom/onesignal/OSTime;)V
    .locals 1

    const-string v0, "dataRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/influence/data/OSChannelTracker;-><init>(Lcom/onesignal/influence/data/OSInfluenceDataRepository;Lcom/onesignal/OSLogger;Lcom/onesignal/OSTime;)V

    return-void
.end method


# virtual methods
.method public addSessionData(Lorg/json/JSONObject;Lcom/onesignal/influence/domain/OSInfluence;)V
    .locals 1

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "influence"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public cacheState()V
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getInfluenceType()Lcom/onesignal/influence/domain/OSInfluenceType;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onesignal/influence/domain/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/domain/OSInfluenceType;

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getDataRepository()Lcom/onesignal/influence/data/OSInfluenceDataRepository;

    move-result-object v1

    sget-object v2, Lcom/onesignal/influence/domain/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/domain/OSInfluenceType;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/onesignal/influence/domain/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/domain/OSInfluenceType;

    :cond_1
    invoke-virtual {v1, v0}, Lcom/onesignal/influence/data/OSInfluenceDataRepository;->cacheIAMInfluenceType(Lcom/onesignal/influence/domain/OSInfluenceType;)V

    return-void
.end method

.method public getChannelLimit()I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getDataRepository()Lcom/onesignal/influence/data/OSInfluenceDataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/influence/data/OSInfluenceDataRepository;->getIamLimit()I

    move-result v0

    return v0
.end method

.method public getChannelType()Lcom/onesignal/influence/domain/OSInfluenceChannel;
    .locals 1

    .line 18
    sget-object v0, Lcom/onesignal/influence/domain/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/domain/OSInfluenceChannel;

    return-object v0
.end method

.method public getIdTag()Ljava/lang/String;
    .locals 1

    const-string v0, "iam_id"

    return-object v0
.end method

.method public getIndirectAttributionWindow()I
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getDataRepository()Lcom/onesignal/influence/data/OSInfluenceDataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/influence/data/OSInfluenceDataRepository;->getIamIndirectAttributionWindow()I

    move-result v0

    return v0
.end method

.method public getLastChannelObjects()Lorg/json/JSONArray;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getDataRepository()Lcom/onesignal/influence/data/OSInfluenceDataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/influence/data/OSInfluenceDataRepository;->getLastIAMsReceivedData()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getLastChannelObjectsReceivedByNewId(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getLastChannelObjects()Lorg/json/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 33
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getIdTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getLogger()Lcom/onesignal/OSLogger;

    move-result-object v1

    check-cast p1, Ljava/lang/Throwable;

    const-string v2, "Generating tracker lastChannelObjectReceived get JSONObject "

    invoke-interface {v1, v2, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0

    :catch_1
    move-exception p1

    .line 25
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getLogger()Lcom/onesignal/OSLogger;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Generating IAM tracker getLastChannelObjects JSONObject "

    invoke-interface {v0, v1, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    return-object p1
.end method

.method public initInfluencedTypeFromCache()V
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getDataRepository()Lcom/onesignal/influence/data/OSInfluenceDataRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/influence/data/OSInfluenceDataRepository;->getIamCachedInfluenceType()Lcom/onesignal/influence/domain/OSInfluenceType;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/onesignal/influence/domain/OSInfluenceType;->isIndirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getLastReceivedIds()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->setIndirectIds(Lorg/json/JSONArray;)V

    .line 62
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 60
    invoke-virtual {p0, v0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->setInfluenceType(Lcom/onesignal/influence/domain/OSInfluenceType;)V

    .line 63
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getLogger()Lcom/onesignal/OSLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal InAppMessageTracker initInfluencedTypeFromCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public saveChannelObjects(Lorg/json/JSONArray;)V
    .locals 1

    const-string v0, "channelObjects"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/onesignal/influence/data/OSInAppMessageTracker;->getDataRepository()Lcom/onesignal/influence/data/OSInfluenceDataRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onesignal/influence/data/OSInfluenceDataRepository;->saveIAMs(Lorg/json/JSONArray;)V

    return-void
.end method
