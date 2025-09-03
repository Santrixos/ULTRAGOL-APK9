.class public Lcom/startapp/h5;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field public AutonomousSystemNumber:Ljava/lang/String;

.field public AutonomousSystemOrganization:Ljava/lang/String;

.field public IpAddress:Ljava/lang/String;

.field public IspName:Ljava/lang/String;

.field public IspOrganizationalName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/startapp/h5;->IpAddress:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/startapp/h5;->IspName:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/startapp/h5;->IspOrganizationalName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/startapp/h5;->AutonomousSystemNumber:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/startapp/h5;->AutonomousSystemOrganization:Ljava/lang/String;

    return-void
.end method
