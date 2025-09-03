.class public Lcom/onesignal/OSDeviceState;
.super Ljava/lang/Object;
.source "OSDeviceState.java"


# instance fields
.field private final areNotificationsEnabled:Z

.field private final emailAddress:Ljava/lang/String;

.field private final emailSubscribed:Z

.field private final emailUserId:Ljava/lang/String;

.field private final pushDisabled:Z

.field private final pushToken:Ljava/lang/String;

.field private final smsNumber:Ljava/lang/String;

.field private final smsSubscribed:Z

.field private final smsUserId:Ljava/lang/String;

.field private final subscribed:Z

.field private final userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OSSubscriptionState;Lcom/onesignal/OSPermissionState;Lcom/onesignal/OSEmailSubscriptionState;Lcom/onesignal/OSSMSSubscriptionState;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p2}, Lcom/onesignal/OSPermissionState;->areNotificationsEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/onesignal/OSDeviceState;->areNotificationsEnabled:Z

    .line 49
    invoke-virtual {p1}, Lcom/onesignal/OSSubscriptionState;->isPushDisabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/onesignal/OSDeviceState;->pushDisabled:Z

    .line 50
    invoke-virtual {p1}, Lcom/onesignal/OSSubscriptionState;->isSubscribed()Z

    move-result p2

    iput-boolean p2, p0, Lcom/onesignal/OSDeviceState;->subscribed:Z

    .line 51
    invoke-virtual {p1}, Lcom/onesignal/OSSubscriptionState;->getUserId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/onesignal/OSDeviceState;->userId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/onesignal/OSSubscriptionState;->getPushToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSDeviceState;->pushToken:Ljava/lang/String;

    .line 53
    invoke-virtual {p3}, Lcom/onesignal/OSEmailSubscriptionState;->getEmailUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSDeviceState;->emailUserId:Ljava/lang/String;

    .line 54
    invoke-virtual {p3}, Lcom/onesignal/OSEmailSubscriptionState;->getEmailAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSDeviceState;->emailAddress:Ljava/lang/String;

    .line 55
    invoke-virtual {p3}, Lcom/onesignal/OSEmailSubscriptionState;->isSubscribed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSDeviceState;->emailSubscribed:Z

    .line 56
    invoke-virtual {p4}, Lcom/onesignal/OSSMSSubscriptionState;->getSmsUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSDeviceState;->smsUserId:Ljava/lang/String;

    .line 57
    invoke-virtual {p4}, Lcom/onesignal/OSSMSSubscriptionState;->getSMSNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/OSDeviceState;->smsNumber:Ljava/lang/String;

    .line 58
    invoke-virtual {p4}, Lcom/onesignal/OSSMSSubscriptionState;->isSubscribed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/onesignal/OSDeviceState;->smsSubscribed:Z

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/onesignal/OSDeviceState;->areNotificationsEnabled:Z

    return v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/onesignal/OSDeviceState;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailUserId()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/onesignal/OSDeviceState;->emailUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/onesignal/OSDeviceState;->pushToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSMSNumber()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/onesignal/OSDeviceState;->smsNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSMSUserId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/onesignal/OSDeviceState;->smsUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/onesignal/OSDeviceState;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailSubscribed()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/onesignal/OSDeviceState;->emailSubscribed:Z

    return v0
.end method

.method public isPushDisabled()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/onesignal/OSDeviceState;->pushDisabled:Z

    return v0
.end method

.method public isSMSSubscribed()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/onesignal/OSDeviceState;->smsSubscribed:Z

    return v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/onesignal/OSDeviceState;->subscribed:Z

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 146
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "areNotificationsEnabled"

    .line 149
    iget-boolean v2, p0, Lcom/onesignal/OSDeviceState;->areNotificationsEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isPushDisabled"

    .line 150
    iget-boolean v2, p0, Lcom/onesignal/OSDeviceState;->pushDisabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "isSubscribed"

    .line 151
    iget-boolean v2, p0, Lcom/onesignal/OSDeviceState;->subscribed:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "userId"

    .line 152
    iget-object v2, p0, Lcom/onesignal/OSDeviceState;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pushToken"

    .line 153
    iget-object v2, p0, Lcom/onesignal/OSDeviceState;->pushToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isEmailSubscribed"

    .line 154
    iget-boolean v2, p0, Lcom/onesignal/OSDeviceState;->emailSubscribed:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "emailUserId"

    .line 155
    iget-object v2, p0, Lcom/onesignal/OSDeviceState;->emailUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "emailAddress"

    .line 156
    iget-object v2, p0, Lcom/onesignal/OSDeviceState;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isSMSSubscribed"

    .line 157
    iget-boolean v2, p0, Lcom/onesignal/OSDeviceState;->smsSubscribed:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "smsUserId"

    .line 158
    iget-object v2, p0, Lcom/onesignal/OSDeviceState;->smsUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "smsNumber"

    .line 159
    iget-object v2, p0, Lcom/onesignal/OSDeviceState;->smsNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method
