.class public Lcom/onesignal/OneSignal;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OneSignal$PromptActionResult;,
        Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;,
        Lcom/onesignal/OneSignal$OutcomeCallback;,
        Lcom/onesignal/OneSignal$IAPUpdateJob;,
        Lcom/onesignal/OneSignal$EntryStateListener;,
        Lcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;,
        Lcom/onesignal/OneSignal$PostNotificationResponseHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateHandler;,
        Lcom/onesignal/OneSignal$EmailUpdateError;,
        Lcom/onesignal/OneSignal$EmailErrorType;,
        Lcom/onesignal/OneSignal$OSSMSUpdateHandler;,
        Lcom/onesignal/OneSignal$OSSMSUpdateError;,
        Lcom/onesignal/OneSignal$SMSErrorType;,
        Lcom/onesignal/OneSignal$OSInternalExternalUserIdUpdateCompletionHandler;,
        Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;,
        Lcom/onesignal/OneSignal$ExternalIdError;,
        Lcom/onesignal/OneSignal$ExternalIdErrorType;,
        Lcom/onesignal/OneSignal$OSSetLanguageCompletionHandler;,
        Lcom/onesignal/OneSignal$OSLanguageError;,
        Lcom/onesignal/OneSignal$SendTagsError;,
        Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;,
        Lcom/onesignal/OneSignal$OSGetTagsHandler;,
        Lcom/onesignal/OneSignal$OSInAppMessageClickHandler;,
        Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;,
        Lcom/onesignal/OneSignal$OSNotificationWillShowInForegroundHandler;,
        Lcom/onesignal/OneSignal$OSRemoteNotificationReceivedHandler;,
        Lcom/onesignal/OneSignal$AppEntryAction;,
        Lcom/onesignal/OneSignal$LOG_LEVEL;
    }
.end annotation


# static fields
.field static final MIN_ON_SESSION_TIME_MILLIS:J = 0x7530L

.field private static final VERSION:Ljava/lang/String; = "040800"

.field private static androidParamsRequestStarted:Z

.field private static apiClient:Lcom/onesignal/OneSignalAPIClient;

.field static appActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field static appContext:Landroid/content/Context;

.field private static appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

.field static appId:Ljava/lang/String;

.field private static currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static currentPermissionState:Lcom/onesignal/OSPermissionState;

.field private static currentSMSSubscriptionState:Lcom/onesignal/OSSMSSubscriptionState;

.field private static currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field private static delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

.field private static emailId:Ljava/lang/String;

.field private static emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSEmailSubscriptionObserver;",
            "Lcom/onesignal/OSEmailSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

.field private static entryStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/OneSignal$EntryStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static focusTimeController:Lcom/onesignal/FocusTimeController;

.field private static getTagsCall:Z

.field static googleProjectNumber:Ljava/lang/String;

.field private static iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

.field static inAppMessageClickHandler:Lcom/onesignal/OneSignal$OSInAppMessageClickHandler;

.field private static inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

.field private static inForeground:Z

.field private static initDone:Z

.field static languageContext:Lcom/onesignal/language/LanguageContext;

.field static lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

.field private static lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

.field static lastPermissionState:Lcom/onesignal/OSPermissionState;

.field private static lastRegistrationId:Ljava/lang/String;

.field static lastSMSSubscriptionState:Lcom/onesignal/OSSMSSubscriptionState;

.field static lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

.field private static locationFired:Z

.field private static logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static logger:Lcom/onesignal/OSLogger;

.field private static mPushRegistrator:Lcom/onesignal/PushRegistrator;

.field private static notificationDataController:Lcom/onesignal/OSNotificationDataController;

.field static notificationOpenedHandler:Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;

.field static notificationWillShowInForegroundHandler:Lcom/onesignal/OneSignal$OSNotificationWillShowInForegroundHandler;

.field private static osUtils:Lcom/onesignal/OSUtils;

.field private static outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

.field private static final outcomeEventsControllerSyncLock:Ljava/lang/Object;

.field private static outcomeEventsFactory:Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;

.field private static final pendingGetTagsHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/onesignal/OneSignal$OSGetTagsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static permissionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static postedOpenedNotifIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static preferences:Lcom/onesignal/OSSharedPreferences;

.field private static registerForPushFired:Z

.field static remoteNotificationReceivedHandler:Lcom/onesignal/OneSignal$OSRemoteNotificationReceivedHandler;

.field private static remoteParamController:Lcom/onesignal/OSRemoteParamController;

.field public static sdkType:Ljava/lang/String;

.field private static sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

.field private static sessionManager:Lcom/onesignal/OSSessionManager;

.field private static smsId:Ljava/lang/String;

.field private static smsLogoutHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

.field private static smsSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSMSSubscriptionObserver;",
            "Lcom/onesignal/OSSMSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static smsUpdateHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

.field private static subscribableStatus:I

.field private static subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation
.end field

.field private static taskController:Lcom/onesignal/OSTaskController;

.field private static taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

.field private static time:Lcom/onesignal/OSTime;

.field private static trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

.field private static trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

.field private static trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

.field private static trackerFactory:Lcom/onesignal/influence/data/OSTrackerFactory;

.field private static unprocessedOpenedNotifs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static userId:Ljava/lang/String;

.field private static visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

.field private static waitingToPostStateSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->entryStateListeners:Ljava/util/List;

    .line 393
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 394
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const/4 v0, 0x0

    .line 396
    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 397
    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 398
    sput-object v0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    const v1, 0x7fffffff

    .line 399
    sput v1, Lcom/onesignal/OneSignal;->subscribableStatus:I

    .line 402
    sput-object v0, Lcom/onesignal/OneSignal;->languageContext:Lcom/onesignal/language/LanguageContext;

    .line 425
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 439
    new-instance v0, Lcom/onesignal/OSLogWrapper;

    invoke-direct {v0}, Lcom/onesignal/OSLogWrapper;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    .line 445
    new-instance v0, Lcom/onesignal/OneSignal$1;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$1;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    .line 456
    new-instance v0, Lcom/onesignal/OSInAppMessageControllerFactory;

    invoke-direct {v0}, Lcom/onesignal/OSInAppMessageControllerFactory;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

    .line 460
    new-instance v0, Lcom/onesignal/OSTimeImpl;

    invoke-direct {v0}, Lcom/onesignal/OSTimeImpl;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->time:Lcom/onesignal/OSTime;

    .line 461
    new-instance v0, Lcom/onesignal/OSRemoteParamController;

    invoke-direct {v0}, Lcom/onesignal/OSRemoteParamController;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    .line 462
    new-instance v0, Lcom/onesignal/OSTaskController;

    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v0, v1}, Lcom/onesignal/OSTaskController;-><init>(Lcom/onesignal/OSLogger;)V

    sput-object v0, Lcom/onesignal/OneSignal;->taskController:Lcom/onesignal/OSTaskController;

    .line 463
    new-instance v0, Lcom/onesignal/OSTaskRemoteController;

    sget-object v1, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    sget-object v2, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSTaskRemoteController;-><init>(Lcom/onesignal/OSRemoteParamController;Lcom/onesignal/OSLogger;)V

    sput-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    .line 464
    new-instance v0, Lcom/onesignal/OneSignalRestClientWrapper;

    invoke-direct {v0}, Lcom/onesignal/OneSignalRestClientWrapper;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    .line 465
    new-instance v0, Lcom/onesignal/OSSharedPreferencesWrapper;

    invoke-direct {v0}, Lcom/onesignal/OSSharedPreferencesWrapper;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 469
    new-instance v1, Lcom/onesignal/influence/data/OSTrackerFactory;

    sget-object v2, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    sget-object v3, Lcom/onesignal/OneSignal;->time:Lcom/onesignal/OSTime;

    invoke-direct {v1, v0, v2, v3}, Lcom/onesignal/influence/data/OSTrackerFactory;-><init>(Lcom/onesignal/OSSharedPreferences;Lcom/onesignal/OSLogger;Lcom/onesignal/OSTime;)V

    sput-object v1, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/data/OSTrackerFactory;

    .line 470
    new-instance v0, Lcom/onesignal/OSSessionManager;

    sget-object v2, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    sget-object v3, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v0, v2, v1, v3}, Lcom/onesignal/OSSessionManager;-><init>(Lcom/onesignal/OSSessionManager$SessionListener;Lcom/onesignal/influence/data/OSTrackerFactory;Lcom/onesignal/OSLogger;)V

    sput-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    .line 474
    new-instance v0, Lcom/onesignal/OneSignal$2;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$2;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->outcomeEventsControllerSyncLock:Ljava/lang/Object;

    const-string v0, "native"

    .line 492
    sput-object v0, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    .line 495
    new-instance v0, Lcom/onesignal/OSUtils;

    invoke-direct {v0}, Lcom/onesignal/OSUtils;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifs:Ljava/util/Collection;

    .line 502
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1289
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1296
    sget-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OneSignal"

    if-ge v0, v1, :cond_5

    .line 1297
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_0

    .line 1298
    invoke-static {v2, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1299
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_1

    .line 1300
    invoke-static {v2, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1301
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_2

    .line 1302
    invoke-static {v2, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1303
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_3

    .line 1304
    invoke-static {v2, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1305
    :cond_3
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-eq p0, v0, :cond_4

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    if-ne p0, v0, :cond_5

    .line 1306
    :cond_4
    invoke-static {v2, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    :cond_5
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ge v0, v1, :cond_7

    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1311
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_6

    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1314
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1315
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1316
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1321
    :cond_6
    new-instance p2, Lcom/onesignal/OneSignal$8;

    invoke-direct {p2, p0, p1}, Lcom/onesignal/OneSignal$8;-><init>(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "Error showing logging message."

    .line 1332
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_1
    return-void
.end method

.method static synthetic access$000()Lcom/onesignal/OSOutcomeEventsController;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    return-object v0
.end method

.method static synthetic access$100()Lcom/onesignal/OSLogger;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->androidParamsRequestStarted:Z

    return p0
.end method

.method static synthetic access$1100()Lcom/onesignal/influence/data/OSTrackerFactory;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/data/OSTrackerFactory;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/onesignal/OSSharedPreferences;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/onesignal/OSRemoteParamController;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    return-object v0
.end method

.method static synthetic access$1400()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    return-void
.end method

.method static synthetic access$1500()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUserTask()V

    return-void
.end method

.method static synthetic access$1600()Ljava/util/ArrayList;
    .locals 1

    .line 86
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->runGetTags()V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->getTagsCall:Z

    return p0
.end method

.method static synthetic access$202(Lcom/onesignal/LocationController$LocationPoint;)Lcom/onesignal/LocationController$LocationPoint;
    .locals 0

    .line 86
    sput-object p0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->locationFired:Z

    return p0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->registerUser()V

    return-void
.end method

.method static synthetic access$500()I
    .locals 1

    .line 86
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    .line 86
    sput p0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    return p0
.end method

.method static synthetic access$600(I)Z
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->pushStatusRuntimeError(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 86
    sput-object p0, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 86
    sput-boolean p0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    return p0
.end method

.method static synthetic access$900(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p0

    return-object p0
.end method

.method public static addEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V
    .locals 1

    .line 3023
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3024
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal.initWithContext has not been called. Could not add email subscription observer"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 3028
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 3030
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getLastEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSEmailSubscriptionState;->compare(Lcom/onesignal/OSEmailSubscriptionState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3031
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSEmailSubscriptionState;)V

    :cond_1
    return-void
.end method

.method static addEntryStateListener(Lcom/onesignal/OneSignal$EntryStateListener;Lcom/onesignal/OneSignal$AppEntryAction;)V
    .locals 1

    .line 374
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {p1, v0}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 375
    sget-object p1, Lcom/onesignal/OneSignal;->entryStateListeners:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static addNetType(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "net_type"

    .line 1456
    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static addPermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 1

    .line 2954
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2955
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal.initWithContext has not been called. Could not add permission observer"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 2959
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2961
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSPermissionState;->compare(Lcom/onesignal/OSPermissionState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2962
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSPermissionState;)V

    :cond_1
    return-void
.end method

.method public static addSMSSubscriptionObserver(Lcom/onesignal/OSSMSSubscriptionObserver;)V
    .locals 1

    .line 3055
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3056
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal.initWithContext has not been called. Could not add sms subscription observer"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 3060
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSMSSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 3062
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getLastSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSSMSSubscriptionState;->compare(Lcom/onesignal/OSSMSSubscriptionState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3063
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSSMSSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSSMSSubscriptionState;)V

    :cond_1
    return-void
.end method

.method public static addSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 1

    .line 2990
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2991
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal.initWithContext has not been called. Could not add subscription observer"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 2995
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 2997
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSSubscriptionState;->compare(Lcom/onesignal/OSSubscriptionState;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2998
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;->fireChangesToPublicObserver(Lcom/onesignal/OSSubscriptionState;)V

    :cond_1
    return-void
.end method

.method public static addTrigger(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 3089
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3090
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessageController;->addTriggers(Ljava/util/Map;)V

    return-void
.end method

.method public static addTriggers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3082
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->addTriggers(Ljava/util/Map;)V

    return-void
.end method

.method static applicationOpenedByNotification(Ljava/lang/String;)V
    .locals 2

    .line 2472
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 2473
    sget-object v1, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {v1, v0, p0}, Lcom/onesignal/OSSessionManager;->onDirectInfluenceFromNotificationOpen(Lcom/onesignal/OneSignal$AppEntryAction;Ljava/lang/String;)V

    return-void
.end method

.method static areNotificationsEnabledForSubscribedState()Z
    .locals 1

    .line 3220
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->unsubscribeWhenNotificationsAreDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3221
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z
    .locals 2

    .line 1285
    sget-object v0, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-virtual {p0, v0}, Lcom/onesignal/OneSignal$LOG_LEVEL;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ge p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static backgroundSyncLogic()V
    .locals 1

    .line 1374
    sget-boolean v0, Lcom/onesignal/OneSignal;->inForeground:Z

    if-eqz v0, :cond_0

    return-void

    .line 1377
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;

    if-eqz v0, :cond_1

    .line 1378
    invoke-virtual {v0}, Lcom/onesignal/TrackAmazonPurchase;->checkListener()V

    .line 1380
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getFocusTimeController()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appBackgrounded()V

    .line 1382
    invoke-static {}, Lcom/onesignal/OneSignal;->scheduleSyncService()Z

    return-void
.end method

.method static callEntryStateListeners(Lcom/onesignal/OneSignal$AppEntryAction;)V
    .locals 2

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/onesignal/OneSignal;->entryStateListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 367
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OneSignal$EntryStateListener;

    .line 368
    invoke-interface {v1, p0}, Lcom/onesignal/OneSignal$EntryStateListener;->onEntryStateChange(Lcom/onesignal/OneSignal$AppEntryAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static clearOneSignalNotifications()V
    .locals 3

    .line 2873
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "clearOneSignalNotifications()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2886
    :cond_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSNotificationDataController;->clearOneSignalNotifications(Ljava/lang/ref/WeakReference;)V

    return-void

    .line 2874
    :cond_1
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving clearOneSignalNotifications() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 2876
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$31;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$31;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteTag(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2189
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTag(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static deleteTag(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 2

    const-string v0, "deleteTag()"

    .line 2194
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2197
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2198
    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2199
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static deleteTags(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2228
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static deleteTags(Ljava/lang/String;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 1

    .line 2233
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2235
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Failed to generate JSON for deleteTags."

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static deleteTags(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2208
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static deleteTags(Ljava/util/Collection;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;",
            ")V"
        }
    .end annotation

    const-string v0, "deleteTags()"

    .line 2213
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2217
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2218
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    .line 2219
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 2221
    :cond_1
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 2223
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Failed to generate JSON for deleteTags."

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static deleteTags(Lorg/json/JSONArray;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 4

    const-string v0, "deleteTags()"

    .line 2241
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2245
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 2247
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2248
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2250
    :cond_1
    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 2252
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Failed to generate JSON for deleteTags."

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static disableGMSMissingPrompt(Z)V
    .locals 1

    .line 2724
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParamController()Lcom/onesignal/OSRemoteParamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->hasDisableGMSMissingPromptKey()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2727
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParamController()Lcom/onesignal/OSRemoteParamController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSRemoteParamController;->saveGMSMissingPromptDisable(Z)V

    return-void
.end method

.method public static disablePush(Z)V
    .locals 2

    .line 2697
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "setSubscription()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2698
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving setSubscription() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 2700
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$27;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$27;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 2711
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2714
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSubscriptionState;->setPushDisabled(Z)V

    xor-int/lit8 p0, p0, 0x1

    .line 2715
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->setSubscription(Z)V

    return-void
.end method

.method private static doSessionInit()V
    .locals 3

    .line 993
    invoke-static {}, Lcom/onesignal/OneSignal;->shouldStartNewSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting new session with appEntryState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 996
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->setNewSession()V

    .line 997
    invoke-static {}, Lcom/onesignal/OneSignal;->getOutcomeEventsController()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSOutcomeEventsController;->cleanOutcomes()V

    .line 998
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->restartSessionIfNeeded(Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 999
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->resetSessionLaunchTime()V

    .line 1000
    sget-object v0, Lcom/onesignal/OneSignal;->time:Lcom/onesignal/OSTime;

    invoke-interface {v0}, Lcom/onesignal/OSTime;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    goto :goto_0

    .line 1001
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1002
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Continue on same session with appEntryState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 1003
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-static {}, Lcom/onesignal/OneSignal;->getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSessionManager;->attemptSessionUpgrade(Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 1006
    :cond_1
    :goto_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->initWithCachedInAppMessages()V

    .line 1010
    sget-boolean v0, Lcom/onesignal/OneSignal;->inForeground:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1011
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "doSessionInit on background with already registered user"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 1013
    :cond_2
    invoke-static {}, Lcom/onesignal/OneSignal;->startRegistrationOrOnSession()V

    return-void
.end method

.method private static fireCallbackForOpenedNotifications()V
    .locals 2

    .line 1136
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 1137
    invoke-static {v1}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;)V

    goto :goto_0

    .line 1139
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifs:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method static fireEmailUpdateFailure()V
    .locals 4

    .line 3247
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3248
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    const/4 v0, 0x0

    .line 3249
    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_0
    return-void
.end method

.method static fireEmailUpdateSuccess()V
    .locals 1

    .line 3240
    sget-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3241
    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    const/4 v0, 0x0

    .line 3242
    sput-object v0, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_0
    return-void
.end method

.method static fireForegroundHandlers(Lcom/onesignal/OSNotificationController;)V
    .locals 3

    .line 2394
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Fire notificationWillShowInForegroundHandler"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2396
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationController;->getNotificationReceivedEvent()Lcom/onesignal/OSNotificationReceivedEvent;

    move-result-object p0

    .line 2398
    :try_start_0
    sget-object v0, Lcom/onesignal/OneSignal;->notificationWillShowInForegroundHandler:Lcom/onesignal/OneSignal$OSNotificationWillShowInForegroundHandler;

    invoke-interface {v0, p0}, Lcom/onesignal/OneSignal$OSNotificationWillShowInForegroundHandler;->notificationWillShowInForeground(Lcom/onesignal/OSNotificationReceivedEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 2400
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Exception thrown while notification was being processed for display by notificationWillShowInForegroundHandler, showing notification in foreground!"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 2401
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationReceivedEvent;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onesignal/OSNotificationReceivedEvent;->complete(Lcom/onesignal/OSNotification;)V

    .line 2402
    throw v0
.end method

.method private static fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenedResult;)V
    .locals 1

    .line 2335
    new-instance v0, Lcom/onesignal/OneSignal$25;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$25;-><init>(Lcom/onesignal/OSNotificationOpenedResult;)V

    invoke-static {v0}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static fireSMSUpdateFailure()V
    .locals 4

    .line 3275
    sget-object v0, Lcom/onesignal/OneSignal;->smsUpdateHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    if-eqz v0, :cond_0

    .line 3276
    new-instance v1, Lcom/onesignal/OneSignal$OSSMSUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$SMSErrorType;->NETWORK:Lcom/onesignal/OneSignal$SMSErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$OSSMSUpdateError;-><init>(Lcom/onesignal/OneSignal$SMSErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$OSSMSUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$OSSMSUpdateError;)V

    const/4 v0, 0x0

    .line 3277
    sput-object v0, Lcom/onesignal/OneSignal;->smsUpdateHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    :cond_0
    return-void
.end method

.method static fireSMSUpdateSuccess(Lorg/json/JSONObject;)V
    .locals 1

    .line 3268
    sget-object v0, Lcom/onesignal/OneSignal;->smsUpdateHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    if-eqz v0, :cond_0

    .line 3269
    invoke-interface {v0, p0}, Lcom/onesignal/OneSignal$OSSMSUpdateHandler;->onSuccess(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    .line 3270
    sput-object p0, Lcom/onesignal/OneSignal;->smsUpdateHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    :cond_0
    return-void
.end method

.method private static generateNotificationOpenedResult(Lorg/json/JSONArray;)Lcom/onesignal/OSNotificationOpenedResult;
    .locals 14

    const-string v0, "actionId"

    .line 2297
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 2300
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "androidNotificationId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 2302
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v8, v6

    move-object v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    .line 2308
    :try_start_0
    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-nez v8, :cond_0

    .line 2310
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2311
    invoke-virtual {v9, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 2316
    :cond_1
    new-instance v10, Lcom/onesignal/OSNotification;

    invoke-direct {v10, v9}, Lcom/onesignal/OSNotification;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    .line 2319
    sget-object v11, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error parsing JSON item "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " for callback."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v10}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    .line 2323
    sget-object p0, Lcom/onesignal/OSNotificationAction$ActionType;->ActionTaken:Lcom/onesignal/OSNotificationAction$ActionType;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/onesignal/OSNotificationAction$ActionType;->Opened:Lcom/onesignal/OSNotificationAction$ActionType;

    .line 2324
    :goto_2
    new-instance v0, Lcom/onesignal/OSNotificationAction;

    invoke-direct {v0, p0, v8}, Lcom/onesignal/OSNotificationAction;-><init>(Lcom/onesignal/OSNotificationAction$ActionType;Ljava/lang/String;)V

    .line 2326
    new-instance p0, Lcom/onesignal/OSNotification;

    invoke-direct {p0, v4, v9, v3}, Lcom/onesignal/OSNotification;-><init>(Ljava/util/List;Lorg/json/JSONObject;I)V

    .line 2327
    new-instance v1, Lcom/onesignal/OSNotificationOpenedResult;

    invoke-direct {v1, p0, v0}, Lcom/onesignal/OSNotificationOpenedResult;-><init>(Lcom/onesignal/OSNotification;Lcom/onesignal/OSNotificationAction;)V

    return-object v1
.end method

.method static getAppEntryState()Lcom/onesignal/OneSignal$AppEntryAction;
    .locals 1

    .line 427
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    return-object v0
.end method

.method static getClearGroupSummaryClick()Z
    .locals 1

    .line 2660
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->getClearGroupSummaryClick()Z

    move-result v0

    return v0
.end method

.method static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 389
    invoke-static {}, Lcom/onesignal/ActivityLifecycleListener;->getActivityLifecycleHandler()Lcom/onesignal/ActivityLifecycleHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/onesignal/ActivityLifecycleHandler;->getCurActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 584
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez p0, :cond_1

    .line 585
    new-instance p0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 586
    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->getObservable()Lcom/onesignal/OSObservable;

    move-result-object p0

    new-instance v0, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSEmailSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 589
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->currentEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object p0
.end method

.method private static getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 516
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez p0, :cond_1

    .line 517
    new-instance p0, Lcom/onesignal/OSPermissionState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    .line 518
    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->getObservable()Lcom/onesignal/OSObservable;

    move-result-object p0

    new-instance v0, Lcom/onesignal/OSPermissionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSPermissionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 521
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->currentPermissionState:Lcom/onesignal/OSPermissionState;

    return-object p0
.end method

.method private static getCurrentSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 620
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->currentSMSSubscriptionState:Lcom/onesignal/OSSMSSubscriptionState;

    if-nez p0, :cond_1

    .line 621
    new-instance p0, Lcom/onesignal/OSSMSSubscriptionState;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/onesignal/OSSMSSubscriptionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->currentSMSSubscriptionState:Lcom/onesignal/OSSMSSubscriptionState;

    .line 622
    invoke-virtual {p0}, Lcom/onesignal/OSSMSSubscriptionState;->getObservable()Lcom/onesignal/OSObservable;

    move-result-object p0

    new-instance v0, Lcom/onesignal/OSSMSSubscriptionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSSMSSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 625
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->currentSMSSubscriptionState:Lcom/onesignal/OSSMSSubscriptionState;

    return-object p0
.end method

.method private static getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 549
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez v0, :cond_1

    .line 550
    new-instance v0, Lcom/onesignal/OSSubscriptionState;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSPermissionState;->areNotificationsEnabled()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 551
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/OSPermissionState;->getObservable()Lcom/onesignal/OSObservable;

    move-result-object p0

    sget-object v0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserver(Ljava/lang/Object;)V

    .line 552
    sget-object p0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    invoke-virtual {p0}, Lcom/onesignal/OSSubscriptionState;->getObservable()Lcom/onesignal/OSObservable;

    move-result-object p0

    new-instance v0, Lcom/onesignal/OSSubscriptionChangedInternalObserver;

    invoke-direct {v0}, Lcom/onesignal/OSSubscriptionChangedInternalObserver;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onesignal/OSObservable;->addObserverStrong(Ljava/lang/Object;)V

    .line 555
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->currentSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object p0
.end method

.method static getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;
    .locals 1

    .line 3314
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v0

    return-object v0
.end method

.method static getDBHelperInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;
    .locals 0

    .line 3318
    invoke-static {p0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object p0

    return-object p0
.end method

.method static getDelayedInitParams()Lcom/onesignal/DelayedConsentInitializationParameters;
    .locals 1

    .line 507
    sget-object v0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    return-object v0
.end method

.method public static getDeviceState()Lcom/onesignal/OSDeviceState;
    .locals 5

    .line 655
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 656
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "OneSignal.initWithContext has not been called. Could not get OSDeviceState"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 660
    :cond_0
    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    .line 661
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v1

    .line 662
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v2

    .line 663
    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/onesignal/OneSignal;->getCurrentSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;

    move-result-object v3

    .line 664
    new-instance v4, Lcom/onesignal/OSDeviceState;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/onesignal/OSDeviceState;-><init>(Lcom/onesignal/OSSubscriptionState;Lcom/onesignal/OSPermissionState;Lcom/onesignal/OSEmailSubscriptionState;Lcom/onesignal/OSSMSSubscriptionState;)V

    return-object v4
.end method

.method static getDisableGMSMissingPrompt()Z
    .locals 1

    .line 2664
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->isGMSMissingPromptDisable()Z

    move-result v0

    return v0
.end method

.method static getEmailId()Ljava/lang/String;
    .locals 3

    .line 2569
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2570
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "OS_EMAIL_ID"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2576
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 2579
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    return-object v0
.end method

.method static getEmailSubscriptionState()Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    .line 592
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method static getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSEmailSubscriptionObserver;",
            "Lcom/onesignal/OSEmailSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 608
    sget-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSEmailSubscriptionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 610
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->emailSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method static getFirebaseAnalyticsEnabled()Z
    .locals 1

    .line 2656
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    return v0
.end method

.method static getFocusTimeController()Lcom/onesignal/FocusTimeController;
    .locals 3

    .line 3330
    sget-object v0, Lcom/onesignal/OneSignal;->focusTimeController:Lcom/onesignal/FocusTimeController;

    if-nez v0, :cond_0

    .line 3331
    new-instance v0, Lcom/onesignal/FocusTimeController;

    new-instance v1, Lcom/onesignal/OSFocusTimeProcessorFactory;

    invoke-direct {v1}, Lcom/onesignal/OSFocusTimeProcessorFactory;-><init>()V

    sget-object v2, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v0, v1, v2}, Lcom/onesignal/FocusTimeController;-><init>(Lcom/onesignal/OSFocusTimeProcessorFactory;Lcom/onesignal/OSLogger;)V

    sput-object v0, Lcom/onesignal/OneSignal;->focusTimeController:Lcom/onesignal/FocusTimeController;

    .line 3334
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->focusTimeController:Lcom/onesignal/FocusTimeController;

    return-object v0
.end method

.method static getInAppMessageController()Lcom/onesignal/OSInAppMessageController;
    .locals 6

    .line 458
    sget-object v0, Lcom/onesignal/OneSignal;->inAppMessageControllerFactory:Lcom/onesignal/OSInAppMessageControllerFactory;

    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    sget-object v2, Lcom/onesignal/OneSignal;->taskController:Lcom/onesignal/OSTaskController;

    invoke-static {}, Lcom/onesignal/OneSignal;->getLogger()Lcom/onesignal/OSLogger;

    move-result-object v3

    invoke-static {}, Lcom/onesignal/OneSignal;->getSharedPreferences()Lcom/onesignal/OSSharedPreferences;

    move-result-object v4

    sget-object v5, Lcom/onesignal/OneSignal;->languageContext:Lcom/onesignal/language/LanguageContext;

    invoke-virtual/range {v0 .. v5}, Lcom/onesignal/OSInAppMessageControllerFactory;->getController(Lcom/onesignal/OneSignalDbHelper;Lcom/onesignal/OSTaskController;Lcom/onesignal/OSLogger;Lcom/onesignal/OSSharedPreferences;Lcom/onesignal/language/LanguageContext;)Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    return-object v0
.end method

.method private static getLastEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 600
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    if-nez p0, :cond_1

    .line 601
    new-instance p0, Lcom/onesignal/OSEmailSubscriptionState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/onesignal/OSEmailSubscriptionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    .line 603
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->lastEmailSubscriptionState:Lcom/onesignal/OSEmailSubscriptionState;

    return-object p0
.end method

.method private static getLastPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 529
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    if-nez p0, :cond_1

    .line 530
    new-instance p0, Lcom/onesignal/OSPermissionState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/onesignal/OSPermissionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    .line 532
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->lastPermissionState:Lcom/onesignal/OSPermissionState;

    return-object p0
.end method

.method private static getLastSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 636
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->lastSMSSubscriptionState:Lcom/onesignal/OSSMSSubscriptionState;

    if-nez p0, :cond_1

    .line 637
    new-instance p0, Lcom/onesignal/OSSMSSubscriptionState;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/onesignal/OSSMSSubscriptionState;-><init>(Z)V

    sput-object p0, Lcom/onesignal/OneSignal;->lastSMSSubscriptionState:Lcom/onesignal/OSSMSSubscriptionState;

    .line 639
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->lastSMSSubscriptionState:Lcom/onesignal/OSSMSSubscriptionState;

    return-object p0
.end method

.method private static getLastSessionTime()J
    .locals 4

    .line 2685
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    const-wide/16 v2, -0x7918

    invoke-static {v0, v1, v2, v3}, Lcom/onesignal/OneSignalPrefs;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getLastSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 563
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    if-nez p0, :cond_1

    .line 564
    new-instance p0, Lcom/onesignal/OSSubscriptionState;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/onesignal/OSSubscriptionState;-><init>(ZZ)V

    sput-object p0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    .line 566
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->lastSubscriptionState:Lcom/onesignal/OSSubscriptionState;

    return-object p0
.end method

.method private static getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;
    .locals 0

    packed-switch p0, :pswitch_data_0

    if-gez p0, :cond_0

    .line 1280
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1276
    :pswitch_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1274
    :pswitch_1
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1272
    :pswitch_2
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1270
    :pswitch_3
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1268
    :pswitch_4
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1266
    :pswitch_5
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->FATAL:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1264
    :pswitch_6
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    .line 1281
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getLogger()Lcom/onesignal/OSLogger;
    .locals 1

    .line 441
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    return-object v0
.end method

.method static getNotificationIdFromFCMJson(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    const-string v0, "i"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 3183
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "custom"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3185
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3186
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3188
    :cond_1
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "Not a OneSignal formatted FCM message. No \'i\' field in custom."

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3190
    :catch_0
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "Not a OneSignal formatted FCM message. No \'custom\' field in the JSONObject."

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method static getOutcomeEventsController()Lcom/onesignal/OSOutcomeEventsController;
    .locals 6

    .line 477
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_2

    .line 478
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsControllerSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v1, :cond_1

    .line 480
    sget-object v1, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;

    if-nez v1, :cond_0

    .line 481
    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 482
    new-instance v2, Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;

    sget-object v3, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    sget-object v4, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    sget-object v5, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalAPIClient;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V

    sput-object v2, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;

    .line 484
    :cond_0
    new-instance v1, Lcom/onesignal/OSOutcomeEventsController;

    sget-object v2, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    sget-object v3, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OSOutcomeEventsController;-><init>(Lcom/onesignal/OSSessionManager;Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;)V

    sput-object v1, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    .line 486
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 488
    :cond_2
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    return-object v0
.end method

.method static getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSPermissionObserver;",
            "Lcom/onesignal/OSPermissionStateChanges;",
            ">;"
        }
    .end annotation

    .line 537
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSPermissionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 539
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->permissionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method private static getPushRegistrator()Lcom/onesignal/PushRegistrator;
    .locals 1

    .line 1055
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    if-eqz v0, :cond_0

    return-object v0

    .line 1058
    :cond_0
    invoke-static {}, Lcom/onesignal/OSUtils;->isFireOSDeviceType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    new-instance v0, Lcom/onesignal/PushRegistratorADM;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorADM;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 1060
    :cond_1
    invoke-static {}, Lcom/onesignal/OSUtils;->isAndroidDeviceType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    invoke-static {}, Lcom/onesignal/OSUtils;->hasFCMLibrary()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1062
    invoke-static {}, Lcom/onesignal/OneSignal;->getPushRegistratorFCM()Lcom/onesignal/PushRegistratorFCM;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    goto :goto_0

    .line 1064
    :cond_2
    new-instance v0, Lcom/onesignal/PushRegistratorHMS;

    invoke-direct {v0}, Lcom/onesignal/PushRegistratorHMS;-><init>()V

    sput-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    .line 1066
    :cond_3
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->mPushRegistrator:Lcom/onesignal/PushRegistrator;

    return-object v0
.end method

.method private static getPushRegistratorFCM()Lcom/onesignal/PushRegistratorFCM;
    .locals 4

    .line 1071
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v0

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    if-eqz v0, :cond_0

    .line 1074
    new-instance v1, Lcom/onesignal/PushRegistratorFCM$Params;

    iget-object v2, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->projectId:Ljava/lang/String;

    iget-object v3, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->appId:Ljava/lang/String;

    iget-object v0, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->apiKey:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/onesignal/PushRegistratorFCM$Params;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1076
    :goto_0
    new-instance v0, Lcom/onesignal/PushRegistratorFCM;

    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/onesignal/PushRegistratorFCM;-><init>(Landroid/content/Context;Lcom/onesignal/PushRegistratorFCM$Params;)V

    return-object v0
.end method

.method static getRemoteParamController()Lcom/onesignal/OSRemoteParamController;
    .locals 1

    .line 3310
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    return-object v0
.end method

.method static getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;
    .locals 1

    .line 1195
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v0

    return-object v0
.end method

.method static getSMSId()Ljava/lang/String;
    .locals 3

    .line 2598
    sget-object v0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2599
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v2, "PREFS_OS_SMS_ID"

    invoke-static {v0, v2, v1}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    .line 2605
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 2608
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    return-object v0
.end method

.method static getSMSSubscriptionState()Lcom/onesignal/OSSMSSubscriptionState;
    .locals 1

    .line 628
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method static getSMSSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSMSSubscriptionObserver;",
            "Lcom/onesignal/OSSMSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 644
    sget-object v0, Lcom/onesignal/OneSignal;->smsSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 645
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onSMSSubscriptionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->smsSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 646
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->smsSubscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method static getSavedAppId()Ljava/lang/String;
    .locals 1

    .line 2519
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2526
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSavedUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2536
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkVersionRaw()Ljava/lang/String;
    .locals 1

    const-string v0, "040800"

    return-object v0
.end method

.method static getSessionListener()Lcom/onesignal/OSSessionManager$SessionListener;
    .locals 1

    .line 3306
    sget-object v0, Lcom/onesignal/OneSignal;->sessionListener:Lcom/onesignal/OSSessionManager$SessionListener;

    return-object v0
.end method

.method static getSessionManager()Lcom/onesignal/OSSessionManager;
    .locals 1

    .line 3344
    sget-object v0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    return-object v0
.end method

.method static getSharedPreferences()Lcom/onesignal/OSSharedPreferences;
    .locals 1

    .line 467
    sget-object v0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-object v0
.end method

.method static getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/onesignal/OSObservable<",
            "Lcom/onesignal/OSSubscriptionObserver;",
            "Lcom/onesignal/OSSubscriptionStateChanges;",
            ">;"
        }
    .end annotation

    .line 571
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/onesignal/OSObservable;

    const/4 v1, 0x1

    const-string v2, "onOSSubscriptionChanged"

    invoke-direct {v0, v2, v1}, Lcom/onesignal/OSObservable;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    .line 573
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->subscriptionStateChangesObserver:Lcom/onesignal/OSObservable;

    return-object v0
.end method

.method public static getTags(Lcom/onesignal/OneSignal$OSGetTagsHandler;)V
    .locals 2

    .line 2112
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "getTags()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2113
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving getTags() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 2115
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$22;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$22;-><init>(Lcom/onesignal/OneSignal$OSGetTagsHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 2126
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    .line 2130
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "getTags called with null GetTagsHandler!"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 2134
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$23;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$23;-><init>(Lcom/onesignal/OneSignal$OSGetTagsHandler;)V

    const-string p0, "OS_GETTAGS"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static getTaskController()Lcom/onesignal/OSTaskController;
    .locals 1

    .line 3326
    sget-object v0, Lcom/onesignal/OneSignal;->taskController:Lcom/onesignal/OSTaskController;

    return-object v0
.end method

.method static getTaskRemoteController()Lcom/onesignal/OSTaskController;
    .locals 1

    .line 3322
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    return-object v0
.end method

.method static getTime()Lcom/onesignal/OSTime;
    .locals 1

    .line 3283
    sget-object v0, Lcom/onesignal/OneSignal;->time:Lcom/onesignal/OSTime;

    return-object v0
.end method

.method private static getTimeZoneId()Ljava/lang/String;
    .locals 2

    .line 1471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 1472
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1474
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getTimeZoneOffset()I
    .locals 3

    .line 1461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1462
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 1464
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1465
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    add-int/2addr v1, v0

    .line 1467
    :cond_0
    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public static getTriggerValueForKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 3111
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3112
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "Before calling getTriggerValueForKey, Make sure OneSignal initWithContext and setAppId is called first"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 3116
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->getTriggerValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getTriggers()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3121
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3122
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Before calling getTriggers, Make sure OneSignal initWithContext and setAppId is called first"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 3123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 3126
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->getTriggers()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getUserId()Ljava/lang/String;
    .locals 1

    .line 2547
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2548
    invoke-static {v0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 2550
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    return-object v0
.end method

.method private static handleActivityLifecycleHandler(Landroid/content/Context;)V
    .locals 8

    .line 964
    invoke-static {}, Lcom/onesignal/ActivityLifecycleListener;->getActivityLifecycleHandler()Lcom/onesignal/ActivityLifecycleHandler;

    move-result-object v0

    .line 965
    instance-of v1, p0, Landroid/app/Activity;

    .line 966
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x1

    .line 967
    :goto_2
    invoke-static {v5}, Lcom/onesignal/OneSignal;->setInForeground(Z)V

    .line 968
    sget-object v5, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OneSignal handleActivityLifecycleHandler inForeground: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/onesignal/OneSignal;->inForeground:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 970
    sget-boolean v5, Lcom/onesignal/OneSignal;->inForeground:Z

    if-eqz v5, :cond_4

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 972
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler;->setCurActivity(Landroid/app/Activity;)V

    .line 973
    invoke-virtual {v0, v4}, Lcom/onesignal/ActivityLifecycleHandler;->setNextResumeIsFirstActivity(Z)V

    .line 975
    :cond_3
    invoke-static {p0, v3}, Lcom/onesignal/OSNotificationRestoreWorkManager;->beginEnqueueingWork(Landroid/content/Context;Z)V

    .line 976
    invoke-static {}, Lcom/onesignal/OneSignal;->getFocusTimeController()Lcom/onesignal/FocusTimeController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/FocusTimeController;->appForegrounded()V

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 978
    invoke-virtual {v0, v4}, Lcom/onesignal/ActivityLifecycleHandler;->setNextResumeIsFirstActivity(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method private static handleAmazonPurchase()V
    .locals 2

    :try_start_0
    const-string v0, "com.amazon.device.iap.PurchasingListener"

    .line 984
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 985
    new-instance v0, Lcom/onesignal/TrackAmazonPurchase;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/onesignal/TrackAmazonPurchase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/onesignal/OneSignal;->trackAmazonPurchase:Lcom/onesignal/TrackAmazonPurchase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static handleAppIdChange()V
    .locals 4

    .line 939
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 941
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 942
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App id has changed:\nFrom: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n To: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nClearing the user id, app state, and remoteParams as they are no longer valid"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 943
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveAppId(Ljava/lang/String;)V

    .line 944
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->resetCurrentState()V

    .line 945
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->clearRemoteParams()V

    goto :goto_0

    .line 949
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App id set for first time:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 950
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 951
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->saveAppId(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static handleFailedEmailLogout()V
    .locals 4

    .line 3233
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3234
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->NETWORK:Lcom/onesignal/OneSignal$EmailErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    const/4 v0, 0x0

    .line 3235
    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_0
    return-void
.end method

.method static handleFailedSMSLogout()V
    .locals 4

    .line 3261
    sget-object v0, Lcom/onesignal/OneSignal;->smsLogoutHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    if-eqz v0, :cond_0

    .line 3262
    new-instance v1, Lcom/onesignal/OneSignal$OSSMSUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$SMSErrorType;->NETWORK:Lcom/onesignal/OneSignal$SMSErrorType;

    const-string v3, "Failed due to network failure. Will retry on next sync."

    invoke-direct {v1, v2, v3}, Lcom/onesignal/OneSignal$OSSMSUpdateError;-><init>(Lcom/onesignal/OneSignal$SMSErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/onesignal/OneSignal$OSSMSUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$OSSMSUpdateError;)V

    const/4 v0, 0x0

    .line 3263
    sput-object v0, Lcom/onesignal/OneSignal;->smsLogoutHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    :cond_0
    return-void
.end method

.method static handleNotificationOpen(Landroid/app/Activity;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 2411
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2414
    :cond_0
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 2416
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2417
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-static {p1}, Lcom/onesignal/OneSignal;->generateNotificationOpenedResult(Lorg/json/JSONArray;)Lcom/onesignal/OSNotificationOpenedResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/TrackFirebaseAnalytics;->trackOpenedEvent(Lcom/onesignal/OSNotificationOpenedResult;)V

    .line 2419
    :cond_1
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->shouldInitDirectSessionFromNotificationOpen(Landroid/app/Activity;Lorg/json/JSONArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2420
    invoke-static {p2}, Lcom/onesignal/OneSignal;->applicationOpenedByNotification(Ljava/lang/String;)V

    .line 2423
    :cond_2
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->openDestinationActivity(Landroid/app/Activity;Lorg/json/JSONArray;)V

    .line 2425
    invoke-static {p1}, Lcom/onesignal/OneSignal;->runNotificationOpenedCallback(Lorg/json/JSONArray;)V

    return-void
.end method

.method static handleNotificationReceived(Lcom/onesignal/OSNotificationGenerationJob;)V
    .locals 2

    .line 2350
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getJsonPayload()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "androidNotificationId"

    .line 2351
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->getAndroidId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2353
    invoke-static {v0}, Lcom/onesignal/NotificationBundleProcessor;->newJsonArray(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->generateNotificationOpenedResult(Lorg/json/JSONArray;)Lcom/onesignal/OSNotificationOpenedResult;

    move-result-object p0

    .line 2354
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2355
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {v0, p0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackReceivedEvent(Lcom/onesignal/OSNotificationOpenedResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2358
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static handleSuccessfulEmailLogout()V
    .locals 1

    .line 3226
    sget-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    if-eqz v0, :cond_0

    .line 3227
    invoke-interface {v0}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onSuccess()V

    const/4 v0, 0x0

    .line 3228
    sput-object v0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    :cond_0
    return-void
.end method

.method static handleSuccessfulSMSlLogout(Lorg/json/JSONObject;)V
    .locals 1

    .line 3254
    sget-object v0, Lcom/onesignal/OneSignal;->smsLogoutHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    if-eqz v0, :cond_0

    .line 3255
    invoke-interface {v0, p0}, Lcom/onesignal/OneSignal$OSSMSUpdateHandler;->onSuccess(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    .line 3256
    sput-object p0, Lcom/onesignal/OneSignal;->smsLogoutHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    :cond_0
    return-void
.end method

.method static hasEmailId()Z
    .locals 1

    .line 2565
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static hasSMSlId()Z
    .locals 1

    .line 2594
    sget-object v0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static hasUserId()Z
    .locals 1

    .line 2543
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static declared-synchronized init(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lcom/onesignal/OneSignal;

    monitor-enter v0

    .line 818
    :try_start_0
    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Starting OneSignal initialization!"

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->verbose(Ljava/lang/String;)V

    .line 819
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/OSNotificationController;->setupNotificationServiceExtension(Landroid/content/Context;)V

    .line 821
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_8

    sget-object v1, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v1}, Lcom/onesignal/OSRemoteParamController;->isRemoteParamsCallDone()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 841
    :cond_0
    sget v1, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v4, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/onesignal/OSUtils;->initializationChecker(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    :goto_0
    sput v1, Lcom/onesignal/OneSignal;->subscribableStatus:I

    .line 842
    invoke-static {}, Lcom/onesignal/OneSignal;->isSubscriptionStatusUninitializable()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 843
    monitor-exit v0

    return-void

    .line 845
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v1, :cond_4

    .line 846
    sget-object p0, Lcom/onesignal/OneSignal;->notificationOpenedHandler:Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;

    if-eqz p0, :cond_3

    .line 847
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 848
    :cond_3
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "OneSignal SDK initialization already completed."

    invoke-interface {p0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 849
    monitor-exit v0

    return-void

    .line 852
    :cond_4
    :try_start_2
    invoke-static {p0}, Lcom/onesignal/OneSignal;->handleActivityLifecycleHandler(Landroid/content/Context;)V

    .line 854
    sput-object v2, Lcom/onesignal/OneSignal;->appActivity:Ljava/lang/ref/WeakReference;

    .line 856
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->initUserState()V

    .line 859
    invoke-static {}, Lcom/onesignal/OneSignal;->handleAppIdChange()V

    .line 862
    invoke-static {}, Lcom/onesignal/OneSignal;->handleAmazonPurchase()V

    .line 864
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OSPermissionChangedInternalObserver;->handleInternalChanges(Lcom/onesignal/OSPermissionState;)V

    .line 868
    invoke-static {}, Lcom/onesignal/OneSignal;->doSessionInit()V

    .line 870
    sget-object p0, Lcom/onesignal/OneSignal;->notificationOpenedHandler:Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;

    if-eqz p0, :cond_5

    .line 871
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    .line 873
    :cond_5
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/TrackGooglePurchase;->CanTrack(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 874
    new-instance p0, Lcom/onesignal/TrackGooglePurchase;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/onesignal/TrackGooglePurchase;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    .line 876
    :cond_6
    invoke-static {}, Lcom/onesignal/TrackFirebaseAnalytics;->CanTrack()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 877
    new-instance p0, Lcom/onesignal/TrackFirebaseAnalytics;

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/onesignal/TrackFirebaseAnalytics;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    :cond_7
    const/4 p0, 0x1

    .line 879
    sput-boolean p0, Lcom/onesignal/OneSignal;->initDone:Z

    .line 880
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OneSignal SDK initialization done."

    invoke-static {p0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 882
    invoke-static {}, Lcom/onesignal/OneSignal;->getOutcomeEventsController()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/OSOutcomeEventsController;->sendSavedOutcomes()V

    .line 885
    sget-object p0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    invoke-virtual {p0}, Lcom/onesignal/OSTaskRemoteController;->startPendingTasks()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 886
    monitor-exit v0

    return-void

    .line 822
    :cond_8
    :goto_1
    :try_start_3
    sget-object v1, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v1}, Lcom/onesignal/OSRemoteParamController;->isRemoteParamsCallDone()Z

    move-result v1

    if-nez v1, :cond_9

    .line 823
    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v3, "OneSignal SDK initialization delayed, waiting for remote params."

    invoke-interface {v1, v3}, Lcom/onesignal/OSLogger;->verbose(Ljava/lang/String;)V

    goto :goto_2

    .line 826
    :cond_9
    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v3, "OneSignal SDK initialization delayed, waiting for privacy consent to be set."

    invoke-interface {v1, v3}, Lcom/onesignal/OSLogger;->verbose(Ljava/lang/String;)V

    .line 829
    :goto_2
    new-instance v1, Lcom/onesignal/DelayedConsentInitializationParameters;

    sget-object v3, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v4, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Lcom/onesignal/DelayedConsentInitializationParameters;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    .line 830
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 832
    sput-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-eqz v1, :cond_a

    if-eqz p0, :cond_a

    .line 836
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 837
    :cond_a
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static initWithContext(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    .line 749
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "initWithContext called with null context, ignoring!"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->warning(Ljava/lang/String;)V

    return-void

    .line 753
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 754
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/onesignal/OneSignal;->appActivity:Ljava/lang/ref/WeakReference;

    .line 756
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 757
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 759
    invoke-static {v0}, Lcom/onesignal/OneSignal;->setupContextListeners(Z)V

    .line 760
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->setupPrivacyConsent(Landroid/content/Context;)V

    .line 762
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 764
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    .line 766
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "appContext set, but please call setAppId(appId) with a valid appId to complete OneSignal init!"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 768
    :cond_3
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appContext set and cached app id found, calling setAppId with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->verbose(Ljava/lang/String;)V

    .line 769
    invoke-static {p0}, Lcom/onesignal/OneSignal;->setAppId(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 773
    :cond_4
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWithContext called with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->verbose(Ljava/lang/String;)V

    .line 775
    invoke-static {p0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static internalFireGetTagsCallbacks()V
    .locals 3

    .line 2160
    sget-object v0, Lcom/onesignal/OneSignal;->pendingGetTagsHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2161
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 2162
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2164
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$24;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$24;-><init>()V

    const-string v2, "OS_GETTAGS_CALLBACK"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2178
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_0
    move-exception v1

    .line 2162
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static isAppActive()Z
    .locals 1

    .line 3197
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInAppMessagingPaused()Z
    .locals 2

    .line 3153
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3154
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Before calling isInAppMessagingPaused, Make sure OneSignal initWithContext and setAppId is called first"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 3158
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->inAppMessagingEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isInForeground()Z
    .locals 1

    .line 418
    sget-boolean v0, Lcom/onesignal/OneSignal;->inForeground:Z

    return v0
.end method

.method static isInitDone()Z
    .locals 1

    .line 412
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    return v0
.end method

.method public static isLocationShared()Z
    .locals 1

    .line 2668
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->isLocationShared()Z

    move-result v0

    return v0
.end method

.method private static isPastOnSessionTime()Z
    .locals 9

    .line 3211
    invoke-static {}, Lcom/onesignal/OneSignal;->getTime()Lcom/onesignal/OSTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/OSTime;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 3212
    invoke-static {}, Lcom/onesignal/OneSignal;->getLastSessionTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 3214
    sget-object v6, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isPastOnSessionTime currentTimeMillis: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " lastSessionTime: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " difference: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    const-wide/16 v0, 0x7530

    cmp-long v2, v4, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isSubscriptionStatusUninitializable()Z
    .locals 2

    .line 960
    sget v0, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const/16 v1, -0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isUserPrivacyConsentRequired()Z
    .locals 1

    .line 2672
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->isPrivacyConsentRequired()Z

    move-result v0

    return v0
.end method

.method private static isValidOutcomeEntry(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 3443
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 3444
    :cond_1
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Outcome name must not be empty"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static isValidOutcomeValue(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    .line 3453
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Outcome value must be greater than 0"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static logHttpError(Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    if-eqz p3, :cond_0

    .line 1339
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 1341
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logoutEmail()V
    .locals 1

    const/4 v0, 0x0

    .line 1720
    invoke-static {v0}, Lcom/onesignal/OneSignal;->logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    return-void
.end method

.method public static logoutEmail(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 3

    .line 1724
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "logoutEmail()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1725
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving logoutEmail() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1727
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$14;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$14;-><init>(Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 1738
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1741
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "logoutEmail not valid as email was not set or already logged out!"

    if-eqz p0, :cond_2

    .line 1744
    new-instance v1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$EmailErrorType;->INVALID_OPERATION:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {v1, v2, v0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1745
    :cond_2
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 1749
    :cond_3
    sput-object p0, Lcom/onesignal/OneSignal;->emailLogoutHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1750
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->logoutEmail()V

    return-void
.end method

.method public static logoutSMSNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 1614
    invoke-static {v0}, Lcom/onesignal/OneSignal;->logoutSMSNumber(Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V

    return-void
.end method

.method public static logoutSMSNumber(Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V
    .locals 3

    .line 1618
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "logoutSMSNumber()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving logoutSMSNumber() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1621
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$12;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$12;-><init>(Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 1632
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1635
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getSMSId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "logoutSMSNumber() not valid as sms number was not set or already logged out!"

    if-eqz p0, :cond_2

    .line 1638
    new-instance v1, Lcom/onesignal/OneSignal$OSSMSUpdateError;

    sget-object v2, Lcom/onesignal/OneSignal$SMSErrorType;->INVALID_OPERATION:Lcom/onesignal/OneSignal$SMSErrorType;

    invoke-direct {v1, v2, v0}, Lcom/onesignal/OneSignal$OSSMSUpdateError;-><init>(Lcom/onesignal/OneSignal$SMSErrorType;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lcom/onesignal/OneSignal$OSSMSUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$OSSMSUpdateError;)V

    .line 1639
    :cond_2
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 1643
    :cond_3
    sput-object p0, Lcom/onesignal/OneSignal;->smsLogoutHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    .line 1644
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->logoutSMS()V

    return-void
.end method

.method private static makeAndroidParamsRequest(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1110
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/onesignal/OneSignal;->androidParamsRequestStarted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1113
    sput-boolean v0, Lcom/onesignal/OneSignal;->androidParamsRequestStarted:Z

    .line 1114
    new-instance v0, Lcom/onesignal/OneSignal$7;

    invoke-direct {v0, p2}, Lcom/onesignal/OneSignal$7;-><init>(Z)V

    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignalRemoteParams;->makeAndroidParamsRequest(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static notValidOrDuplicated(Landroid/content/Context;Lorg/json/JSONObject;Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;)V
    .locals 2

    .line 3172
    sget-object v0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    if-nez v0, :cond_0

    .line 3173
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getDBHelperInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object p0

    .line 3174
    new-instance v0, Lcom/onesignal/OSNotificationDataController;

    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v0, p0, v1}, Lcom/onesignal/OSNotificationDataController;-><init>(Lcom/onesignal/OneSignalDbHelper;Lcom/onesignal/OSLogger;)V

    sput-object v0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    .line 3176
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    invoke-virtual {p0, p1, p2}, Lcom/onesignal/OSNotificationDataController;->notValidOrDuplicated(Lorg/json/JSONObject;Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;)V

    return-void
.end method

.method private static notificationOpenedRESTCall(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5

    const/4 v0, 0x0

    .line 2477
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2479
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2480
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "custom"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "i"

    .line 2482
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2485
    sget-object v2, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 2487
    :cond_0
    sget-object v2, Lcom/onesignal/OneSignal;->postedOpenedNotifIds:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2489
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "app_id"

    .line 2490
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "player_id"

    .line 2491
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getSavedUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "opened"

    const/4 v4, 0x1

    .line 2492
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "device_type"

    .line 2493
    sget-object v4, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v4}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifications/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/onesignal/OneSignal$26;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$26;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/onesignal/OneSignalRestClient;->put(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 2503
    sget-object v2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Failed to generate JSON to send notification opened."

    invoke-static {v2, v3, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static onAppFocus()V
    .locals 3

    .line 1398
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Application on focus"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1399
    invoke-static {v0}, Lcom/onesignal/OneSignal;->setInForeground(Z)V

    .line 1402
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    sget-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->callEntryStateListeners(Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 1405
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    sget-object v1, Lcom/onesignal/OneSignal$AppEntryAction;->NOTIFICATION_CLICK:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-virtual {v0, v1}, Lcom/onesignal/OneSignal$AppEntryAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1406
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_OPEN:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 1409
    :cond_0
    invoke-static {}, Lcom/onesignal/LocationController;->onFocusChange()V

    .line 1410
    sget-object v0, Lcom/onesignal/NotificationPermissionController;->INSTANCE:Lcom/onesignal/NotificationPermissionController;

    invoke-virtual {v0}, Lcom/onesignal/NotificationPermissionController;->onAppForegrounded()V

    .line 1412
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->shouldLogMissingAppIdError(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1415
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->isRemoteParamsCallDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1416
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Delay onAppFocus logic due to missing remote params"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1417
    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1421
    :cond_2
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppFocusLogic()V

    return-void
.end method

.method private static onAppFocusLogic()V
    .locals 2

    const-string v0, "onAppFocus"

    .line 1434
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1437
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getFocusTimeController()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appForegrounded()V

    .line 1439
    invoke-static {}, Lcom/onesignal/OneSignal;->doSessionInit()V

    .line 1441
    sget-object v0, Lcom/onesignal/OneSignal;->trackGooglePurchase:Lcom/onesignal/TrackGooglePurchase;

    if-eqz v0, :cond_1

    .line 1442
    invoke-virtual {v0}, Lcom/onesignal/TrackGooglePurchase;->trackIAP()V

    .line 1444
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/OSNotificationRestoreWorkManager;->beginEnqueueingWork(Landroid/content/Context;Z)V

    .line 1446
    invoke-static {}, Lcom/onesignal/OneSignal;->refreshNotificationPermissionState()V

    .line 1448
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/onesignal/OneSignal;->getFirebaseAnalyticsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1449
    sget-object v0, Lcom/onesignal/OneSignal;->trackFirebaseAnalytics:Lcom/onesignal/TrackFirebaseAnalytics;

    invoke-virtual {v0}, Lcom/onesignal/TrackFirebaseAnalytics;->trackInfluenceOpenEvent()V

    .line 1451
    :cond_2
    invoke-static {}, Lcom/onesignal/OSSyncService;->getInstance()Lcom/onesignal/OSSyncService;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSSyncService;->cancelSyncTask(Landroid/content/Context;)V

    return-void
.end method

.method static onAppLostFocus()V
    .locals 3

    .line 1347
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application lost focus initDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->initDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1348
    invoke-static {v0}, Lcom/onesignal/OneSignal;->setInForeground(Z)V

    .line 1349
    sget-object v0, Lcom/onesignal/OneSignal$AppEntryAction;->APP_CLOSE:Lcom/onesignal/OneSignal$AppEntryAction;

    sput-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    .line 1351
    invoke-static {}, Lcom/onesignal/OneSignal;->getTime()Lcom/onesignal/OSTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/OSTime;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLastSessionTime(J)V

    .line 1352
    invoke-static {}, Lcom/onesignal/LocationController;->onFocusChange()V

    .line 1354
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-nez v0, :cond_1

    .line 1356
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "onAppLostFocus()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving onAppLostFocus() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1359
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$9;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$9;-><init>()V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 1370
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->backgroundSyncLogic()V

    return-void
.end method

.method static onAppStartFocusLogic()V
    .locals 0

    .line 1425
    invoke-static {}, Lcom/onesignal/OneSignal;->refreshNotificationPermissionState()V

    return-void
.end method

.method static onRemoteParamSet()V
    .locals 1

    .line 889
    invoke-static {}, Lcom/onesignal/OneSignal;->reassignDelayedInitParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 890
    sget-boolean v0, Lcom/onesignal/OneSignal;->inForeground:Z

    if-eqz v0, :cond_0

    .line 891
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppFocusLogic()V

    :cond_0
    return-void
.end method

.method public static onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    .locals 0

    .line 1148
    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method static openDestinationActivity(Landroid/app/Activity;Lorg/json/JSONArray;)V
    .locals 3

    const/4 v0, 0x0

    .line 2434
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 2435
    sget-object v0, Lcom/onesignal/GenerateNotificationOpenIntentFromPushPayload;->INSTANCE:Lcom/onesignal/GenerateNotificationOpenIntentFromPushPayload;

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/GenerateNotificationOpenIntentFromPushPayload;->create(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/onesignal/GenerateNotificationOpenIntent;

    move-result-object p1

    .line 2440
    invoke-virtual {p1}, Lcom/onesignal/GenerateNotificationOpenIntent;->getIntentVisible()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2442
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK running startActivity with Intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->info(Ljava/lang/String;)V

    .line 2443
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2446
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string p1, "SDK not showing an Activity automatically due to it\'s settings."

    invoke-interface {p0, p1}, Lcom/onesignal/OSLogger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2449
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static pauseInAppMessages(Z)V
    .locals 2

    .line 3136
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3137
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting initWithContext. Moving pauseInAppMessages() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 3139
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$34;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$34;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 3149
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->setInAppMessagingEnabled(Z)V

    return-void
.end method

.method public static postNotification(Ljava/lang/String;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 2

    .line 2022
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/onesignal/OneSignal;->postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2024
    :catch_0
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid postNotification JSON format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static postNotification(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V
    .locals 2

    const-string v0, "app_id"

    const-string v1, "postNotification()"

    .line 2043
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2047
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2048
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2051
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 2053
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "error"

    const-string v1, "Missing app_id"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "notifications/"

    .line 2057
    new-instance v1, Lcom/onesignal/OneSignal$21;

    invoke-direct {v1, p1}, Lcom/onesignal/OneSignal$21;-><init>(Lcom/onesignal/OneSignal$PostNotificationResponseHandler;)V

    invoke-static {v0, p0, v1}, Lcom/onesignal/OneSignalRestClient;->post(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2094
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "HTTP create notification json exception!"

    invoke-interface {v0, v1, p0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_4

    .line 2097
    :try_start_1
    new-instance p0, Lorg/json/JSONObject;

    const-string v0, "{\'error\': \'HTTP create notification json exception!\'}"

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/onesignal/OneSignal$PostNotificationResponseHandler;->onFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2099
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static promptForPushNotifications()V
    .locals 1

    const/4 v0, 0x0

    .line 2836
    invoke-static {v0}, Lcom/onesignal/OneSignal;->promptForPushNotifications(Z)V

    return-void
.end method

.method public static promptForPushNotifications(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2848
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->promptForPushNotifications(ZLcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;)V

    return-void
.end method

.method public static promptForPushNotifications(ZLcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;)V
    .locals 1

    .line 2864
    sget-object v0, Lcom/onesignal/NotificationPermissionController;->INSTANCE:Lcom/onesignal/NotificationPermissionController;

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/NotificationPermissionController;->prompt(ZLcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;)V

    return-void
.end method

.method public static promptLocation()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2782
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    return-void
.end method

.method static promptLocation(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V
    .locals 2

    .line 2786
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "promptLocation()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2787
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving promptLocation() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 2789
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$29;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignal$29;-><init>(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;Z)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 2800
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2803
    :cond_1
    new-instance v0, Lcom/onesignal/OneSignal$30;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$30;-><init>(Lcom/onesignal/OneSignal$OSPromptActionCompletionCallback;)V

    .line 2827
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p0, v1, p1, v0}, Lcom/onesignal/LocationController;->getLocation(Landroid/content/Context;ZZLcom/onesignal/LocationController$LocationHandler;)V

    return-void
.end method

.method public static provideUserConsent(Z)V
    .locals 2

    .line 1152
    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    .line 1154
    sget-object v1, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v1, p0}, Lcom/onesignal/OSRemoteParamController;->saveUserConsentStatus(Z)V

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 1156
    sget-object p0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    if-eqz p0, :cond_0

    .line 1157
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Privacy consent provided, reassigning all delayed init params and attempting init again..."

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 1158
    invoke-static {}, Lcom/onesignal/OneSignal;->reassignDelayedInitParams()Z

    :cond_0
    return-void
.end method

.method private static pushStatusRuntimeError(I)Z
    .locals 1

    const/4 v0, -0x6

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static reassignDelayedInitParams()Z
    .locals 6

    .line 1163
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1168
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    if-nez v0, :cond_1

    .line 1170
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v0

    .line 1171
    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    .line 1172
    sget-object v3, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v4, "Trying to continue OneSignal with null delayed params"

    invoke-interface {v3, v4}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1174
    :cond_1
    invoke-virtual {v0}, Lcom/onesignal/DelayedConsentInitializationParameters;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 1175
    sget-object v2, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    invoke-virtual {v2}, Lcom/onesignal/DelayedConsentInitializationParameters;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1178
    :goto_0
    sget-object v3, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reassignDelayedInitParams with appContext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1180
    sput-object v3, Lcom/onesignal/OneSignal;->delayedInitParams:Lcom/onesignal/DelayedConsentInitializationParameters;

    .line 1181
    invoke-static {v0}, Lcom/onesignal/OneSignal;->setAppId(Ljava/lang/String;)V

    .line 1184
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-nez v0, :cond_3

    if-nez v2, :cond_2

    .line 1186
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v2, "Trying to continue OneSignal with null delayed params context"

    invoke-interface {v0, v2}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return v1

    .line 1189
    :cond_2
    invoke-static {v2}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;)V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static refreshNotificationPermissionState()V
    .locals 1

    .line 1429
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentPermissionState(Landroid/content/Context;)Lcom/onesignal/OSPermissionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSPermissionState;->refreshAsTo()V

    return-void
.end method

.method private static registerForPushToken()V
    .locals 4

    .line 1080
    invoke-static {}, Lcom/onesignal/OneSignal;->getPushRegistrator()Lcom/onesignal/PushRegistrator;

    move-result-object v0

    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    sget-object v2, Lcom/onesignal/OneSignal;->googleProjectNumber:Ljava/lang/String;

    new-instance v3, Lcom/onesignal/OneSignal$6;

    invoke-direct {v3}, Lcom/onesignal/OneSignal$6;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lcom/onesignal/PushRegistrator;->registerForPush(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/PushRegistrator$RegisteredHandler;)V

    return-void
.end method

.method private static registerUser()V
    .locals 3

    .line 1479
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUser:registerForPushFired:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", locationFired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/onesignal/OneSignal;->locationFired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", remoteParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1483
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1479
    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 1487
    sget-boolean v0, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/onesignal/OneSignal;->locationFired:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1492
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/onesignal/OneSignal$10;

    invoke-direct {v1}, Lcom/onesignal/OneSignal$10;-><init>()V

    const-string v2, "OS_REG_USER"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1488
    :cond_1
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "registerUser not possible"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method private static registerUserTask()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1504
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1505
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1507
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1509
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1511
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "device_os"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1512
    invoke-static {}, Lcom/onesignal/OneSignal;->getTimeZoneOffset()I

    move-result v3

    const-string v4, "timezone"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1513
    invoke-static {}, Lcom/onesignal/OneSignal;->getTimeZoneId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "timezone_id"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1514
    sget-object v3, Lcom/onesignal/OneSignal;->languageContext:Lcom/onesignal/language/LanguageContext;

    invoke-virtual {v3}, Lcom/onesignal/language/LanguageContext;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk"

    const-string v4, "040800"

    .line 1515
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1516
    sget-object v3, Lcom/onesignal/OneSignal;->sdkType:Ljava/lang/String;

    const-string v4, "sdk_type"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "android_package"

    .line 1517
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1518
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "device_model"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "game_version"

    .line 1521
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1524
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getNetType()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "net_type"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1525
    sget-object v0, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v0}, Lcom/onesignal/OSUtils;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "carrier"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1526
    invoke-static {}, Lcom/onesignal/RootToolsInternalMethods;->isRooted()Z

    move-result v0

    const-string v1, "rooted"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 1528
    invoke-static {v2, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;Lcom/onesignal/OneSignalStateSynchronizer$OSDeviceInfoCompletionHandler;)V

    .line 1530
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1531
    sget-object v1, Lcom/onesignal/OneSignal;->lastRegistrationId:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1532
    sget v1, Lcom/onesignal/OneSignal;->subscribableStatus:I

    const-string v2, "subscribableStatus"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1533
    invoke-static {}, Lcom/onesignal/OneSignal;->areNotificationsEnabledForSubscribedState()Z

    move-result v1

    const-string v2, "androidPermission"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1534
    sget-object v1, Lcom/onesignal/OneSignal;->osUtils:Lcom/onesignal/OSUtils;

    invoke-virtual {v1}, Lcom/onesignal/OSUtils;->getDeviceType()I

    move-result v1

    const-string v2, "device_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1535
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V

    .line 1537
    invoke-static {}, Lcom/onesignal/OneSignal;->isLocationShared()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->lastLocationPoint:Lcom/onesignal/LocationController$LocationPoint;

    if-eqz v0, :cond_0

    .line 1538
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updateLocation(Lcom/onesignal/LocationController$LocationPoint;)V

    .line 1540
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "registerUserTask calling readyToUpdate"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1541
    invoke-static {v0}, Lcom/onesignal/OneSignalStateSynchronizer;->readyToUpdate(Z)V

    .line 1543
    sput-boolean v3, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    return-void
.end method

.method public static removeEmailSubscriptionObserver(Lcom/onesignal/OSEmailSubscriptionObserver;)V
    .locals 1

    .line 3035
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3036
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal.initWithContext has not been called. Could not modify email subscription observer"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 3040
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getEmailSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method static removeEntryStateListener(Lcom/onesignal/OneSignal$EntryStateListener;)V
    .locals 1

    .line 379
    sget-object v0, Lcom/onesignal/OneSignal;->entryStateListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeExternalUserId()V
    .locals 1

    const-string v0, "removeExternalUserId()"

    .line 1861
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1864
    invoke-static {v0}, Lcom/onesignal/OneSignal;->removeExternalUserId(Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static removeExternalUserId(Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 1

    const-string v0, "removeExternalUserId()"

    .line 1868
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ""

    .line 1872
    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static removeGroupedNotifications(Ljava/lang/String;)V
    .locals 3

    .line 2917
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "removeGroupedNotifications()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2931
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2934
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/onesignal/OSNotificationDataController;->removeGroupedNotifications(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    return-void

    .line 2918
    :cond_2
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving removeGroupedNotifications() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 2920
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$33;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$33;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeNotification(I)V
    .locals 3

    .line 2896
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "removeNotification()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2910
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2913
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    new-instance v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Lcom/onesignal/OSNotificationDataController;->removeNotification(ILjava/lang/ref/WeakReference;)V

    return-void

    .line 2897
    :cond_2
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving removeNotification() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 2899
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$32;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$32;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removePermissionObserver(Lcom/onesignal/OSPermissionObserver;)V
    .locals 1

    .line 2966
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2967
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal.initWithContext has not been called. Could not modify permission observer"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 2971
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getPermissionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public static removeSMSSubscriptionObserver(Lcom/onesignal/OSSMSSubscriptionObserver;)V
    .locals 1

    .line 3067
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3068
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal.initWithContext has not been called. Could not modify sms subscription observer"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 3072
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSMSSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public static removeSubscriptionObserver(Lcom/onesignal/OSSubscriptionObserver;)V
    .locals 1

    .line 3002
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3003
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal.initWithContext has not been called. Could not modify subscription observer"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 3007
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSubscriptionStateChangesObserver()Lcom/onesignal/OSObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSObservable;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public static removeTriggerForKey(Ljava/lang/String;)V
    .locals 1

    .line 3102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3103
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3105
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessageController;->removeTriggersForKeys(Ljava/util/Collection;)V

    return-void
.end method

.method public static removeTriggersForKeys(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3097
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->removeTriggersForKeys(Ljava/util/Collection;)V

    return-void
.end method

.method public static requiresUserPrivacyConsent()Z
    .locals 1

    .line 1202
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignal;->isUserPrivacyConsentRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/onesignal/OneSignal;->userProvidedPrivacyConsent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static runGetTags()V
    .locals 2

    .line 2151
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2152
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "getTags called under a null user!"

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->warning(Ljava/lang/String;)V

    return-void

    .line 2156
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallbacks()V

    return-void
.end method

.method private static runNotificationOpenedCallback(Lorg/json/JSONArray;)V
    .locals 1

    .line 2284
    sget-object v0, Lcom/onesignal/OneSignal;->notificationOpenedHandler:Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;

    if-nez v0, :cond_0

    .line 2285
    sget-object v0, Lcom/onesignal/OneSignal;->unprocessedOpenedNotifs:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 2289
    :cond_0
    invoke-static {p0}, Lcom/onesignal/OneSignal;->generateNotificationOpenedResult(Lorg/json/JSONArray;)Lcom/onesignal/OSNotificationOpenedResult;

    move-result-object p0

    .line 2290
    sget-object v0, Lcom/onesignal/OneSignal;->appEntryState:Lcom/onesignal/OneSignal$AppEntryAction;

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->addEntryStateListener(Lcom/onesignal/OneSignal$EntryStateListener;Lcom/onesignal/OneSignal$AppEntryAction;)V

    .line 2291
    invoke-static {p0}, Lcom/onesignal/OneSignal;->fireNotificationOpenedHandler(Lcom/onesignal/OSNotificationOpenedResult;)V

    return-void
.end method

.method private static saveAppId(Ljava/lang/String;)V
    .locals 2

    .line 2509
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2512
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "GT_APP_ID"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static saveEmailId(Ljava/lang/String;)V
    .locals 2

    .line 2583
    sput-object p0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    .line 2584
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    .line 2587
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    .line 2590
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->emailId:Ljava/lang/String;

    :goto_0
    const-string v1, "OS_EMAIL_ID"

    .line 2587
    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static saveSMSId(Ljava/lang/String;)V
    .locals 2

    .line 2612
    sput-object p0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    .line 2613
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    .line 2616
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    .line 2619
    sget-object v0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal;->smsId:Ljava/lang/String;

    :goto_0
    const-string v1, "PREFS_OS_SMS_ID"

    .line 2616
    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static saveUserId(Ljava/lang/String;)V
    .locals 2

    .line 2554
    sput-object p0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    .line 2555
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    .line 2558
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    sget-object v0, Lcom/onesignal/OneSignal;->userId:Ljava/lang/String;

    const-string v1, "GT_PLAYER_ID"

    invoke-static {p0, v1, v0}, Lcom/onesignal/OneSignalPrefs;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static scheduleSyncService()Z
    .locals 5

    .line 1387
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->persist()Z

    move-result v0

    .line 1388
    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OneSignal scheduleSyncService unsyncedChanges: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1390
    invoke-static {}, Lcom/onesignal/OSSyncService;->getInstance()Lcom/onesignal/OSSyncService;

    move-result-object v1

    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/onesignal/OSSyncService;->scheduleSyncTask(Landroid/content/Context;)V

    .line 1392
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/onesignal/LocationController;->scheduleUpdate(Landroid/content/Context;)Z

    move-result v1

    .line 1393
    sget-object v2, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OneSignal scheduleSyncService locationScheduled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static sendClickActionOutcomes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/OSInAppMessageOutcome;",
            ">;)V"
        }
    .end annotation

    .line 3349
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3354
    :cond_0
    invoke-virtual {v0, p0}, Lcom/onesignal/OSOutcomeEventsController;->sendClickActionOutcomes(Ljava/util/List;)V

    return-void

    .line 3350
    :cond_1
    :goto_0
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Make sure OneSignal.init is called first"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void
.end method

.method public static sendOutcome(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3358
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method public static sendOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 2

    .line 3362
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3363
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string p1, "Make sure OneSignal initWithContext and setAppId is called first"

    invoke-interface {p0, p1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 3368
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "sendOutcome()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3381
    :cond_1
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3385
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void

    .line 3369
    :cond_3
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving sendOutcome() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 3371
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$35;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignal$35;-><init>(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static sendOutcomeWithValue(Ljava/lang/String;F)V
    .locals 1

    const/4 v0, 0x0

    .line 3418
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->sendOutcomeWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method public static sendOutcomeWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 2

    .line 3422
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/onesignal/OneSignal;->isValidOutcomeValue(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3426
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "sendOutcomeWithValue()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3439
    :cond_1
    invoke-virtual {v0, p0, p1, p2}, Lcom/onesignal/OSOutcomeEventsController;->sendOutcomeEventWithValue(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void

    .line 3427
    :cond_2
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving sendOutcomeWithValue() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 3429
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$37;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignal$37;-><init>(Ljava/lang/String;FLcom/onesignal/OneSignal$OutcomeCallback;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    .locals 3

    const-string v0, "sendPurchases()"

    .line 2259
    invoke-static {v0}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2262
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2263
    new-instance v0, Lcom/onesignal/OneSignal$IAPUpdateJob;

    invoke-direct {v0, p0}, Lcom/onesignal/OneSignal$IAPUpdateJob;-><init>(Lorg/json/JSONArray;)V

    sput-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2264
    iput-boolean p1, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    .line 2265
    sget-object p0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iput-object p2, p0, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    return-void

    .line 2271
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "app_id"

    .line 2272
    invoke-static {}, Lcom/onesignal/OneSignal;->getSavedAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string p1, "existing"

    const/4 v1, 0x1

    .line 2274
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_2
    const-string p1, "purchases"

    .line 2275
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2277
    invoke-static {v0, p2}, Lcom/onesignal/OneSignalStateSynchronizer;->sendPurchases(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRestClient$ResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2279
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Failed to generate JSON for sendPurchases."

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static sendTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1889
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "sendTag()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1890
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving sendTag() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1892
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$18;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignal$18;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 1903
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1907
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1909
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static sendTags(Ljava/lang/String;)V
    .locals 2

    .line 1915
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1917
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "Generating JSONObject for sendTags failed!"

    invoke-static {v0, v1, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 1931
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    return-void
.end method

.method public static sendTags(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V
    .locals 2

    .line 1949
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "sendTags()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1950
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving sendTags() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1952
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$19;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignal$19;-><init>(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 1963
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1966
    :cond_1
    new-instance v0, Lcom/onesignal/OneSignal$20;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OneSignal$20;-><init>(Lorg/json/JSONObject;Lcom/onesignal/OneSignal$ChangeTagsUpdateHandler;)V

    .line 2011
    sget-object p0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    invoke-virtual {p0}, Lcom/onesignal/OSTaskRemoteController;->shouldRunTaskThroughQueue()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2012
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string p1, "Sending sendTags() operation to pending task queue."

    invoke-interface {p0, p1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 2013
    sget-object p0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    invoke-virtual {p0, v0}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 2017
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static sendUniqueOutcome(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 3389
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->sendUniqueOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void
.end method

.method public static sendUniqueOutcome(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V
    .locals 2

    .line 3393
    invoke-static {p0}, Lcom/onesignal/OneSignal;->isValidOutcomeEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3397
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "sendUniqueOutcome()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3410
    :cond_1
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 3414
    :cond_2
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsController:Lcom/onesignal/OSOutcomeEventsController;

    invoke-virtual {v0, p0, p1}, Lcom/onesignal/OSOutcomeEventsController;->sendUniqueOutcomeEvent(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    return-void

    .line 3398
    :cond_3
    :goto_0
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving sendUniqueOutcome() operation to a pending queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 3400
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$36;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignal$36;-><init>(Ljava/lang/String;Lcom/onesignal/OneSignal$OutcomeCallback;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 3

    const-string v0, "setAppId called with id: "

    if-eqz p0, :cond_4

    .line 717
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 720
    :cond_0
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 723
    sput-boolean v1, Lcom/onesignal/OneSignal;->initDone:Z

    .line 724
    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " changing id from: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/onesignal/OSLogger;->verbose(Ljava/lang/String;)V

    .line 727
    :cond_1
    sput-object p0, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    .line 729
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez p0, :cond_2

    .line 730
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "appId set, but please call initWithContext(appContext) with Application context to complete OneSignal init!"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->warning(Ljava/lang/String;)V

    return-void

    .line 734
    :cond_2
    sget-object p0, Lcom/onesignal/OneSignal;->appActivity:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 735
    sget-object p0, Lcom/onesignal/OneSignal;->appActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 737
    :cond_3
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->init(Landroid/content/Context;)V

    :goto_0
    return-void

    .line 718
    :cond_4
    :goto_1
    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ignoring!"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/onesignal/OSLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public static setEmail(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1652
    invoke-static {p0, v0, v0}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    return-void
.end method

.method public static setEmail(Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1648
    invoke-static {p0, v0, p1}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    return-void
.end method

.method public static setEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1656
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    return-void
.end method

.method public static setEmail(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V
    .locals 2

    .line 1670
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "setEmail()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1671
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving setEmail() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1673
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignal$13;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$EmailUpdateHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 1683
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1686
    :cond_1
    invoke-static {p0}, Lcom/onesignal/OSUtils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Email is invalid"

    if-eqz p2, :cond_2

    .line 1689
    new-instance p1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->VALIDATION:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {p1, v0, p0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1690
    :cond_2
    sget-object p1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-interface {p1, p0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 1694
    :cond_3
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v0

    iget-boolean v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->useEmailAuth:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const-string p0, "Email authentication (auth token) is set to REQUIRED for this application. Please provide an auth token from your backend server or change the setting in the OneSignal dashboard."

    if-eqz p2, :cond_5

    .line 1697
    new-instance p1, Lcom/onesignal/OneSignal$EmailUpdateError;

    sget-object v0, Lcom/onesignal/OneSignal$EmailErrorType;->REQUIRES_EMAIL_AUTH:Lcom/onesignal/OneSignal$EmailErrorType;

    invoke-direct {p1, v0, p0}, Lcom/onesignal/OneSignal$EmailUpdateError;-><init>(Lcom/onesignal/OneSignal$EmailErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/onesignal/OneSignal$EmailUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$EmailUpdateError;)V

    .line 1698
    :cond_5
    sget-object p1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-interface {p1, p0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 1702
    :cond_6
    sput-object p2, Lcom/onesignal/OneSignal;->emailUpdateHandler:Lcom/onesignal/OneSignal$EmailUpdateHandler;

    .line 1704
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_7

    .line 1708
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1710
    :cond_7
    sget-object p2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/onesignal/OSEmailSubscriptionState;->setEmailAddress(Ljava/lang/String;)V

    .line 1711
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onesignal/OneSignalStateSynchronizer;->setEmail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1805
    invoke-static {p0, v0, v0}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1809
    invoke-static {p0, v0, p1}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1813
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    return-void
.end method

.method public static setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    .locals 2

    .line 1817
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "setExternalUserId()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving setExternalUserId() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1820
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignal$17;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 1830
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-nez p0, :cond_2

    .line 1834
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string p1, "External id can\'t be null, set an empty string to remove an external id"

    invoke-interface {p0, p1}, Lcom/onesignal/OSLogger;->warning(Ljava/lang/String;)V

    return-void

    .line 1839
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v0

    iget-boolean v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->useUserIdAuth:Z

    if-eqz v0, :cond_5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const-string p0, "External Id authentication (auth token) is set to REQUIRED for this application. Please provide an auth token from your backend server or change the setting in the OneSignal dashboard."

    if-eqz p2, :cond_4

    .line 1842
    new-instance p1, Lcom/onesignal/OneSignal$ExternalIdError;

    sget-object v0, Lcom/onesignal/OneSignal$ExternalIdErrorType;->REQUIRES_EXTERNAL_ID_AUTH:Lcom/onesignal/OneSignal$ExternalIdErrorType;

    invoke-direct {p1, v0, p0}, Lcom/onesignal/OneSignal$ExternalIdError;-><init>(Lcom/onesignal/OneSignal$ExternalIdErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;->onFailure(Lcom/onesignal/OneSignal$ExternalIdError;)V

    .line 1843
    :cond_4
    sget-object p1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-interface {p1, p0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    :cond_5
    if-eqz p1, :cond_6

    .line 1849
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1852
    :cond_6
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/onesignal/OneSignalStateSynchronizer;->setExternalUserId(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSExternalUserIdUpdateCompletionHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 1854
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "remove"

    goto :goto_0

    :cond_7
    const-string p0, "set"

    .line 1855
    :goto_0
    sget-object p2, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " external ID but encountered a JSON exception"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1856
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static setInAppMessageClickHandler(Lcom/onesignal/OneSignal$OSInAppMessageClickHandler;)V
    .locals 0

    .line 811
    sput-object p0, Lcom/onesignal/OneSignal;->inAppMessageClickHandler:Lcom/onesignal/OneSignal$OSInAppMessageClickHandler;

    return-void
.end method

.method public static setInAppMessageLifecycleHandler(Lcom/onesignal/OSInAppMessageLifecycleHandler;)V
    .locals 2

    .line 788
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 789
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting initWithContext. Moving setInAppMessageLifecycleHandler() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 791
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$4;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$4;-><init>(Lcom/onesignal/OSInAppMessageLifecycleHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 800
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSInAppMessageController;->setInAppMessageLifecycleHandler(Lcom/onesignal/OSInAppMessageLifecycleHandler;)V

    return-void
.end method

.method static setInForeground(Z)V
    .locals 0

    .line 421
    sput-boolean p0, Lcom/onesignal/OneSignal;->inForeground:Z

    return-void
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1754
    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->setLanguage(Ljava/lang/String;Lcom/onesignal/OneSignal$OSSetLanguageCompletionHandler;)V

    return-void
.end method

.method public static setLanguage(Ljava/lang/String;Lcom/onesignal/OneSignal$OSSetLanguageCompletionHandler;)V
    .locals 2

    .line 1758
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "setLanguage()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1759
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving setLanguage() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1761
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$15;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/OneSignal$15;-><init>(Ljava/lang/String;Lcom/onesignal/OneSignal$OSSetLanguageCompletionHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1774
    new-instance v0, Lcom/onesignal/OneSignal$16;

    invoke-direct {v0, p1}, Lcom/onesignal/OneSignal$16;-><init>(Lcom/onesignal/OneSignal$OSSetLanguageCompletionHandler;)V

    .line 1788
    :cond_1
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 1791
    :cond_2
    new-instance p1, Lcom/onesignal/language/LanguageProviderAppDefined;

    sget-object v1, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    invoke-direct {p1, v1}, Lcom/onesignal/language/LanguageProviderAppDefined;-><init>(Lcom/onesignal/OSSharedPreferences;)V

    .line 1792
    invoke-virtual {p1, p0}, Lcom/onesignal/language/LanguageProviderAppDefined;->setLanguage(Ljava/lang/String;)V

    .line 1793
    sget-object p0, Lcom/onesignal/OneSignal;->languageContext:Lcom/onesignal/language/LanguageContext;

    invoke-virtual {p0, p1}, Lcom/onesignal/language/LanguageContext;->setStrategy(Lcom/onesignal/language/LanguageProvider;)V

    .line 1796
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "language"

    .line 1797
    sget-object v1, Lcom/onesignal/OneSignal;->languageContext:Lcom/onesignal/language/LanguageContext;

    invoke-virtual {v1}, Lcom/onesignal/language/LanguageContext;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1798
    invoke-static {p0, v0}, Lcom/onesignal/OneSignalStateSynchronizer;->updateDeviceInfo(Lorg/json/JSONObject;Lcom/onesignal/OneSignalStateSynchronizer$OSDeviceInfoCompletionHandler;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1800
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static setLastSessionTime(J)V
    .locals 3

    .line 2677
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last session time set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 2678
    sget-object v0, Lcom/onesignal/OneSignalPrefs;->PREFS_ONESIGNAL:Ljava/lang/String;

    const-string v1, "OS_LAST_SESSION_TIME"

    invoke-static {v0, v1, p0, p1}, Lcom/onesignal/OneSignalPrefs;->saveLong(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static setLocationShared(Z)V
    .locals 2

    .line 2734
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "setLocationShared()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2735
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving setLocationShared() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 2737
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$28;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$28;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 2748
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParamController()Lcom/onesignal/OSRemoteParamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->hasLocationKey()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2751
    :cond_1
    invoke-static {p0}, Lcom/onesignal/OneSignal;->startLocationShared(Z)V

    return-void
.end method

.method public static setLogLevel(II)V
    .locals 0

    .line 1258
    invoke-static {p0}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object p0

    invoke-static {p1}, Lcom/onesignal/OneSignal;->getLogLevel(I)Lcom/onesignal/OneSignal$LOG_LEVEL;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    return-void
.end method

.method public static setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V
    .locals 0

    .line 1234
    sput-object p0, Lcom/onesignal/OneSignal;->logCatLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sput-object p1, Lcom/onesignal/OneSignal;->visualLogLevel:Lcom/onesignal/OneSignal$LOG_LEVEL;

    return-void
.end method

.method public static setNotificationOpenedHandler(Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;)V
    .locals 1

    .line 804
    sput-object p0, Lcom/onesignal/OneSignal;->notificationOpenedHandler:Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;

    .line 806
    sget-boolean v0, Lcom/onesignal/OneSignal;->initDone:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 807
    invoke-static {}, Lcom/onesignal/OneSignal;->fireCallbackForOpenedNotifications()V

    :cond_0
    return-void
.end method

.method public static setNotificationWillShowInForegroundHandler(Lcom/onesignal/OneSignal$OSNotificationWillShowInForegroundHandler;)V
    .locals 0

    .line 784
    sput-object p0, Lcom/onesignal/OneSignal;->notificationWillShowInForegroundHandler:Lcom/onesignal/OneSignal$OSNotificationWillShowInForegroundHandler;

    return-void
.end method

.method static setRemoteNotificationReceivedHandler(Lcom/onesignal/OneSignal$OSRemoteNotificationReceivedHandler;)V
    .locals 1

    .line 779
    sget-object v0, Lcom/onesignal/OneSignal;->remoteNotificationReceivedHandler:Lcom/onesignal/OneSignal$OSRemoteNotificationReceivedHandler;

    if-nez v0, :cond_0

    .line 780
    sput-object p0, Lcom/onesignal/OneSignal;->remoteNotificationReceivedHandler:Lcom/onesignal/OneSignal$OSRemoteNotificationReceivedHandler;

    :cond_0
    return-void
.end method

.method public static setRequiresUserPrivacyConsent(Z)V
    .locals 1

    .line 1210
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParamController()Lcom/onesignal/OSRemoteParamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->hasPrivacyConsentKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1211
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "setRequiresUserPrivacyConsent already called by remote params!, ignoring user set"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->warning(Ljava/lang/String;)V

    return-void

    .line 1215
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    .line 1216
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Cannot change requiresUserPrivacyConsent() from TRUE to FALSE"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 1220
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParamController()Lcom/onesignal/OSRemoteParamController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSRemoteParamController;->savePrivacyConsentRequired(Z)V

    return-void
.end method

.method public static setSMSNumber(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1551
    invoke-static {p0, v0, v0}, Lcom/onesignal/OneSignal;->setSMSNumber(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V

    return-void
.end method

.method public static setSMSNumber(Ljava/lang/String;Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 1547
    invoke-static {p0, v0, p1}, Lcom/onesignal/OneSignal;->setSMSNumber(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V

    return-void
.end method

.method public static setSMSNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1555
    invoke-static {p0, p1, v0}, Lcom/onesignal/OneSignal;->setSMSNumber(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V

    return-void
.end method

.method public static setSMSNumber(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V
    .locals 2

    .line 1569
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "setSMSNumber()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving setSMSNumber() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 1572
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/onesignal/OneSignal$11;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/OneSignal$OSSMSUpdateHandler;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 1583
    :cond_0
    invoke-static {v1}, Lcom/onesignal/OneSignal;->shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1586
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SMS number is invalid"

    if-eqz p2, :cond_2

    .line 1589
    new-instance p1, Lcom/onesignal/OneSignal$OSSMSUpdateError;

    sget-object v0, Lcom/onesignal/OneSignal$SMSErrorType;->VALIDATION:Lcom/onesignal/OneSignal$SMSErrorType;

    invoke-direct {p1, v0, p0}, Lcom/onesignal/OneSignal$OSSMSUpdateError;-><init>(Lcom/onesignal/OneSignal$SMSErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/onesignal/OneSignal$OSSMSUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$OSSMSUpdateError;)V

    .line 1590
    :cond_2
    sget-object p1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-interface {p1, p0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 1594
    :cond_3
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v0

    iget-boolean v0, v0, Lcom/onesignal/OneSignalRemoteParams$Params;->useSMSAuth:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    const-string p0, "SMS authentication (auth token) is set to REQUIRED for this application. Please provide an auth token from your backend server or change the setting in the OneSignal dashboard."

    if-eqz p2, :cond_5

    .line 1597
    new-instance p1, Lcom/onesignal/OneSignal$OSSMSUpdateError;

    sget-object v0, Lcom/onesignal/OneSignal$SMSErrorType;->REQUIRES_SMS_AUTH:Lcom/onesignal/OneSignal$SMSErrorType;

    invoke-direct {p1, v0, p0}, Lcom/onesignal/OneSignal$OSSMSUpdateError;-><init>(Lcom/onesignal/OneSignal$SMSErrorType;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/onesignal/OneSignal$OSSMSUpdateHandler;->onFailure(Lcom/onesignal/OneSignal$OSSMSUpdateError;)V

    .line 1598
    :cond_5
    sget-object p1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-interface {p1, p0}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    return-void

    .line 1602
    :cond_6
    sput-object p2, Lcom/onesignal/OneSignal;->smsUpdateHandler:Lcom/onesignal/OneSignal$OSSMSUpdateHandler;

    .line 1604
    sget-object p2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/onesignal/OneSignal;->getCurrentSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/onesignal/OSSMSSubscriptionState;->setSMSNumber(Ljava/lang/String;)V

    .line 1605
    invoke-static {p0, p1}, Lcom/onesignal/OneSignalStateSynchronizer;->setSMSNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setSessionManager(Lcom/onesignal/OSSessionManager;)V
    .locals 0

    .line 3298
    sput-object p0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    return-void
.end method

.method static setSharedPreferences(Lcom/onesignal/OSSharedPreferences;)V
    .locals 0

    .line 3302
    sput-object p0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-void
.end method

.method static setTime(Lcom/onesignal/OSTime;)V
    .locals 0

    .line 3290
    sput-object p0, Lcom/onesignal/OneSignal;->time:Lcom/onesignal/OSTime;

    return-void
.end method

.method static setTrackerFactory(Lcom/onesignal/influence/data/OSTrackerFactory;)V
    .locals 0

    .line 3294
    sput-object p0, Lcom/onesignal/OneSignal;->trackerFactory:Lcom/onesignal/influence/data/OSTrackerFactory;

    return-void
.end method

.method private static setupContextListeners(Z)V
    .locals 4

    .line 896
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/onesignal/ActivityLifecycleListener;->registerActivityLifecycleCallbacks(Landroid/app/Application;)V

    if-eqz p0, :cond_1

    .line 901
    new-instance p0, Lcom/onesignal/language/LanguageContext;

    sget-object v0, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    invoke-direct {p0, v0}, Lcom/onesignal/language/LanguageContext;-><init>(Lcom/onesignal/OSSharedPreferences;)V

    sput-object p0, Lcom/onesignal/OneSignal;->languageContext:Lcom/onesignal/language/LanguageContext;

    .line 905
    invoke-static {}, Lcom/onesignal/OneSignalPrefs;->startDelayedWrite()V

    .line 907
    invoke-static {}, Lcom/onesignal/OneSignal;->getDBHelperInstance()Lcom/onesignal/OneSignalDbHelper;

    move-result-object p0

    .line 908
    new-instance v0, Lcom/onesignal/OSNotificationDataController;

    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    invoke-direct {v0, p0, v1}, Lcom/onesignal/OSNotificationDataController;-><init>(Lcom/onesignal/OneSignalDbHelper;Lcom/onesignal/OSLogger;)V

    sput-object v0, Lcom/onesignal/OneSignal;->notificationDataController:Lcom/onesignal/OSNotificationDataController;

    .line 911
    invoke-virtual {v0}, Lcom/onesignal/OSNotificationDataController;->cleanOldCachedData()V

    .line 913
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessageController;->cleanCachedInAppMessages()V

    .line 915
    sget-object v0, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;

    if-nez v0, :cond_0

    .line 916
    new-instance v0, Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;

    sget-object v1, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    sget-object v2, Lcom/onesignal/OneSignal;->apiClient:Lcom/onesignal/OneSignalAPIClient;

    sget-object v3, Lcom/onesignal/OneSignal;->preferences:Lcom/onesignal/OSSharedPreferences;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;-><init>(Lcom/onesignal/OSLogger;Lcom/onesignal/OneSignalAPIClient;Lcom/onesignal/OneSignalDb;Lcom/onesignal/OSSharedPreferences;)V

    sput-object v0, Lcom/onesignal/OneSignal;->outcomeEventsFactory:Lcom/onesignal/outcomes/data/OSOutcomeEventsFactory;

    .line 918
    :cond_0
    sget-object p0, Lcom/onesignal/OneSignal;->sessionManager:Lcom/onesignal/OSSessionManager;

    invoke-virtual {p0}, Lcom/onesignal/OSSessionManager;->initSessionFromCache()V

    .line 919
    invoke-static {}, Lcom/onesignal/OneSignal;->getOutcomeEventsController()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/OSOutcomeEventsController;->cleanCachedUniqueOutcomes()V

    :cond_1
    return-void
.end method

.method private static setupPrivacyConsent(Landroid/content/Context;)V
    .locals 2

    .line 925
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 926
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.onesignal.PrivacyConsent"

    .line 929
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "ENABLE"

    .line 931
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/onesignal/OneSignal;->setRequiresUserPrivacyConsent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 933
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static shouldFireForegroundHandlers(Lcom/onesignal/OSNotificationGenerationJob;)Z
    .locals 2

    .line 2369
    invoke-static {}, Lcom/onesignal/OneSignal;->isInForeground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2370
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "App is in background, show notification"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return v1

    .line 2374
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal;->notificationWillShowInForegroundHandler:Lcom/onesignal/OneSignal$OSNotificationWillShowInForegroundHandler;

    if-nez v0, :cond_1

    .line 2375
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "No NotificationWillShowInForegroundHandler setup, show notification"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return v1

    .line 2380
    :cond_1
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationGenerationJob;->isRestoring()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2381
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "Not firing notificationWillShowInForegroundHandler for restored notifications"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static shouldInitDirectSessionFromNotificationOpen(Landroid/app/Activity;Lorg/json/JSONArray;)Z
    .locals 2

    .line 2454
    sget-boolean v0, Lcom/onesignal/OneSignal;->inForeground:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2459
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 2460
    new-instance v0, Lcom/onesignal/OSNotificationOpenBehaviorFromPushPayload;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OSNotificationOpenBehaviorFromPushPayload;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 2463
    invoke-virtual {v0}, Lcom/onesignal/OSNotificationOpenBehaviorFromPushPayload;->getShouldOpenApp()Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 2465
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method static shouldLogUserPrivacyConsentErrorMessageForMethodName(Ljava/lang/String;)Z
    .locals 3

    .line 1224
    invoke-static {}, Lcom/onesignal/OneSignal;->requiresUserPrivacyConsent()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    .line 1226
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was called before the user provided privacy consent. Your application is set to require the user\'s privacy consent before the OneSignal SDK can be initialized. Please ensure the user has provided consent before calling this method. You can check the latest OneSignal consent status by calling OneSignal.userProvidedPrivacyConsent()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static shouldStartNewSession()Z
    .locals 2

    .line 3201
    invoke-static {}, Lcom/onesignal/OneSignal;->isInForeground()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3204
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->isPastOnSessionTime()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static startLocationShared(Z)V
    .locals 3

    .line 2755
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OneSignal startLocationShared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 2756
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParamController()Lcom/onesignal/OSRemoteParamController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSRemoteParamController;->saveLocationShared(Z)V

    if-nez p0, :cond_0

    .line 2759
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "OneSignal is shareLocation set false, clearing last location!"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 2760
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->clearLocation()V

    :cond_0
    return-void
.end method

.method private static startLocationUpdate()V
    .locals 3

    .line 1036
    new-instance v0, Lcom/onesignal/OneSignal$5;

    invoke-direct {v0}, Lcom/onesignal/OneSignal$5;-><init>()V

    .line 1049
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v0}, Lcom/onesignal/LocationController;->getLocation(Landroid/content/Context;ZZLcom/onesignal/LocationController$LocationHandler;)V

    return-void
.end method

.method private static startRegistrationOrOnSession()V
    .locals 3

    .line 1017
    sget-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1019
    sput-boolean v0, Lcom/onesignal/OneSignal;->waitingToPostStateSync:Z

    .line 1021
    sget-boolean v1, Lcom/onesignal/OneSignal;->inForeground:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getSyncAsNewSession()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    sput-boolean v2, Lcom/onesignal/OneSignal;->locationFired:Z

    .line 1024
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->startLocationUpdate()V

    .line 1026
    sput-boolean v2, Lcom/onesignal/OneSignal;->registerForPushFired:Z

    .line 1029
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParams()Lcom/onesignal/OneSignalRemoteParams$Params;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1030
    invoke-static {}, Lcom/onesignal/OneSignal;->registerForPushToken()V

    goto :goto_0

    .line 1032
    :cond_2
    sget-object v1, Lcom/onesignal/OneSignal;->appId:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/OneSignal;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/onesignal/OneSignal;->makeAndroidParamsRequest(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static unsubscribeWhenNotificationsAreDisabled(Z)V
    .locals 2

    .line 688
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    const-string v1, "unsubscribeWhenNotificationsAreDisabled()"

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->shouldQueueTaskForInit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    sget-object v0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v1, "Waiting for remote params. Moving unsubscribeWhenNotificationsAreDisabled() operation to a pending task queue."

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->error(Ljava/lang/String;)V

    .line 691
    sget-object v0, Lcom/onesignal/OneSignal;->taskRemoteController:Lcom/onesignal/OSTaskRemoteController;

    new-instance v1, Lcom/onesignal/OneSignal$3;

    invoke-direct {v1, p0}, Lcom/onesignal/OneSignal$3;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSTaskRemoteController;->addTaskToQueue(Ljava/lang/Runnable;)V

    return-void

    .line 702
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParamController()Lcom/onesignal/OSRemoteParamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->hasUnsubscribeNotificationKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    sget-object p0, Lcom/onesignal/OneSignal;->logger:Lcom/onesignal/OSLogger;

    const-string v0, "unsubscribeWhenNotificationsAreDisabled already called by remote params!, ignoring user set"

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->warning(Ljava/lang/String;)V

    return-void

    .line 707
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getRemoteParamController()Lcom/onesignal/OSRemoteParamController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSRemoteParamController;->saveUnsubscribeWhenNotificationsAreDisabled(Z)V

    return-void
.end method

.method static updateEmailIdDependents(Ljava/lang/String;)V
    .locals 2

    .line 2639
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveEmailId(Ljava/lang/String;)V

    .line 2640
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentEmailSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSEmailSubscriptionState;->setEmailUserId(Ljava/lang/String;)V

    .line 2642
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "parent_player_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    .line 2643
    invoke-static {p0}, Lcom/onesignal/OneSignalStateSynchronizer;->updatePushState(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2645
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static updateSMSIdDependents(Ljava/lang/String;)V
    .locals 1

    .line 2650
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveSMSId(Ljava/lang/String;)V

    .line 2651
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSMSSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSMSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSMSSubscriptionState;->setSMSUserId(Ljava/lang/String;)V

    return-void
.end method

.method static updateUserIdDependents(Ljava/lang/String;)V
    .locals 2

    .line 2625
    invoke-static {p0}, Lcom/onesignal/OneSignal;->saveUserId(Ljava/lang/String;)V

    .line 2626
    invoke-static {}, Lcom/onesignal/OneSignal;->internalFireGetTagsCallbacks()V

    .line 2628
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OneSignal;->getCurrentSubscriptionState(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onesignal/OSSubscriptionState;->setUserId(Ljava/lang/String;)V

    .line 2630
    sget-object p0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    if-eqz p0, :cond_0

    .line 2631
    iget-object p0, p0, Lcom/onesignal/OneSignal$IAPUpdateJob;->toReport:Lorg/json/JSONArray;

    sget-object v0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-boolean v0, v0, Lcom/onesignal/OneSignal$IAPUpdateJob;->newAsExisting:Z

    sget-object v1, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    iget-object v1, v1, Lcom/onesignal/OneSignal$IAPUpdateJob;->restResponseHandler:Lcom/onesignal/OneSignalRestClient$ResponseHandler;

    invoke-static {p0, v0, v1}, Lcom/onesignal/OneSignal;->sendPurchases(Lorg/json/JSONArray;ZLcom/onesignal/OneSignalRestClient$ResponseHandler;)V

    const/4 p0, 0x0

    .line 2632
    sput-object p0, Lcom/onesignal/OneSignal;->iapUpdateJob:Lcom/onesignal/OneSignal$IAPUpdateJob;

    .line 2635
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->refreshSecondaryChannelState()V

    return-void
.end method

.method public static userProvidedPrivacyConsent()Z
    .locals 1

    .line 956
    sget-object v0, Lcom/onesignal/OneSignal;->remoteParamController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->getSavedUserConsentStatus()Z

    move-result v0

    return v0
.end method
