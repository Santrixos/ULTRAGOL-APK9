.class Lcom/onesignal/OSNotificationDataController$5;
.super Lcom/onesignal/BackgroundRunnable;
.source "OSNotificationDataController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSNotificationDataController;->isDuplicateNotification(Ljava/lang/String;Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSNotificationDataController;

.field final synthetic val$callback:Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OSNotificationDataController;Ljava/lang/String;Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/onesignal/OSNotificationDataController$5;->this$0:Lcom/onesignal/OSNotificationDataController;

    iput-object p2, p0, Lcom/onesignal/OSNotificationDataController$5;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/onesignal/OSNotificationDataController$5;->val$callback:Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;

    invoke-direct {p0}, Lcom/onesignal/BackgroundRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 220
    invoke-super {p0}, Lcom/onesignal/BackgroundRunnable;->run()V

    const-string v0, "notification_id"

    .line 223
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/onesignal/OSNotificationDataController$5;->val$id:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v5, v9

    .line 226
    iget-object v1, p0, Lcom/onesignal/OSNotificationDataController$5;->this$0:Lcom/onesignal/OSNotificationDataController;

    invoke-static {v1}, Lcom/onesignal/OSNotificationDataController;->access$000(Lcom/onesignal/OSNotificationDataController;)Lcom/onesignal/OneSignalDbHelper;

    move-result-object v1

    const-string v2, "notification"

    const-string v4, "notification_id = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/onesignal/OneSignalDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    .line 235
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/onesignal/OSNotificationDataController$5;->this$0:Lcom/onesignal/OSNotificationDataController;

    invoke-static {v1}, Lcom/onesignal/OSNotificationDataController;->access$100(Lcom/onesignal/OSNotificationDataController;)Lcom/onesignal/OSLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification notValidOrDuplicated with id duplicated, duplicate FCM message received, skip processing of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/OSNotificationDataController$5;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/onesignal/OSNotificationDataController$5;->val$callback:Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;

    invoke-interface {v1, v0}, Lcom/onesignal/OSNotificationDataController$InvalidOrDuplicateNotificationCallback;->onResult(Z)V

    return-void
.end method
