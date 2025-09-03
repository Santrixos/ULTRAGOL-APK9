.class abstract Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;
.super Ljava/lang/Object;
.source "FocusTimeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/FocusTimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "FocusTimeProcessorBase"
.end annotation


# instance fields
.field protected MIN_ON_FOCUS_TIME_SEC:J

.field protected PREF_KEY_FOR_UNSENT_TIME:Ljava/lang/String;

.field private final runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private unsentActiveTime:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->unsentActiveTime:Ljava/lang/Long;

    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;JLjava/util/List;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->saveUnsentActiveData(JLjava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendUnsentTimeNow()V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->syncUnsentTimeFromSyncJob()V

    return-void
.end method

.method static synthetic access$300(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;Lcom/onesignal/FocusTimeController$FocusEventType;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendUnsentTimeNow(Lcom/onesignal/FocusTimeController$FocusEventType;)V

    return-void
.end method

.method static synthetic access$400(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;JLjava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->addTime(JLjava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)V

    return-void
.end method

.method static synthetic access$500(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;J)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->saveUnsentActiveTime(J)V

    return-void
.end method

.method private addTime(JLjava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;",
            "Lcom/onesignal/FocusTimeController$FocusEventType;",
            ")V"
        }
    .end annotation

    .line 232
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->saveUnsentActiveData(JLjava/util/List;)V

    .line 233
    invoke-direct {p0, p4}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendUnsentTimeNow(Lcom/onesignal/FocusTimeController$FocusEventType;)V

    return-void
.end method

.method private generateOnFocusPayload(J)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 308
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    .line 309
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "state"

    const-string v2, "ping"

    .line 310
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "active_time"

    .line 311
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/onesignal/OSUtils;

    invoke-direct {p2}, Lcom/onesignal/OSUtils;-><init>()V

    .line 312
    invoke-virtual {p2}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result p2

    const-string v0, "device_type"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    .line 313
    invoke-static {p1}, Lcom/onesignal/OneSignal;->addNetType(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method private getUnsentActiveTime()J
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->unsentActiveTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 221
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->PREF_KEY_FOR_UNSENT_TIME:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->unsentActiveTime:Ljava/lang/Long;

    .line 227
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":getUnsentActiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->unsentActiveTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->unsentActiveTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private hasMinSyncTime()Z
    .locals 5

    .line 255
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->getUnsentActiveTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->MIN_ON_FOCUS_TIME_SEC:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private saveUnsentActiveData(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":saveUnsentActiveData with lastFocusTimeInfluences: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->getUnsentActiveTime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 205
    invoke-virtual {p0, p3}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->saveInfluences(Ljava/util/List;)V

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->saveUnsentActiveTime(J)V

    return-void
.end method

.method private saveUnsentActiveTime(J)V
    .locals 3

    .line 210
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->unsentActiveTime:Ljava/lang/Long;

    .line 211
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":saveUnsentActiveTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->unsentActiveTime:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->PREF_KEY_FOR_UNSENT_TIME:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private sendOnFocus(J)V
    .locals 3

    .line 319
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":sendOnFocus with totalTimeActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->generateOnFocusPayload(J)Lorg/json/JSONObject;

    move-result-object v0

    .line 321
    invoke-virtual {p0, v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->additionalFieldsToAddToOnFocusPayload(Lorg/json/JSONObject;)V

    .line 322
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 326
    invoke-static {}, Lcom/onesignal/OneSignal;->hasEmailId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->generateOnFocusPayload(J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 329
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->hasSMSlId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    invoke-static {}, Lcom/onesignal/OneSignal;->getSMSId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->generateOnFocusPayload(J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 332
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->saveInfluences(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 335
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Generating on_focus:JSON Failed."

    invoke-static {p2, v0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sendOnFocusToPlayer(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 285
    new-instance v0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase$1;

    invoke-direct {v0, p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase$1;-><init>(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;)V

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "players/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/on_focus"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {p1, p2, v0}, Lcom/onesignal/OneSignalRestClient;->postSync(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    return-void
.end method

.method private sendUnsentTimeNow()V
    .locals 6

    .line 237
    invoke-virtual {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->getInfluences()Ljava/util/List;

    move-result-object v0

    .line 238
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->getUnsentActiveTime()J

    move-result-wide v1

    .line 239
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":sendUnsentTimeNow with time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " and influences: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {v3, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/onesignal/FocusTimeController$FocusEventType;->BACKGROUND:Lcom/onesignal/FocusTimeController$FocusEventType;

    invoke-direct {p0, v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendUnsentTimeNow(Lcom/onesignal/FocusTimeController$FocusEventType;)V

    return-void
.end method

.method private sendUnsentTimeNow(Lcom/onesignal/FocusTimeController$FocusEventType;)V
    .locals 2

    .line 246
    invoke-static {}, Lcom/onesignal/OneSignal;->hasUserId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":sendUnsentTimeNow not possible due to user id null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_0
    invoke-virtual {p0, p1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendTime(Lcom/onesignal/FocusTimeController$FocusEventType;)V

    return-void
.end method

.method private syncUnsentTimeFromSyncJob()V
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->hasMinSyncTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->syncOnFocusTime()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected additionalFieldsToAddToOnFocusPayload(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method protected abstract getInfluences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract saveInfluences(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract sendTime(Lcom/onesignal/FocusTimeController$FocusEventType;)V
.end method

.method protected syncOnFocusTime()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 278
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->hasMinSyncTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->getUnsentActiveTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->sendOnFocus(J)V

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->runningOnFocusTime:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 281
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected syncUnsentTimeOnBackgroundEvent()V
    .locals 2

    .line 259
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->hasMinSyncTime()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-static {}, Lcom/onesignal/OSSyncService;->getInstance()Lcom/onesignal/OSSyncService;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSyncService;->scheduleSyncTask(Landroid/content/Context;)V

    return-void
.end method
