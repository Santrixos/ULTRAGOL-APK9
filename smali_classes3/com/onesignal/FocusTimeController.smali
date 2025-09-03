.class Lcom/onesignal/FocusTimeController;
.super Ljava/lang/Object;
.source "FocusTimeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;,
        Lcom/onesignal/FocusTimeController$FocusTimeProcessorAttributed;,
        Lcom/onesignal/FocusTimeController$FocusTimeProcessorUnattributed;,
        Lcom/onesignal/FocusTimeController$FocusEventType;
    }
.end annotation


# instance fields
.field private logger:Lcom/onesignal/OSLogger;

.field private processorFactory:Lcom/onesignal/OSFocusTimeProcessorFactory;

.field private timeFocusedAtMs:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/onesignal/OSFocusTimeProcessorFactory;Lcom/onesignal/OSLogger;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/onesignal/FocusTimeController;->processorFactory:Lcom/onesignal/OSFocusTimeProcessorFactory;

    .line 41
    iput-object p2, p0, Lcom/onesignal/FocusTimeController;->logger:Lcom/onesignal/OSLogger;

    return-void
.end method

.method private getTimeFocusedElapsed()Ljava/lang/Long;
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 98
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getTime()Lcom/onesignal/OSTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/OSTime;->getElapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-long v2, v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const-wide/32 v4, 0x15180

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method private giveProcessorsValidFocusTime(Ljava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;",
            "Lcom/onesignal/FocusTimeController$FocusEventType;",
            ")Z"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController;->getTimeFocusedElapsed()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/onesignal/FocusTimeController;->processorFactory:Lcom/onesignal/OSFocusTimeProcessorFactory;

    invoke-virtual {v1, p1}, Lcom/onesignal/OSFocusTimeProcessorFactory;->getTimeProcessorWithInfluences(Ljava/util/List;)Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p1, p2}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->access$400(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;JLjava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method appBackgrounded()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application backgrounded focus time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->processorFactory:Lcom/onesignal/OSFocusTimeProcessorFactory;

    invoke-virtual {v0}, Lcom/onesignal/OSFocusTimeProcessorFactory;->getTimeProcessorSaved()Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->access$100(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    return-void
.end method

.method appForegrounded()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/onesignal/OneSignal;->getTime()Lcom/onesignal/OSTime;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/OSTime;->getElapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    .line 46
    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Application foregrounded focus time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method appStopped()V
    .locals 5

    .line 50
    invoke-direct {p0}, Lcom/onesignal/FocusTimeController;->getTimeFocusedElapsed()Ljava/lang/Long;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/onesignal/FocusTimeController;->logger:Lcom/onesignal/OSLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application stopped focus time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/onesignal/FocusTimeController;->timeFocusedAtMs:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " timeElapsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->getSessionManager()Lcom/onesignal/OSSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/OSSessionManager;->getSessionInfluences()Ljava/util/List;

    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/onesignal/FocusTimeController;->processorFactory:Lcom/onesignal/OSFocusTimeProcessorFactory;

    invoke-virtual {v2, v1}, Lcom/onesignal/OSFocusTimeProcessorFactory;->getTimeProcessorWithInfluences(Ljava/util/List;)Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v1}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->access$000(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;JLjava/util/List;)V

    return-void
.end method

.method doBlockingBackgroundSyncOfUnsentTime()V
    .locals 1

    .line 67
    invoke-static {}, Lcom/onesignal/OneSignal;->isInForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/onesignal/FocusTimeController;->processorFactory:Lcom/onesignal/OSFocusTimeProcessorFactory;

    invoke-virtual {v0}, Lcom/onesignal/OSFocusTimeProcessorFactory;->getTimeProcessorSaved()Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    move-result-object v0

    invoke-static {v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->access$200(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;)V

    return-void
.end method

.method onSessionEnded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/onesignal/FocusTimeController$FocusEventType;->END_SESSION:Lcom/onesignal/FocusTimeController$FocusEventType;

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/onesignal/FocusTimeController;->giveProcessorsValidFocusTime(Ljava/util/List;Lcom/onesignal/FocusTimeController$FocusEventType;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/onesignal/FocusTimeController;->processorFactory:Lcom/onesignal/OSFocusTimeProcessorFactory;

    invoke-virtual {v1, p1}, Lcom/onesignal/OSFocusTimeProcessorFactory;->getTimeProcessorWithInfluences(Ljava/util/List;)Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;->access$300(Lcom/onesignal/FocusTimeController$FocusTimeProcessorBase;Lcom/onesignal/FocusTimeController$FocusEventType;)V

    :cond_0
    return-void
.end method
