.class public Lcom/startapp/networkTest/results/BaseResult;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public GUID:Ljava/lang/String;

.field public ProjectId:Ljava/lang/String;

.field public Version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "20220530140220"

    .line 12
    iput-object v0, p0, Lcom/startapp/networkTest/results/BaseResult;->Version:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/startapp/networkTest/results/BaseResult;->ProjectId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/startapp/networkTest/results/BaseResult;->GUID:Ljava/lang/String;

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
