.class public Lcom/app/thestream/models/App;
.super Ljava/lang/Object;
.source "App.java"


# instance fields
.field public package_name:Ljava/lang/String;

.field public redirect_url:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/app/thestream/models/App;->package_name:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/app/thestream/models/App;->status:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/app/thestream/models/App;->redirect_url:Ljava/lang/String;

    return-void
.end method
