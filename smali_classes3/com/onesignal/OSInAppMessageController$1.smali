.class Lcom/onesignal/OSInAppMessageController$1;
.super Ljava/util/ArrayList;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OSInAppMessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "android"

    .line 37
    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessageController$1;->add(Ljava/lang/Object;)Z

    const-string v0, "app"

    .line 38
    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessageController$1;->add(Ljava/lang/Object;)Z

    const-string v0, "all"

    .line 39
    invoke-virtual {p0, v0}, Lcom/onesignal/OSInAppMessageController$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
