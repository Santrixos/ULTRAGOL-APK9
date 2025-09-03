.class public Lcom/app/thestream/callbacks/CallbackConfig;
.super Ljava/lang/Object;
.source "CallbackConfig.java"


# instance fields
.field public ads:Lcom/app/thestream/models/Ads;

.field public app:Lcom/app/thestream/models/App;

.field public settings:Lcom/app/thestream/models/Settings;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackConfig;->app:Lcom/app/thestream/models/App;

    .line 11
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackConfig;->settings:Lcom/app/thestream/models/Settings;

    .line 12
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackConfig;->ads:Lcom/app/thestream/models/Ads;

    return-void
.end method
