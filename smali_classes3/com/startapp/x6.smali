.class public Lcom/startapp/x6;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public DurationDNS:J

.field public HostFile:Ljava/lang/String;

.field public ServerIp:Ljava/lang/String;

.field public Try:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/startapp/x6;->HostFile:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/startapp/x6;->ServerIp:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 26
    iput-wide v0, p0, Lcom/startapp/x6;->DurationDNS:J

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
