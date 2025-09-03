.class public Lcom/app/thestream/callbacks/CallbackUser;
.super Ljava/lang/Object;
.source "CallbackUser.java"


# instance fields
.field public response:Lcom/app/thestream/models/User;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 7
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackUser;->status:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackUser;->response:Lcom/app/thestream/models/User;

    return-void
.end method
