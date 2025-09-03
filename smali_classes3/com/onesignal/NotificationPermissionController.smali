.class public final Lcom/onesignal/NotificationPermissionController;
.super Ljava/lang/Object;
.source "NotificationPermissionController.kt"

# interfaces
.implements Lcom/onesignal/PermissionsActivity$PermissionCallback;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationPermissionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationPermissionController.kt\ncom/onesignal/NotificationPermissionController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,121:1\n1819#2,2:122\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationPermissionController.kt\ncom/onesignal/NotificationPermissionController\n*L\n111#1,2:122\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\nH\u0002J\u0008\u0010\u0010\u001a\u00020\nH\u0002J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\u0006\u0010\u0012\u001a\u00020\u000eJ\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\nH\u0016J\u0018\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0008J\u0008\u0010\u0017\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onesignal/NotificationPermissionController;",
        "Lcom/onesignal/PermissionsActivity$PermissionCallback;",
        "()V",
        "ANDROID_PERMISSION_STRING",
        "",
        "PERMISSION_TYPE",
        "callbacks",
        "",
        "Lcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;",
        "supportsNativePrompt",
        "",
        "getSupportsNativePrompt",
        "()Z",
        "fireCallBacks",
        "",
        "accepted",
        "notificationsEnabled",
        "onAccept",
        "onAppForegrounded",
        "onReject",
        "fallbackToSettings",
        "prompt",
        "callback",
        "showFallbackAlertDialog",
        "onesignal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final ANDROID_PERMISSION_STRING:Ljava/lang/String; = "android.permission.POST_NOTIFICATIONS"

.field public static final INSTANCE:Lcom/onesignal/NotificationPermissionController;

.field private static final PERMISSION_TYPE:Ljava/lang/String; = "NOTIFICATION"

.field private static final callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final supportsNativePrompt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/onesignal/NotificationPermissionController;

    invoke-direct {v0}, Lcom/onesignal/NotificationPermissionController;-><init>()V

    sput-object v0, Lcom/onesignal/NotificationPermissionController;->INSTANCE:Lcom/onesignal/NotificationPermissionController;

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    sput-object v1, Lcom/onesignal/NotificationPermissionController;->callbacks:Ljava/util/Set;

    .line 41
    check-cast v0, Lcom/onesignal/PermissionsActivity$PermissionCallback;

    const-string v1, "NOTIFICATION"

    invoke-static {v1, v0}, Lcom/onesignal/PermissionsActivity;->registerAsCallback(Ljava/lang/String;Lcom/onesignal/PermissionsActivity$PermissionCallback;)V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/onesignal/NotificationPermissionController;->supportsNativePrompt:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$fireCallBacks(Lcom/onesignal/NotificationPermissionController;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/onesignal/NotificationPermissionController;->fireCallBacks(Z)V

    return-void
.end method

.method private final fireCallBacks(Z)V
    .locals 2

    .line 111
    sget-object v0, Lcom/onesignal/NotificationPermissionController;->callbacks:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .line 122
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;

    .line 111
    invoke-interface {v1, p1}, Lcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;->response(Z)V

    goto :goto_0

    .line 112
    :cond_0
    sget-object p1, Lcom/onesignal/NotificationPermissionController;->callbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private final notificationsEnabled()Z
    .locals 1

    .line 119
    sget-object v0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private final showFallbackAlertDialog()Z
    .locals 5

    .line 92
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "OneSignal.getCurrentActivity() ?: return false"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/onesignal/AlertDialogPrepromptForAndroidSettings;->INSTANCE:Lcom/onesignal/AlertDialogPrepromptForAndroidSettings;

    .line 95
    sget v2, Lcom/onesignal/R$string;->notification_permission_name_for_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activity.getString(R.str\u2026ermission_name_for_title)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget v3, Lcom/onesignal/R$string;->notification_permission_settings_message:I

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity.getString(R.str\u2026mission_settings_message)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v4, Lcom/onesignal/NotificationPermissionController$showFallbackAlertDialog$1;

    invoke-direct {v4, v0}, Lcom/onesignal/NotificationPermissionController$showFallbackAlertDialog$1;-><init>(Landroid/app/Activity;)V

    check-cast v4, Lcom/onesignal/AlertDialogPrepromptForAndroidSettings$Callback;

    .line 93
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/onesignal/AlertDialogPrepromptForAndroidSettings;->show(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/AlertDialogPrepromptForAndroidSettings$Callback;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getSupportsNativePrompt()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/onesignal/NotificationPermissionController;->supportsNativePrompt:Z

    return v0
.end method

.method public onAccept()V
    .locals 1

    .line 77
    invoke-static {}, Lcom/onesignal/OneSignal;->refreshNotificationPermissionState()V

    const/4 v0, 0x1

    .line 78
    invoke-direct {p0, v0}, Lcom/onesignal/NotificationPermissionController;->fireCallBacks(Z)V

    return-void
.end method

.method public final onAppForegrounded()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/onesignal/NotificationPermissionController;->notificationsEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/onesignal/NotificationPermissionController;->fireCallBacks(Z)V

    return-void
.end method

.method public onReject(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/onesignal/NotificationPermissionController;->showFallbackAlertDialog()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 87
    invoke-direct {p0, v0}, Lcom/onesignal/NotificationPermissionController;->fireCallBacks(Z)V

    :cond_1
    return-void
.end method

.method public final prompt(ZLcom/onesignal/OneSignal$PromptForPushNotificationPermissionResponseHandler;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 53
    sget-object v0, Lcom/onesignal/NotificationPermissionController;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/onesignal/NotificationPermissionController;->notificationsEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    .line 56
    invoke-direct {p0, p1}, Lcom/onesignal/NotificationPermissionController;->fireCallBacks(Z)V

    return-void

    .line 60
    :cond_1
    sget-boolean p2, Lcom/onesignal/NotificationPermissionController;->supportsNativePrompt:Z

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    .line 62
    invoke-direct {p0}, Lcom/onesignal/NotificationPermissionController;->showFallbackAlertDialog()Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/onesignal/NotificationPermissionController;->fireCallBacks(Z)V

    :goto_0
    return-void

    .line 72
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "NOTIFICATION"

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 68
    invoke-static {p1, v0, v1, p2}, Lcom/onesignal/PermissionsActivity;->startPrompt(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
