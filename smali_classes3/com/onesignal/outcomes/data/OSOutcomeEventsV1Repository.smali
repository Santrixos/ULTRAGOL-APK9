.class public final Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;
.super Lcom/onesignal/outcomes/data/OSOutcomeEventsRepository;
.source "OSOutcomeEventsV1Repository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J(\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J(\u0010\u0014\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J(\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;",
        "Lcom/onesignal/outcomes/data/OSOutcomeEventsRepository;",
        "logger",
        "Lcom/onesignal/OSLogger;",
        "outcomeEventsCache",
        "Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;",
        "outcomeEventsService",
        "Lcom/onesignal/outcomes/data/OutcomeEventsService;",
        "(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;Lcom/onesignal/outcomes/data/OutcomeEventsService;)V",
        "requestMeasureDirectOutcomeEvent",
        "",
        "appId",
        "",
        "deviceType",
        "",
        "event",
        "Lcom/onesignal/OSOutcomeEvent;",
        "responseHandler",
        "Lcom/onesignal/OneSignalApiResponseHandler;",
        "requestMeasureIndirectOutcomeEvent",
        "requestMeasureOutcomeEvent",
        "eventParams",
        "Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;",
        "requestMeasureUnattributedOutcomeEvent",
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
.method public constructor <init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;Lcom/onesignal/outcomes/data/OutcomeEventsService;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcomeEventsCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outcomeEventsService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/outcomes/data/OSOutcomeEventsRepository;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/outcomes/data/OSOutcomeEventsCache;Lcom/onesignal/outcomes/data/OutcomeEventsService;)V

    return-void
.end method

.method private final requestMeasureDirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OSOutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 1

    .line 27
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OSOutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "app_id"

    .line 28
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "device_type"

    .line 29
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "direct"

    const/4 p3, 0x1

    .line 30
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 32
    invoke-virtual {p0}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->getOutcomeEventsService()Lcom/onesignal/outcomes/data/OutcomeEventsService;

    move-result-object p2

    const-string p3, "jsonObject"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p4}, Lcom/onesignal/outcomes/data/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p0}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->getLogger()Lcom/onesignal/OSLogger;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "Generating direct outcome:JSON Failed."

    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final requestMeasureIndirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OSOutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 1

    .line 41
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OSOutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "app_id"

    .line 42
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "device_type"

    .line 43
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "direct"

    const/4 p3, 0x0

    .line 44
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->getOutcomeEventsService()Lcom/onesignal/outcomes/data/OutcomeEventsService;

    move-result-object p2

    const-string p3, "jsonObject"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p4}, Lcom/onesignal/outcomes/data/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p0}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->getLogger()Lcom/onesignal/OSLogger;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "Generating indirect outcome:JSON Failed."

    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private final requestMeasureUnattributedOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OSOutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 1

    .line 55
    :try_start_0
    invoke-virtual {p3}, Lcom/onesignal/OSOutcomeEvent;->toJSONObjectForMeasure()Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "app_id"

    .line 56
    invoke-virtual {p3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "device_type"

    .line 57
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->getOutcomeEventsService()Lcom/onesignal/outcomes/data/OutcomeEventsService;

    move-result-object p2

    const-string p3, "jsonObject"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1, p4}, Lcom/onesignal/outcomes/data/OutcomeEventsService;->sendOutcomeEvent(Lorg/json/JSONObject;Lcom/onesignal/OneSignalApiResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p0}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->getLogger()Lcom/onesignal/OSLogger;

    move-result-object p2

    check-cast p1, Ljava/lang/Throwable;

    const-string p3, "Generating unattributed outcome:JSON Failed."

    invoke-interface {p2, p3, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public requestMeasureOutcomeEvent(Ljava/lang/String;ILcom/onesignal/outcomes/domain/OSOutcomeEventParams;Lcom/onesignal/OneSignalApiResponseHandler;)V
    .locals 2

    const-string v0, "appId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p3}, Lcom/onesignal/OSOutcomeEvent;->fromOutcomeEventParamsV2toOutcomeEventV1(Lcom/onesignal/outcomes/domain/OSOutcomeEventParams;)Lcom/onesignal/OSOutcomeEvent;

    move-result-object p3

    const-string v0, "event"

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/onesignal/OSOutcomeEvent;->getSession()Lcom/onesignal/influence/domain/OSInfluenceType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/onesignal/influence/domain/OSInfluenceType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->requestMeasureUnattributedOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OSOutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->requestMeasureIndirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OSOutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    goto :goto_0

    .line 17
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/outcomes/data/OSOutcomeEventsV1Repository;->requestMeasureDirectOutcomeEvent(Ljava/lang/String;ILcom/onesignal/OSOutcomeEvent;Lcom/onesignal/OneSignalApiResponseHandler;)V

    :goto_0
    return-void
.end method
