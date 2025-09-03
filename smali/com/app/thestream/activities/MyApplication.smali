.class public Lcom/app/thestream/activities/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final TAG:Ljava/lang/String; = "MyApplication"

.field private static mInstance:Lcom/app/thestream/activities/MyApplication;


# instance fields
.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field private appOpenAdManager:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

.field private appOpenAdMob:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

.field big_picture:Ljava/lang/String;

.field currentActivity:Landroid/app/Activity;

.field link:Ljava/lang/String;

.field private final mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field message:Ljava/lang/String;

.field post_id:J

.field settings:Lcom/app/thestream/models/Settings;

.field title:Ljava/lang/String;

.field unique_id:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 44
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->message:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->big_picture:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->title:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->link:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 51
    iput-wide v0, p0, Lcom/app/thestream/activities/MyApplication;->post_id:J

    .line 52
    iput-wide v0, p0, Lcom/app/thestream/activities/MyApplication;->unique_id:J

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/app/thestream/activities/MyApplication;
    .locals 2

    const-class v0, Lcom/app/thestream/activities/MyApplication;

    monitor-enter v0

    .line 142
    :try_start_0
    sget-object v1, Lcom/app/thestream/activities/MyApplication;->mInstance:Lcom/app/thestream/activities/MyApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private requestConfig()V
    .locals 3

    const-string v0, "WVVoU01HTklUVFpNZVRscFkyMUdlVm95TVRSTWJVNTJZbE01ZEZwWVozbE1NakZzWlVkc2FtSXhPV2hqU0VKellWZE9hR1JIYkhaaWEyeHJXREpPZG1KVE5YUmFXR2h3V1RJNU1HUnBOVzFrV0ZKcFlqSjRiR0p1V25Ca2JUbG9XVzFzYkdOdVVtZz0="

    .line 112
    invoke-static {v0}, Lcom/app/thestream/utils/Tools;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_applicationId_"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 114
    aget-object v0, v0, v1

    const-string v1, "localhost"

    const-string v2, "192.168.1.4"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/MyApplication;->requestTopic(Ljava/lang/String;)V

    return-void
.end method

.method private requestTopic(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseUrl"
        }
    .end annotation

    .line 120
    invoke-static {p1}, Lcom/app/thestream/rests/RestAdapter;->createAPI(Ljava/lang/String;)Lcom/app/thestream/rests/ApiInterface;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const-string v1, "com.mexicotv.futbolenvivoabierta"

    const-string v2, "cda11bx8aITlKsXCpNB7yVLnOdEGqg342ZFrQzJRetkSoUMi9w"

    invoke-interface {p1, v1, v2}, Lcom/app/thestream/rests/ApiInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 122
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 123
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/app/thestream/activities/MyApplication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MyApplication$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/MyApplication;)V

    .line 124
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 121
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "base"
        }
    .end annotation

    .line 137
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 138
    invoke-static {p0}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public initNotification()V
    .locals 2

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Lcom/onesignal/OneSignal;->disablePush(Z)V

    const-string v0, "MyApplication"

    const-string v1, "OneSignal Notification is enabled"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->NONE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->setLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;Lcom/onesignal/OneSignal$LOG_LEVEL;)V

    .line 80
    invoke-static {p0}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0}, Lcom/app/thestream/activities/MyApplication;->requestConfig()V

    .line 83
    new-instance v0, Lcom/app/thestream/activities/MyApplication$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/MyApplication$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/MyApplication;)V

    invoke-static {v0}, Lcom/onesignal/OneSignal;->setNotificationOpenedHandler(Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;)V

    const/4 v0, 0x1

    .line 107
    invoke-static {v0}, Lcom/onesignal/OneSignal;->unsubscribeWhenNotificationsAreDisabled(Z)V

    return-void
.end method

.method synthetic lambda$initNotification$0$com-app-thestream-activities-MyApplication(Lcom/onesignal/OSNotificationOpenedResult;)V
    .locals 8

    const-string v0, "link"

    const-string v1, "post_id"

    const-string v2, "unique_id"

    .line 85
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/OSNotification;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/app/thestream/activities/MyApplication;->title:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/OSNotification;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/app/thestream/activities/MyApplication;->message:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/OSNotification;->getBigPicture()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/app/thestream/activities/MyApplication;->big_picture:Ljava/lang/String;

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/app/thestream/activities/MyApplication;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/app/thestream/activities/MyApplication;->message:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/app/thestream/activities/MyApplication;->big_picture:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "MyApplication"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_0
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/OSNotification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/app/thestream/activities/MyApplication;->unique_id:J

    .line 91
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onesignal/OSNotification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/app/thestream/activities/MyApplication;->post_id:J

    .line 92
    invoke-virtual {p1}, Lcom/onesignal/OSNotificationOpenedResult;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/OSNotification;->getAdditionalData()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/MyApplication;->link:Ljava/lang/String;

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lcom/app/thestream/activities/MyApplication;->post_id:J

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/app/thestream/activities/MyApplication;->unique_id:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/thestream/activities/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/app/thestream/activities/ActivitySplash;

    invoke-direct {p1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v3, 0x10008000

    .line 98
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    .line 99
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    iget-wide v3, p0, Lcom/app/thestream/activities/MyApplication;->unique_id:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 101
    iget-wide v2, p0, Lcom/app/thestream/activities/MyApplication;->post_id:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/app/thestream/activities/MyApplication;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/app/thestream/activities/MyApplication;->link:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/MyApplication;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$requestTopic$1$com-app-thestream-activities-MyApplication(Lcom/app/thestream/callbacks/CallbackConfig;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 125
    iget-object p2, p1, Lcom/app/thestream/callbacks/CallbackConfig;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 126
    iget-object p1, p1, Lcom/app/thestream/callbacks/CallbackConfig;->settings:Lcom/app/thestream/models/Settings;

    iput-object p1, p0, Lcom/app/thestream/activities/MyApplication;->settings:Lcom/app/thestream/models/Settings;

    .line 127
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    iget-object p2, p0, Lcom/app/thestream/activities/MyApplication;->settings:Lcom/app/thestream/models/Settings;

    iget-object p2, p2, Lcom/app/thestream/models/Settings;->fcm_notification_topic:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 128
    iget-object p1, p0, Lcom/app/thestream/activities/MyApplication;->settings:Lcom/app/thestream/models/Settings;

    iget-object p1, p1, Lcom/app/thestream/models/Settings;->onesignal_app_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/onesignal/OneSignal;->setAppId(Ljava/lang/String;)V

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FCM Subscribe topic : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/app/thestream/activities/MyApplication;->settings:Lcom/app/thestream/models/Settings;

    iget-object p2, p2, Lcom/app/thestream/models/Settings;->fcm_notification_topic:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyApplication"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OneSignal App ID : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->settings:Lcom/app/thestream/models/Settings;

    iget-object v0, v0, Lcom/app/thestream/models/Settings;->onesignal_app_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "savedInstanceState"
        }
    .end annotation

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "outState"
        }
    .end annotation

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "0"

    if-nez v1, :cond_1

    const-string v1, "google_ad_manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerAppOpenAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->appOpenAdManager:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    iget-boolean v0, v0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->isShowingAd:Z

    if-nez v0, :cond_2

    .line 186
    iput-object p1, p0, Lcom/app/thestream/activities/MyApplication;->currentActivity:Landroid/app/Activity;

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobAppOpenAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->appOpenAdMob:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    iget-boolean v0, v0, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;->isShowingAd:Z

    if-nez v0, :cond_2

    .line 179
    iput-object p1, p0, Lcom/app/thestream/activities/MyApplication;->currentActivity:Landroid/app/Activity;

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 62
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 63
    sput-object p0, Lcom/app/thestream/activities/MyApplication;->mInstance:Lcom/app/thestream/activities/MyApplication;

    .line 64
    invoke-virtual {p0, p0}, Lcom/app/thestream/activities/MyApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 65
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 66
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 67
    new-instance v0, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {v0, p0}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 68
    invoke-static {}, Landroidx/lifecycle/ProcessLifecycleOwner;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 69
    new-instance v0, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    invoke-direct {v0}, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->appOpenAdMob:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    .line 70
    new-instance v0, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    invoke-direct {v0}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/MyApplication;->appOpenAdManager:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    .line 71
    invoke-virtual {p0}, Lcom/app/thestream/activities/MyApplication;->initNotification()V

    return-void
.end method

.method protected onMoveToForeground()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "unique_id"

    const-string v3, "0"

    if-nez v1, :cond_1

    const-string v1, "google_ad_manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerAppOpenAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->appOpenAdManager:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    iget-object v1, p0, Lcom/app/thestream/activities/MyApplication;->currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v2}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerAppOpenAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobAppOpenAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->appOpenAdMob:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    iget-object v1, p0, Lcom/app/thestream/activities/MyApplication;->currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v2}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobAppOpenAdId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;->showAdIfAvailable(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showAdIfAvailable(Landroid/app/Activity;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "onShowAdCompleteListener"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "0"

    if-nez v1, :cond_1

    const-string v1, "google_ad_manager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerAppOpenAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->appOpenAdManager:Lcom/solodroid/ads/sdk/format/AppOpenAdManager;

    iget-object v1, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerAppOpenAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/solodroid/ads/sdk/format/AppOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;Ljava/lang/String;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;)V

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobAppOpenAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 220
    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication;->appOpenAdMob:Lcom/solodroid/ads/sdk/format/AppOpenAdMob;

    iget-object v1, p0, Lcom/app/thestream/activities/MyApplication;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobAppOpenAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/solodroid/ads/sdk/format/AppOpenAdMob;->showAdIfAvailable(Landroid/app/Activity;Ljava/lang/String;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;)V

    :cond_2
    :goto_0
    return-void
.end method
