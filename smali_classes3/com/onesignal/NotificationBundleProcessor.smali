.class Lcom/onesignal/NotificationBundleProcessor;
.super Ljava/lang/Object;
.source "NotificationBundleProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/NotificationBundleProcessor$NotificationProcessingCallback;,
        Lcom/onesignal/NotificationBundleProcessor$ProcessBundleReceiverCallback;,
        Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;
    }
.end annotation


# static fields
.field private static final ANDROID_NOTIFICATION_ID:Ljava/lang/String; = "android_notif_id"

.field static final DEFAULT_ACTION:Ljava/lang/String; = "__DEFAULT__"

.field static final IAM_PREVIEW_KEY:Ljava/lang/String; = "os_in_app_message_preview_id"

.field public static final PUSH_ADDITIONAL_DATA_KEY:Ljava/lang/String; = "a"

.field public static final PUSH_MINIFIED_BUTTONS_LIST:Ljava/lang/String; = "o"

.field public static final PUSH_MINIFIED_BUTTON_ICON:Ljava/lang/String; = "p"

.field public static final PUSH_MINIFIED_BUTTON_ID:Ljava/lang/String; = "i"

.field public static final PUSH_MINIFIED_BUTTON_TEXT:Ljava/lang/String; = "n"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 7

    .line 272
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 273
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 275
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 277
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 279
    sget-object v4, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bundleAsJSONObject error for key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 446
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static hasRemoteResource(Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "licon"

    .line 450
    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bicon"

    .line 451
    invoke-static {p0, v0}, Lcom/onesignal/NotificationBundleProcessor;->isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "bg_img"

    .line 452
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isBuildKeyRemote(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1

    const-string v0, ""

    .line 456
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "http://"

    .line 457
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "https://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static markNotificationAsDismissed(Lcom/onesignal/OSNotificationGenerationJob;)V
    .locals 5

    .line 256
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->isNotificationToDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking restored or disabled notifications as dismissed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_notification_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 264
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    .line 265
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "dismissed"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    const-string v4, "notification"

    .line 267
    invoke-virtual {v1, v4, v2, v0, v3}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    return-void
.end method

.method private static maximizeButtonsFromBundle(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "n"

    const-string v1, "custom"

    const-string v2, "p"

    const-string v3, "i"

    const-string v4, "a"

    const-string v5, "o"

    .line 288
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    .line 292
    :cond_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_0

    .line 298
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 300
    :goto_0
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 302
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 303
    invoke-virtual {v8, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 305
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 306
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 310
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 311
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move-object v11, v10

    :goto_2
    const-string v12, "id"

    .line 315
    invoke-virtual {v9, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "text"

    .line 316
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "icon"

    .line 319
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "actionButtons"

    .line 324
    invoke-virtual {v7, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "actionId"

    const-string v2, "__DEFAULT__"

    .line 325
    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 326
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 327
    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    :cond_5
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 331
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method static newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 1

    .line 442
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method static processBundleFromReceiver(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessBundleReceiverCallback;)V
    .locals 3

    .line 364
    new-instance v0, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;

    invoke-direct {v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;-><init>()V

    .line 367
    invoke-static {p1}, Lcom/onesignal/OSNotificationFormatHelper;->isOneSignalBundle(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    invoke-interface {p2, v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessBundleReceiverCallback;->onBundleProcessed(Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 372
    invoke-virtual {v0, v1}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->setOneSignalPayload(Z)V

    .line 373
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->maximizeButtonsFromBundle(Landroid/os/Bundle;)V

    .line 375
    invoke-static {p0, p1}, Lcom/onesignal/OSInAppMessagePreviewHandler;->notificationReceived(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 377
    invoke-virtual {v0, v1}, Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;->setInAppPreviewShown(Z)V

    .line 378
    invoke-interface {p2, v0}, Lcom/onesignal/NotificationBundleProcessor$ProcessBundleReceiverCallback;->onBundleProcessed(Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)V

    return-void

    .line 382
    :cond_1
    new-instance v1, Lcom/onesignal/NotificationBundleProcessor$2;

    invoke-direct {v1, v0, p2}, Lcom/onesignal/NotificationBundleProcessor$2;-><init>(Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;Lcom/onesignal/NotificationBundleProcessor$ProcessBundleReceiverCallback;)V

    .line 395
    invoke-static {p0, p1, v0, v1}, Lcom/onesignal/NotificationBundleProcessor;->startNotificationProcessing(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;Lcom/onesignal/NotificationBundleProcessor$NotificationProcessingCallback;)V

    return-void
.end method

.method private static processCollapseKey(Lcom/onesignal/OSNotificationGenerationJob;)V
    .locals 10

    .line 336
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->isRestoring()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 338
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "collapse_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "do_not_collapse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    const-string v1, "android_notification_id"

    .line 343
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "notification"

    const-string v5, "collapse_id = ? AND dismissed = 0 AND opened = 0 "

    invoke-virtual/range {v2 .. v9}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 354
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/onesignal/OSNotification;->setAndroidNotificationId(I)V

    .line 357
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_0
    return-void
.end method

.method static processFromFCMIntentService(Landroid/content/Context;Lcom/onesignal/BundleCompat;)V
    .locals 10

    const-string v0, "android_notif_id"

    .line 69
    invoke-static {p0}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;)V

    :try_start_0
    const-string v1, "json_payload"

    .line 71
    invoke-interface {p1, v1}, Lcom/onesignal/BundleCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 73
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json_payload key is nonexistent from mBundle passed to ProcessFromFCMIntentService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 77
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "is_restoring"

    const/4 v3, 0x0

    .line 78
    invoke-interface {p1, v2, v3}, Lcom/onesignal/BundleCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v2, "timestamp"

    .line 79
    invoke-interface {p1, v2}, Lcom/onesignal/BundleCompat;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 82
    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-interface {p1, v0}, Lcom/onesignal/BundleCompat;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move v6, p1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 86
    :goto_0
    new-instance p1, Lcom/onesignal/NotificationBundleProcessor$1;

    move-object v2, p1

    move v3, v4

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/onesignal/NotificationBundleProcessor$1;-><init>(ZLorg/json/JSONObject;Landroid/content/Context;ILjava/lang/String;J)V

    .line 110
    invoke-static {p0, v1, p1}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static processJobForDisplay(Lcom/onesignal/OSNotificationController;Z)I
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-static {p0, v0, p1}, Lcom/onesignal/NotificationBundleProcessor;->processJobForDisplay(Lcom/onesignal/OSNotificationController;ZZ)I

    move-result p0

    return p0
.end method

.method private static processJobForDisplay(Lcom/onesignal/OSNotificationController;ZZ)I
    .locals 4

    .line 134
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting processJobForDisplay opened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " fromBackgroundLogic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationController;->getNotificationJob()Lcom/onesignal/OSNotificationGenerationJob;

    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->processCollapseKey(Lcom/onesignal/OSNotificationGenerationJob;)V

    .line 139
    invoke-virtual {v0}, Lcom/onesignal/OSNotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 140
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->shouldDisplayNotification(Lcom/onesignal/OSNotificationGenerationJob;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v2}, Lcom/onesignal/OSNotificationGenerationJob;->setIsNotificationToDisplay(Z)V

    if-eqz p2, :cond_0

    .line 145
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldFireForegroundHandlers(Lcom/onesignal/OSNotificationGenerationJob;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p0, v3}, Lcom/onesignal/OSNotificationController;->setFromBackgroundLogic(Z)V

    .line 147
    invoke-static {p0}, Lcom/onesignal/OneSignal;->fireForegroundHandlers(Lcom/onesignal/OSNotificationController;)V

    return v1

    .line 152
    :cond_0
    invoke-static {v0}, Lcom/onesignal/GenerateNotification;->displayNotification(Lcom/onesignal/OSNotificationGenerationJob;)Z

    move-result v3

    .line 156
    :cond_1
    invoke-virtual {v0}, Lcom/onesignal/OSNotificationGenerationJob;->isRestoring()Z

    move-result p2

    if-nez p2, :cond_2

    .line 157
    invoke-static {v0, p1, v3}, Lcom/onesignal/NotificationBundleProcessor;->processNotification(Lcom/onesignal/OSNotificationGenerationJob;ZZ)V

    .line 161
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationController;->getNotificationJob()Lcom/onesignal/OSNotificationGenerationJob;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSNotificationFormatHelper;->getOSNotificationIdFromJson(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    .line 162
    invoke-static {p0}, Lcom/onesignal/OSNotificationWorkManager;->removeNotificationIdProcessed(Ljava/lang/String;)V

    .line 163
    invoke-static {v0}, Lcom/onesignal/OneSignal;->handleNotificationReceived(Lcom/onesignal/OSNotificationGenerationJob;)V

    :cond_2
    return v1
.end method

.method static processJobForDisplay(Lcom/onesignal/OSNotificationGenerationJob;Z)I
    .locals 3

    .line 123
    new-instance v0, Lcom/onesignal/OSNotificationController;

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->isRestoring()Z

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/onesignal/OSNotificationController;-><init>(Lcom/onesignal/OSNotificationGenerationJob;ZZ)V

    const/4 p0, 0x0

    .line 124
    invoke-static {v0, p0, p1}, Lcom/onesignal/NotificationBundleProcessor;->processJobForDisplay(Lcom/onesignal/OSNotificationController;ZZ)I

    move-result p0

    return p0
.end method

.method static processNotification(Lcom/onesignal/OSNotificationGenerationJob;ZZ)V
    .locals 0

    .line 177
    invoke-static {p0, p1}, Lcom/onesignal/NotificationBundleProcessor;->saveNotification(Lcom/onesignal/OSNotificationGenerationJob;Z)V

    if-nez p2, :cond_0

    .line 182
    invoke-static {p0}, Lcom/onesignal/NotificationBundleProcessor;->markNotificationAsDismissed(Lcom/onesignal/OSNotificationGenerationJob;)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getApiNotificationId()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 189
    invoke-static {}, Lcom/onesignal/OSReceiveReceiptController;->getInstance()Lcom/onesignal/OSReceiveReceiptController;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/onesignal/OSReceiveReceiptController;->beginEnqueueingWork(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onesignal/OSSessionManager;->onNotificationReceived(Ljava/lang/String;)V

    return-void
.end method

.method private static saveNotification(Lcom/onesignal/OSNotificationGenerationJob;Z)V
    .locals 13

    const-string v0, "grp"

    const-string v1, "collapse_key"

    .line 200
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving Notification job: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object v3

    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/onesignal/NotificationBundleProcessor;->getCustomJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 207
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v5

    .line 211
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->isNotificationToDisplay()Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const-string v8, "notification"

    const/4 v9, 0x1

    if-eqz v6, :cond_0

    .line 212
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android_notification_id = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 214
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "dismissed"

    .line 215
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    invoke-virtual {v5, v8, v10, v6, v7}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 218
    invoke-static {v5, v2}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    .line 222
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "notification_id"

    const-string v11, "i"

    .line 223
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "group_id"

    .line 225
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_1
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "do_not_collapse"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "collapse_id"

    .line 227
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "opened"

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    .line 229
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p1, :cond_4

    const-string v0, "android_notification_id"

    .line 231
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    :cond_4
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "title"

    .line 234
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_5
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "message"

    .line 236
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getBody()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string p0, "google.sent_time"

    .line 239
    invoke-static {}, Lcom/onesignal/OneSignal;->getTime()Lcom/onesignal/OSTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/OSTime;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, p0, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v9, 0x3e8

    div-long/2addr v0, v9

    const-string p0, "google.ttl"

    const v4, 0x3f480

    .line 240
    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v9, p0

    add-long/2addr v0, v9

    const-string p0, "expire_time"

    .line 242
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "full_data"

    .line 244
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v5, v8, v7, v6}, Lcom/onesignal/OneSignalDbHelper;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 247
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification saved values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-nez p1, :cond_7

    .line 249
    invoke-static {v5, v2}, Lcom/onesignal/BadgeCountUpdater;->update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method private static shouldDisplayNotification(Lcom/onesignal/OSNotificationGenerationJob;)Z
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->hasExtender()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "alert"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSUtils;->isStringNotEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static startNotificationProcessing(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;Lcom/onesignal/NotificationBundleProcessor$NotificationProcessingCallback;)V
    .locals 12

    .line 402
    invoke-static {p1}, Lcom/onesignal/NotificationBundleProcessor;->bundleAsJSONObject(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v10

    .line 403
    invoke-static {}, Lcom/onesignal/OneSignal;->getTime()Lcom/onesignal/OSTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/OSTime;->getCurrentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    const-string v0, "is_restoring"

    const/4 v1, 0x0

    .line 404
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v0, "pri"

    const-string v3, "0"

    .line 405
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x9

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 407
    :goto_0
    new-instance v11, Lcom/onesignal/NotificationBundleProcessor$3;

    move-object v0, v11

    move v1, v2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, v10

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/onesignal/NotificationBundleProcessor$3;-><init>(ZLandroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/NotificationBundleProcessor$NotificationProcessingCallback;Lorg/json/JSONObject;JZLcom/onesignal/NotificationBundleProcessor$ProcessedBundleResult;)V

    .line 437
    invoke-static {p0, v10, v11}, Lcom/onesignal/OneSignal;->notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;)V

    return-void
.end method
