.class public Lcom/app/thestream/callbacks/CallbackAds;
.super Ljava/lang/Object;
.source "CallbackAds.java"


# instance fields
.field public ads:Lcom/app/thestream/models/Ads;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/app/thestream/callbacks/CallbackAds;->ads:Lcom/app/thestream/models/Ads;

    return-void
.end method
