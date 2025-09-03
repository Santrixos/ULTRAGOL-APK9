.class Lcom/onesignal/OSTaskController;
.super Ljava/lang/Object;
.source "OSTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/OSTaskController$PendingTaskRunnable;
    }
.end annotation


# static fields
.field static final OS_PENDING_EXECUTOR:Ljava/lang/String; = "OS_PENDING_EXECUTOR_"


# instance fields
.field private final lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final logger:Lcom/onesignal/OSLogger;

.field private pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

.field private final taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/onesignal/OSLogger;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSTaskController;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/onesignal/OSTaskController;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 26
    iput-object p1, p0, Lcom/onesignal/OSTaskController;->logger:Lcom/onesignal/OSLogger;

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/OSTaskController;J)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/onesignal/OSTaskController;->onTaskRan(J)V

    return-void
.end method

.method private addTaskToQueue(Lcom/onesignal/OSTaskController$PendingTaskRunnable;)V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/onesignal/OSTaskController$PendingTaskRunnable;->access$002(Lcom/onesignal/OSTaskController$PendingTaskRunnable;J)J

    .line 54
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding a task to the pending queue with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/onesignal/OSTaskController$PendingTaskRunnable;->access$000(Lcom/onesignal/OSTaskController$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->logger:Lcom/onesignal/OSLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executor is still running, add to the executor with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/onesignal/OSTaskController$PendingTaskRunnable;->access$000(Lcom/onesignal/OSTaskController$PendingTaskRunnable;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/onesignal/OSTaskController;->logger:Lcom/onesignal/OSLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executor is shutdown, running task manually with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/onesignal/OSTaskController$PendingTaskRunnable;->access$000(Lcom/onesignal/OSTaskController$PendingTaskRunnable;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/onesignal/OSLogger;->info(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/onesignal/OSTaskController$PendingTaskRunnable;->run()V

    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onTaskRan(J)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->lastTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 99
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->INFO:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Last Pending Task has ran, shutting down"

    invoke-static {p1, p2}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method


# virtual methods
.method addTaskToQueue(Ljava/lang/Runnable;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/onesignal/OSTaskController$PendingTaskRunnable;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/OSTaskController$PendingTaskRunnable;-><init>(Lcom/onesignal/OSTaskController;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/onesignal/OSTaskController;->addTaskToQueue(Lcom/onesignal/OSTaskController$PendingTaskRunnable;)V

    return-void
.end method

.method getTaskQueueWaitingForInit()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method shouldRunTaskThroughQueue()Z
    .locals 2

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OS_PENDING_EXECUTOR_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 34
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->isInitDone()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    return v1

    .line 40
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->isInitDone()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    return v1

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method shutdownNow()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method startPendingTasks()V
    .locals 3

    .line 80
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPendingTasks with task queue quantity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/OSTaskController;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/onesignal/OSTaskController$1;

    invoke-direct {v0, p0}, Lcom/onesignal/OSTaskController$1;-><init>(Lcom/onesignal/OSTaskController;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/onesignal/OSTaskController;->pendingTaskExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/onesignal/OSTaskController;->taskQueueWaitingForInit:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method
