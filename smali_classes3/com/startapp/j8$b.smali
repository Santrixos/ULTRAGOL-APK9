.class public Lcom/startapp/j8$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/j8;->f()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Lcom/startapp/networkTest/data/radio/CellInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/j8;


# direct methods
.method public constructor <init>(Lcom/startapp/j8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/j8$b;->a:Lcom/startapp/j8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Lcom/startapp/networkTest/data/radio/CellInfo;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/j8$b;->a:Lcom/startapp/j8;

    invoke-virtual {v0}, Lcom/startapp/j8;->c()[Lcom/startapp/networkTest/data/radio/CellInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/startapp/networkTest/data/radio/CellInfo;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startapp/j8$b;->a()[Lcom/startapp/networkTest/data/radio/CellInfo;

    move-result-object v0

    return-object v0
.end method
