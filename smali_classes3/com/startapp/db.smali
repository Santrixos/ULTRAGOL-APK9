.class public Lcom/startapp/db;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public MobileRxBytes:J

.field public MobileTxBytes:J

.field public TotalRxBytes:J

.field public TotalTxBytes:J

.field public WifiRxBytes:J

.field public WifiTxBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
