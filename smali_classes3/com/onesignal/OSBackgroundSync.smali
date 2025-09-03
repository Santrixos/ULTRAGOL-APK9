.class abstract Lcom/onesignal/OSBackgroundSync;
.super Ljava/lang/Object;
.source "OSBackgroundSync.java"


# static fields
.field protected static final LOCK:Ljava/lang/Object;


# instance fields
.field protected needsJobReschedule:Z

.field private syncBgThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/OSBackgroundSync;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/onesignal/OSBackgroundSync;->needsJobReschedule:Z

    return-void
.end method

.method private hasBootPermission(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 97
    invoke-static {p1, v0}, Lcom/onesignal/AndroidSupportV4Compat$ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isJobIdRunning(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "jobscheduler"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 106
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo;

    .line 107
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/onesignal/OSBackgroundSync;->getSyncTaskId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onesignal/OSBackgroundSync;->syncBgThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private scheduleSyncServiceAsAlarm(Landroid/content/Context;J)V
    .locals 3

    .line 152
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " scheduleServiceSyncTask:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/onesignal/OSBackgroundSync;->syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "alarm"

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 156
    invoke-static {}, Lcom/onesignal/OneSignal;->getTime()Lcom/onesignal/OSTime;

    move-result-object v1

    invoke-interface {v1}, Lcom/onesignal/OSTime;->getCurrentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    const/4 p2, 0x0

    .line 157
    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private scheduleSyncServiceAsJob(Landroid/content/Context;J)V
    .locals 5

    .line 116
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSBackgroundSync scheduleSyncServiceAsJob:atTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/onesignal/OSBackgroundSync;->isJobIdRunning(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 119
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "OSBackgroundSync scheduleSyncServiceAsJob Scheduler already running!"

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 122
    iput-boolean v1, p0, Lcom/onesignal/OSBackgroundSync;->needsJobReschedule:Z

    return-void

    .line 126
    :cond_0
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 127
    invoke-virtual {p0}, Lcom/onesignal/OSBackgroundSync;->getSyncTaskId()I

    move-result v2

    new-instance v3, Landroid/content/ComponentName;

    .line 128
    invoke-virtual {p0}, Lcom/onesignal/OSBackgroundSync;->getSyncServiceJobClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 132
    invoke-virtual {v0, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 133
    invoke-virtual {p2, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 135
    invoke-direct {p0, p1}, Lcom/onesignal/OSBackgroundSync;->hasBootPermission(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 136
    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    :cond_1
    const-string p2, "jobscheduler"

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 140
    :try_start_0
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    .line 141
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OSBackgroundSync scheduleSyncServiceAsJob:result: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    sget-object p2, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p3, "scheduleSyncServiceAsJob called JobScheduler.jobScheduler which triggered an internal null Android error. Skipping job."

    invoke-static {p2, p3, p1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/onesignal/OSBackgroundSync;->getSyncTaskId()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    .line 180
    invoke-virtual {p0}, Lcom/onesignal/OSBackgroundSync;->getSyncServicePendingIntentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0xc000000

    .line 177
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private static useJob()Z
    .locals 2

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected cancelBackgroundSyncTask(Landroid/content/Context;)V
    .locals 3

    .line 161
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cancel background sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 162
    sget-object v0, Lcom/onesignal/OSBackgroundSync;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    invoke-static {}, Lcom/onesignal/OSBackgroundSync;->useJob()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "jobscheduler"

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    .line 165
    invoke-virtual {p0}, Lcom/onesignal/OSBackgroundSync;->getSyncTaskId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_0

    :cond_0
    const-string v1, "alarm"

    .line 167
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 168
    invoke-direct {p0, p1}, Lcom/onesignal/OSBackgroundSync;->syncServicePendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 170
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method doBackgroundSync(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "OSBackground sync, calling initWithContext"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Lcom/onesignal/OneSignal;->initWithContext(Landroid/content/Context;)V

    .line 65
    new-instance p1, Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/onesignal/OSBackgroundSync;->getSyncTaskThreadId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onesignal/OSBackgroundSync;->syncBgThread:Ljava/lang/Thread;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected abstract getSyncServiceJobClass()Ljava/lang/Class;
.end method

.method protected abstract getSyncServicePendingIntentClass()Ljava/lang/Class;
.end method

.method protected abstract getSyncTaskId()I
.end method

.method protected abstract getSyncTaskThreadId()Ljava/lang/String;
.end method

.method protected scheduleBackgroundSyncTask(Landroid/content/Context;J)V
    .locals 2

    .line 88
    sget-object v0, Lcom/onesignal/OSBackgroundSync;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-static {}, Lcom/onesignal/OSBackgroundSync;->useJob()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/OSBackgroundSync;->scheduleSyncServiceAsJob(Landroid/content/Context;J)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/OSBackgroundSync;->scheduleSyncServiceAsAlarm(Landroid/content/Context;J)V

    .line 93
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract scheduleSyncTask(Landroid/content/Context;)V
.end method

.method stopSyncBgThread()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/onesignal/OSBackgroundSync;->syncBgThread:Ljava/lang/Thread;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/onesignal/OSBackgroundSync;->syncBgThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x1

    return v0
.end method
