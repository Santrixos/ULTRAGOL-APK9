.class Lcom/onesignal/OneSignalRemoteParams$2;
.super Lcom/onesignal/OneSignalRemoteParams$Params;
.source "OneSignalRemoteParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignalRemoteParams;->processJson(Ljava/lang/String;Lcom/onesignal/OneSignalRemoteParams$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$responseJson:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 5

    .line 179
    iput-object p1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->val$responseJson:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/onesignal/OneSignalRemoteParams$Params;-><init>()V

    const-string v0, "enterp"

    const/4 v1, 0x0

    .line 180
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->enterprise:Z

    const-string v0, "require_email_auth"

    .line 181
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->useEmailAuth:Z

    const-string v0, "require_user_id_auth"

    .line 182
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->useUserIdAuth:Z

    const-string v0, "chnl_lst"

    .line 183
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->notificationChannels:Lorg/json/JSONArray;

    const-string v0, "fba"

    .line 184
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->firebaseAnalytics:Z

    const-string v0, "restore_ttl_filter"

    const/4 v2, 0x1

    .line 185
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->restoreTTLFilter:Z

    const-string v0, "android_sender_id"

    const/4 v3, 0x0

    .line 186
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->googleProjectNumber:Ljava/lang/String;

    const-string v0, "clear_group_on_summary_click"

    .line 187
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->clearGroupOnSummaryClick:Z

    const-string v0, "receive_receipts_enable"

    .line 188
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->receiveReceiptEnabled:Z

    const-string v0, "disable_gms_missing_prompt"

    .line 192
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->disableGMSMissingPrompt:Ljava/lang/Boolean;

    const-string v0, "unsubscribe_on_notifications_disabled"

    .line 193
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->unsubscribeWhenNotificationsDisabled:Ljava/lang/Boolean;

    const-string v0, "location_shared"

    .line 194
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v3

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->locationShared:Ljava/lang/Boolean;

    const-string v0, "requires_user_privacy_consent"

    .line 195
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->requiresUserPrivacyConsent:Ljava/lang/Boolean;

    .line 197
    new-instance v0, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    invoke-direct {v0}, Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    const-string v0, "outcomes"

    .line 199
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/OneSignalRemoteParams$2;->influenceParams:Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;

    invoke-static {v0, v1}, Lcom/onesignal/OneSignalRemoteParams;->access$200(Lorg/json/JSONObject;Lcom/onesignal/OneSignalRemoteParams$InfluenceParams;)V

    .line 202
    :cond_4
    new-instance v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    invoke-direct {v0}, Lcom/onesignal/OneSignalRemoteParams$FCMParams;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v0, "fcm"

    .line 203
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "api_key"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->apiKey:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "app_id"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->appId:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/onesignal/OneSignalRemoteParams$2;->fcmParams:Lcom/onesignal/OneSignalRemoteParams$FCMParams;

    const-string v1, "project_id"

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/onesignal/OneSignalRemoteParams$FCMParams;->projectId:Ljava/lang/String;

    :cond_5
    return-void
.end method
