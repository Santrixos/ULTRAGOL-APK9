.class public Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adTag:Ljava/lang/String;

.field private clientSessionId:Ljava/lang/String;

.field private nonImpressionReason:Ljava/lang/String;

.field private offset:I

.field private profileId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->adTag:Ljava/lang/String;

    .line 4
    sget-object p1, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    sget-object p1, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    invoke-virtual {p1}, Lcom/startapp/t9;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->clientSessionId:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->t()Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->D()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->profileId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->offset:I

    return-void
.end method


# virtual methods
.method public a(I)Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;
    .locals 0

    .line 2
    iput p1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->offset:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->nonImpressionReason:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->adTag:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->offset:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->offset:I

    if-lez v0, :cond_0

    const-string v0, "&offset="

    .line 2
    invoke-static {v0}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->adTag:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->adTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc8

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->adTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :cond_0
    const-string v1, "&adTag="

    .line 4
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->adTag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/startapp/wb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 7
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->clientSessionId:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "&clientSessionId="

    .line 9
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->clientSessionId:Ljava/lang/String;

    invoke-static {v3}, Lcom/startapp/wb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 12
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "&profileId="

    .line 14
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->profileId:Ljava/lang/String;

    invoke-static {v3}, Lcom/startapp/wb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 17
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->nonImpressionReason:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "&isShown=false&reason="

    .line 20
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;->nonImpressionReason:Ljava/lang/String;

    invoke-static {v2}, Lcom/startapp/wb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
