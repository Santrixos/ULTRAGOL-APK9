.class Lcom/onesignal/OSTaskRemoteController;
.super Lcom/onesignal/OSTaskController;
.source "OSTaskRemoteController.java"


# static fields
.field static final APP_LOST_FOCUS:Ljava/lang/String; = "onAppLostFocus()"

.field static final CLEAR_NOTIFICATIONS:Ljava/lang/String; = "clearOneSignalNotifications()"

.field static final GET_TAGS:Ljava/lang/String; = "getTags()"

.field static final HANDLE_NOTIFICATION_OPEN:Ljava/lang/String; = "handleNotificationOpen()"

.field static final IDS_AVAILABLE:Ljava/lang/String; = "idsAvailable()"

.field static final LOGOUT_EMAIL:Ljava/lang/String; = "logoutEmail()"

.field static final LOGOUT_SMS_NUMBER:Ljava/lang/String; = "logoutSMSNumber()"

.field static final METHODS_AVAILABLE_FOR_DELAY:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PAUSE_IN_APP_MESSAGES:Ljava/lang/String; = "pauseInAppMessages()"

.field static final PROMPT_LOCATION:Ljava/lang/String; = "promptLocation()"

.field static final REMOVE_GROUPED_NOTIFICATIONS:Ljava/lang/String; = "removeGroupedNotifications()"

.field static final REMOVE_NOTIFICATION:Ljava/lang/String; = "removeNotification()"

.field static final SEND_OUTCOME:Ljava/lang/String; = "sendOutcome()"

.field static final SEND_OUTCOME_WITH_VALUE:Ljava/lang/String; = "sendOutcomeWithValue()"

.field static final SEND_TAG:Ljava/lang/String; = "sendTag()"

.field static final SEND_TAGS:Ljava/lang/String; = "sendTags()"

.field static final SEND_UNIQUE_OUTCOME:Ljava/lang/String; = "sendUniqueOutcome()"

.field static final SET_DISABLE_GMS_MISSING_PROMPT:Ljava/lang/String; = "setDisableGMSMissingPrompt()"

.field static final SET_EMAIL:Ljava/lang/String; = "setEmail()"

.field static final SET_EXTERNAL_USER_ID:Ljava/lang/String; = "setExternalUserId()"

.field static final SET_IN_APP_MESSAGE_LIFECYCLE_HANDLER:Ljava/lang/String; = "setInAppMessageLifecycleHandler()"

.field static final SET_LANGUAGE:Ljava/lang/String; = "setLanguage()"

.field static final SET_LOCATION_SHARED:Ljava/lang/String; = "setLocationShared()"

.field static final SET_REQUIRES_USER_PRIVACY_CONSENT:Ljava/lang/String; = "setRequiresUserPrivacyConsent()"

.field static final SET_SMS_NUMBER:Ljava/lang/String; = "setSMSNumber()"

.field static final SET_SUBSCRIPTION:Ljava/lang/String; = "setSubscription()"

.field static final SYNC_HASHED_EMAIL:Ljava/lang/String; = "syncHashedEmail()"

.field static final UNSUBSCRIBE_WHEN_NOTIFICATION_ARE_DISABLED:Ljava/lang/String; = "unsubscribeWhenNotificationsAreDisabled()"


# instance fields
.field private final paramController:Lcom/onesignal/OSRemoteParamController;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "getTags()"

    const-string v2, "setSMSNumber()"

    const-string v3, "setEmail()"

    const-string v4, "logoutSMSNumber()"

    const-string v5, "logoutEmail()"

    const-string v6, "syncHashedEmail()"

    const-string v7, "setExternalUserId()"

    const-string v8, "setLanguage()"

    const-string v9, "setSubscription()"

    const-string v10, "promptLocation()"

    const-string v11, "idsAvailable()"

    const-string v12, "sendTag()"

    const-string v13, "sendTags()"

    const-string v14, "setLocationShared()"

    const-string v15, "setDisableGMSMissingPrompt()"

    const-string v16, "setRequiresUserPrivacyConsent()"

    const-string v17, "unsubscribeWhenNotificationsAreDisabled()"

    const-string v18, "handleNotificationOpen()"

    const-string v19, "onAppLostFocus()"

    const-string v20, "sendOutcome()"

    const-string v21, "sendUniqueOutcome()"

    const-string v22, "sendOutcomeWithValue()"

    const-string v23, "removeGroupedNotifications()"

    const-string v24, "removeNotification()"

    const-string v25, "clearOneSignalNotifications()"

    filled-new-array/range {v1 .. v25}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/onesignal/OSTaskRemoteController;->METHODS_AVAILABLE_FOR_DELAY:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/onesignal/OSRemoteParamController;Lcom/onesignal/OSLogger;)V
    .locals 0

    .line 67
    invoke-direct {p0, p2}, Lcom/onesignal/OSTaskController;-><init>(Lcom/onesignal/OSLogger;)V

    .line 68
    iput-object p1, p0, Lcom/onesignal/OSTaskRemoteController;->paramController:Lcom/onesignal/OSRemoteParamController;

    return-void
.end method


# virtual methods
.method shouldQueueTaskForInit(Ljava/lang/String;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/onesignal/OSTaskRemoteController;->paramController:Lcom/onesignal/OSRemoteParamController;

    invoke-virtual {v0}, Lcom/onesignal/OSRemoteParamController;->isRemoteParamsCallDone()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/onesignal/OSTaskRemoteController;->METHODS_AVAILABLE_FOR_DELAY:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
