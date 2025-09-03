.class public final Lcom/onesignal/LocationPermissionController$showFallbackAlertDialog$1;
.super Ljava/lang/Object;
.source "LocationPermissionController.kt"

# interfaces
.implements Lcom/onesignal/AlertDialogPrepromptForAndroidSettings$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/LocationPermissionController;->showFallbackAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/onesignal/LocationPermissionController$showFallbackAlertDialog$1",
        "Lcom/onesignal/AlertDialogPrepromptForAndroidSettings$Callback;",
        "onAccept",
        "",
        "onDecline",
        "onesignal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/onesignal/LocationPermissionController$showFallbackAlertDialog$1;->$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccept()V
    .locals 2

    .line 75
    sget-object v0, Lcom/onesignal/NavigateToAndroidSettingsForLocation;->INSTANCE:Lcom/onesignal/NavigateToAndroidSettingsForLocation;

    iget-object v1, p0, Lcom/onesignal/LocationPermissionController$showFallbackAlertDialog$1;->$activity:Landroid/app/Activity;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/onesignal/NavigateToAndroidSettingsForLocation;->show(Landroid/content/Context;)V

    .line 78
    sget-object v0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_DENIED:Lcom/onesignal/OneSignal$PromptActionResult;

    const/4 v1, 0x1

    .line 76
    invoke-static {v1, v0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    return-void
.end method

.method public onDecline()V
    .locals 2

    .line 84
    sget-object v0, Lcom/onesignal/OneSignal$PromptActionResult;->PERMISSION_DENIED:Lcom/onesignal/OneSignal$PromptActionResult;

    const/4 v1, 0x1

    .line 82
    invoke-static {v1, v0}, Lcom/onesignal/LocationController;->sendAndClearPromptHandlers(ZLcom/onesignal/OneSignal$PromptActionResult;)V

    return-void
.end method
