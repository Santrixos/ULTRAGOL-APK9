.class public Lcom/startapp/sdk/omsdk/AdVerification;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adVerification:[Lcom/startapp/sdk/omsdk/VerificationDetails;
    .annotation runtime Lcom/startapp/ob;
        name = "adVerifications"
        type = Lcom/startapp/sdk/omsdk/VerificationDetails;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Lcom/startapp/sdk/omsdk/VerificationDetails;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/startapp/sdk/omsdk/AdVerification;->adVerification:[Lcom/startapp/sdk/omsdk/VerificationDetails;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startapp/sdk/omsdk/VerificationDetails;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/omsdk/AdVerification;->adVerification:[Lcom/startapp/sdk/omsdk/VerificationDetails;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
