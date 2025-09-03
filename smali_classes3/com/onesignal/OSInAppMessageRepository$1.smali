.class Lcom/onesignal/OSInAppMessageRepository$1;
.super Lorg/json/JSONObject;
.source "OSInAppMessageRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageRepository;->sendIAMClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/util/Set;Lcom/onesignal/OSInAppMessageRepository$OSInAppMessageRequestResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageRepository;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$clickId:Ljava/lang/String;

.field final synthetic val$deviceType:I

.field final synthetic val$isFirstClick:Z

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$variantId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageRepository;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageRepository$1;->this$0:Lcom/onesignal/OSInAppMessageRepository;

    iput-object p2, p0, Lcom/onesignal/OSInAppMessageRepository$1;->val$appId:Ljava/lang/String;

    iput p3, p0, Lcom/onesignal/OSInAppMessageRepository$1;->val$deviceType:I

    iput-object p4, p0, Lcom/onesignal/OSInAppMessageRepository$1;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lcom/onesignal/OSInAppMessageRepository$1;->val$clickId:Ljava/lang/String;

    iput-object p6, p0, Lcom/onesignal/OSInAppMessageRepository$1;->val$variantId:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/onesignal/OSInAppMessageRepository$1;->val$isFirstClick:Z

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "app_id"

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/onesignal/OSInAppMessageRepository$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device_type"

    .line 43
    invoke-virtual {p0, p1, p3}, Lcom/onesignal/OSInAppMessageRepository$1;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "player_id"

    .line 44
    invoke-virtual {p0, p1, p4}, Lcom/onesignal/OSInAppMessageRepository$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "click_id"

    .line 45
    invoke-virtual {p0, p1, p5}, Lcom/onesignal/OSInAppMessageRepository$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "variant_id"

    .line 46
    invoke-virtual {p0, p1, p6}, Lcom/onesignal/OSInAppMessageRepository$1;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p7, :cond_0

    const/4 p1, 0x1

    const-string p2, "first_click"

    .line 48
    invoke-virtual {p0, p2, p1}, Lcom/onesignal/OSInAppMessageRepository$1;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
