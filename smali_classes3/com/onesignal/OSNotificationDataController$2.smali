.class Lcom/onesignal/OSNotificationDataController$2;
.super Lcom/onesignal/BackgroundRunnable;
.source "OSNotificationDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSNotificationDataController;->clearOneSignalNotifications(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSNotificationDataController;

.field final synthetic val$weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/onesignal/OSNotificationDataController;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/onesignal/OSNotificationDataController$2;->this$0:Lcom/onesignal/OSNotificationDataController;

    iput-object p2, p0, Lcom/onesignal/OSNotificationDataController$2;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Lcom/onesignal/BackgroundRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 71
    invoke-super {p0}, Lcom/onesignal/BackgroundRunnable;->run()V

    .line 73
    iget-object v0, p0, Lcom/onesignal/OSNotificationDataController$2;->val$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-static {v0}, Lcom/onesignal/OneSignalNotificationManager;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "android_notification_id"

    .line 79
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    .line 81
    iget-object v3, p0, Lcom/onesignal/OSNotificationDataController$2;->this$0:Lcom/onesignal/OSNotificationDataController;

    invoke-static {v3}, Lcom/onesignal/OSNotificationDataController;->access$000(Lcom/onesignal/OSNotificationDataController;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "notification"

    const-string v6, "dismissed = 0 AND opened = 0"

    invoke-virtual/range {v3 .. v10}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 92
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    :cond_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 95
    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x1

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "dismissed"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    iget-object v2, p0, Lcom/onesignal/OSNotificationDataController$2;->this$0:Lcom/onesignal/OSNotificationDataController;

    invoke-static {v2}, Lcom/onesignal/OSNotificationDataController;->access$000(Lcom/onesignal/OSNotificationDataController;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "notification"

    const-string v6, "opened = 0"

    invoke-virtual {v2, v5, v1, v6, v4}, Lcom/onesignal/OneSignalDbHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 105
    invoke-static {v1, v0}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    .line 107
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void
.end method
