.class Lcom/onesignal/OSInAppMessageController$2;
.super Lcom/onesignal/BackgroundRunnable;
.source "OSInAppMessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OSInAppMessageController;->initRedisplayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/OSInAppMessageController;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessageController;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/onesignal/OSInAppMessageController$2;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-direct {p0}, Lcom/onesignal/BackgroundRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 143
    invoke-super {p0}, Lcom/onesignal/BackgroundRunnable;->run()V

    .line 145
    invoke-static {}, Lcom/onesignal/OSInAppMessageController;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$2;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {v1}, Lcom/onesignal/OSInAppMessageController;->access$200(Lcom/onesignal/OSInAppMessageController;)Lcom/onesignal/OSInAppMessageRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/OSInAppMessageRepository;->getCachedInAppMessages()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OSInAppMessageController;->access$102(Lcom/onesignal/OSInAppMessageController;Ljava/util/List;)Ljava/util/List;

    .line 147
    iget-object v1, p0, Lcom/onesignal/OSInAppMessageController$2;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {v1}, Lcom/onesignal/OSInAppMessageController;->access$300(Lcom/onesignal/OSInAppMessageController;)Lcom/onesignal/OSLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved IAMs from DB redisplayedInAppMessages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/OSInAppMessageController$2;->this$0:Lcom/onesignal/OSInAppMessageController;

    invoke-static {v3}, Lcom/onesignal/OSInAppMessageController;->access$100(Lcom/onesignal/OSInAppMessageController;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
