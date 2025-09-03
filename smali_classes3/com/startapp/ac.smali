.class public Lcom/startapp/ac;
.super Ljava/lang/Object;
.source "Sta"


# instance fields
.field private admtag:Ljava/lang/String;

.field private campaign_id:Ljava/lang/String;

.field private partnerName:Ljava/lang/String;

.field private partnerResponse:Ljava/lang/String;

.field private recordHops:Z

.field private skipFailed:Z

.field private ttl_sec:Ljava/lang/String;

.field private vasttag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdmTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/ac;->admtag:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/ac;->campaign_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/ac;->partnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerResponse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/ac;->partnerResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getTtlSec()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/ac;->ttl_sec:Ljava/lang/String;

    return-object v0
.end method

.method public getVastTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/ac;->vasttag:Ljava/lang/String;

    return-object v0
.end method

.method public isRecordHops()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/ac;->recordHops:Z

    return v0
.end method

.method public isSkipFailed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/ac;->skipFailed:Z

    return v0
.end method
