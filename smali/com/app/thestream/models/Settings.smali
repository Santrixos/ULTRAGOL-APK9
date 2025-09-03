.class public Lcom/app/thestream/models/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public fcm_notification_topic:Ljava/lang/String;

.field public more_apps_url:Ljava/lang/String;

.field public onesignal_app_id:Ljava/lang/String;

.field public privacy_policy:Ljava/lang/String;

.field public youtube_api_key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 8
    iput-object v0, p0, Lcom/app/thestream/models/Settings;->youtube_api_key:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/app/thestream/models/Settings;->fcm_notification_topic:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/app/thestream/models/Settings;->onesignal_app_id:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/app/thestream/models/Settings;->more_apps_url:Ljava/lang/String;

    return-void
.end method
