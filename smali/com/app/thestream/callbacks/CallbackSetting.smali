.class public Lcom/app/thestream/callbacks/CallbackSetting;
.super Ljava/lang/Object;
.source "CallbackSetting.java"


# instance fields
.field public post:Lcom/app/thestream/models/Settings;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackSetting;->post:Lcom/app/thestream/models/Settings;

    return-void
.end method
