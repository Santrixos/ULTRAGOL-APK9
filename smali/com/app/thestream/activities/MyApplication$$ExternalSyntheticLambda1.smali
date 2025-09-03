.class public final synthetic Lcom/app/thestream/activities/MyApplication$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/onesignal/OneSignal$OSNotificationOpenedHandler;


# instance fields
.field public final synthetic f$0:Lcom/app/thestream/activities/MyApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/app/thestream/activities/MyApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/activities/MyApplication$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/activities/MyApplication;

    return-void
.end method


# virtual methods
.method public final notificationOpened(Lcom/onesignal/OSNotificationOpenedResult;)V
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/activities/MyApplication$$ExternalSyntheticLambda1;->f$0:Lcom/app/thestream/activities/MyApplication;

    invoke-virtual {v0, p1}, Lcom/app/thestream/activities/MyApplication;->lambda$initNotification$0$com-app-thestream-activities-MyApplication(Lcom/onesignal/OSNotificationOpenedResult;)V

    return-void
.end method
