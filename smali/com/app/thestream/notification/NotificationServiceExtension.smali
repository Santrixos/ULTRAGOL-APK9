.class public Lcom/app/thestream/notification/NotificationServiceExtension;
.super Ljava/lang/Object;
.source "NotificationServiceExtension.java"

# interfaces
.implements Lcom/onesignal/OneSignal$OSRemoteNotificationReceivedHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$remoteNotificationReceived$0(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f060053

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public remoteNotificationReceived(Landroid/content/Context;Lcom/onesignal/OSNotificationReceivedEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "notificationReceivedEvent"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OSRemoteNotificationReceivedHandler fired! with OSNotificationReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p2}, Lcom/onesignal/OSNotificationReceivedEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2}, Lcom/onesignal/OSNotificationReceivedEvent;->getNotification()Lcom/onesignal/OSNotification;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/onesignal/OSNotification;->getActionButtons()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v0}, Lcom/onesignal/OSNotification;->getActionButtons()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/OSNotification$ActionButton;

    .line 23
    sget-object v3, Lcom/onesignal/OneSignal$LOG_LEVEL;->VERBOSE:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActionButton: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {v0}, Lcom/onesignal/OSNotification;->mutableCopy()Lcom/onesignal/OSMutableNotification;

    move-result-object v0

    .line 28
    new-instance v1, Lcom/app/thestream/notification/NotificationServiceExtension$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/app/thestream/notification/NotificationServiceExtension$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/OSMutableNotification;->setExtender(Landroidx/core/app/NotificationCompat$Extender;)V

    .line 31
    invoke-virtual {p2, v0}, Lcom/onesignal/OSNotificationReceivedEvent;->complete(Lcom/onesignal/OSNotification;)V

    return-void
.end method
