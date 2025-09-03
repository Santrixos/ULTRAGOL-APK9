.class public Lcom/onesignal/OSNotificationRestoreWorkManager$NotificationRestoreWorker;
.super Landroidx/work/Worker;
.source "OSNotificationRestoreWorkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSNotificationRestoreWorkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationRestoreWorker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/onesignal/OSNotificationRestoreWorkManager$NotificationRestoreWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 64
    invoke-static {v0}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;)V

    .line 66
    :cond_0
    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    .line 69
    :cond_1
    sget-boolean v1, Lcom/onesignal/OSNotificationRestoreWorkManager;->restored:Z

    if-eqz v1, :cond_2

    .line 70
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x1

    .line 71
    sput-boolean v1, Lcom/onesignal/OSNotificationRestoreWorkManager;->restored:Z

    .line 73
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v2, "Restoring notifications"

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lcom/onesignal/OneSignalDbHelper;->getInstance(Landroid/content/Context;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    .line 77
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    invoke-static {v0, v2}, Lcom/onesignal/OSNotificationRestoreWorkManager;->access$000(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 80
    invoke-static {v0, v1, v2}, Lcom/onesignal/OSNotificationRestoreWorkManager;->access$100(Landroid/content/Context;Lcom/onesignal/OneSignalDbHelper;Ljava/lang/StringBuilder;)V

    .line 82
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
