.class public Lcom/app/thestream/models/StreamingLink;
.super Ljava/lang/Object;
.source "StreamingLink.java"


# instance fields
.field private id:Ljava/lang/String;

.field private matchId:Ljava/lang/String;

.field private streamUrl:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private streamerName:Ljava/lang/String;

.field private timestamp:Ljava/util/Date;

.field private isActive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/app/thestream/models/StreamingLink;->matchId:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/app/thestream/models/StreamingLink;->streamUrl:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/app/thestream/models/StreamingLink;->platform:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/app/thestream/models/StreamingLink;->streamerName:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/models/StreamingLink;->timestamp:Ljava/util/Date;

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/app/thestream/models/StreamingLink;->isActive:Z

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/app/thestream/models/StreamingLink;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/app/thestream/models/StreamingLink;->id:Ljava/lang/String;

    return-void
.end method

.method public getMatchId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/app/thestream/models/StreamingLink;->matchId:Ljava/lang/String;

    return-object v0
.end method

.method public setMatchId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/app/thestream/models/StreamingLink;->matchId:Ljava/lang/String;

    return-void
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/app/thestream/models/StreamingLink;->streamUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setStreamUrl(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/app/thestream/models/StreamingLink;->streamUrl:Ljava/lang/String;

    return-void
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/app/thestream/models/StreamingLink;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/app/thestream/models/StreamingLink;->platform:Ljava/lang/String;

    return-void
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/app/thestream/models/StreamingLink;->streamerName:Ljava/lang/String;

    return-object v0
.end method

.method public setStreamerName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/app/thestream/models/StreamingLink;->streamerName:Ljava/lang/String;

    return-void
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/app/thestream/models/StreamingLink;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setTimestamp(Ljava/util/Date;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/app/thestream/models/StreamingLink;->timestamp:Ljava/util/Date;

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/app/thestream/models/StreamingLink;->isActive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/app/thestream/models/StreamingLink;->isActive:Z

    return-void
.end method