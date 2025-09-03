.class public final synthetic Lcom/app/thestream/notification/NotificationServiceExtension$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/app/NotificationCompat$Extender;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/notification/NotificationServiceExtension$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final extend(Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 1

    iget-object v0, p0, Lcom/app/thestream/notification/NotificationServiceExtension$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/app/thestream/notification/NotificationServiceExtension;->lambda$remoteNotificationReceived$0(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    return-object p1
.end method
