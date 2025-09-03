.class Lcom/startapp/networkTest/threads/ThreadManager$1;
.super Ljava/util/concurrent/LinkedTransferQueue;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/networkTest/threads/ThreadManager;->a(IIJLjava/lang/String;)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/LinkedTransferQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/LinkedTransferQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedTransferQueue;->tryTransfer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/startapp/networkTest/threads/ThreadManager$1;->a(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method
