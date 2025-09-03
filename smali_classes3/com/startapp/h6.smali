.class public Lcom/startapp/h6;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public MemoryFree:J

.field public MemoryState:Lcom/startapp/networkTest/enums/MemoryStates;

.field public MemoryTotal:J

.field public MemoryUsed:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lcom/startapp/networkTest/enums/MemoryStates;->a:Lcom/startapp/networkTest/enums/MemoryStates;

    iput-object v0, p0, Lcom/startapp/h6;->MemoryState:Lcom/startapp/networkTest/enums/MemoryStates;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
