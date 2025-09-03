.class public Lcom/startapp/sdk/ads/video/VideoAdDetails;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6315a202f78faedfL


# instance fields
.field private adVerifications:[Lcom/startapp/sdk/omsdk/VerificationDetails;
    .annotation runtime Lcom/startapp/ob;
        type = Lcom/startapp/sdk/omsdk/VerificationDetails;
    .end annotation
.end field

.field private clickUrl:Ljava/lang/String;

.field private clickable:Z

.field private closeable:Z

.field private isVideoMuted:Z

.field private localVideoPath:Ljava/lang/String;

.field private postRoll:Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;
    .annotation runtime Lcom/startapp/ob;
        type = Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;
    .end annotation
.end field

.field private postRollClickThroughUrl:Ljava/lang/String;

.field private postRollHtml:Ljava/lang/String;

.field private skippable:Z

.field private skippableAfter:J

.field private videoTrackingDetails:Lcom/startapp/sdk/ads/video/tracking/VideoTrackingDetails;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/startapp/yb;Lcom/startapp/sdk/adsbase/VideoConfig;Z)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/startapp/sdk/ads/video/tracking/VideoTrackingDetails;

    invoke-direct {v0, p1}, Lcom/startapp/sdk/ads/video/tracking/VideoTrackingDetails;-><init>(Lcom/startapp/yb;)V

    iput-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->videoTrackingDetails:Lcom/startapp/sdk/ads/video/tracking/VideoTrackingDetails;

    .line 4
    invoke-virtual {p1}, Lcom/startapp/yb;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->videoUrl:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/startapp/yb;->o()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long p2, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/startapp/sdk/adsbase/VideoConfig;->m()J

    move-result-wide p2

    :goto_0
    iput-wide p2, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->skippableAfter:J

    .line 10
    iput-boolean v1, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->skippable:Z

    goto :goto_1

    .line 12
    :cond_1
    iput-boolean v2, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->skippable:Z

    .line 15
    :goto_1
    invoke-virtual {p1}, Lcom/startapp/yb;->c()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->clickUrl:Ljava/lang/String;

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 16
    :goto_2
    iput-boolean v1, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->clickable:Z

    .line 17
    sget-object p2, Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;

    iput-object p2, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRoll:Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;

    .line 19
    invoke-virtual {p1}, Lcom/startapp/yb;->f()Lcom/startapp/sdk/ads/video/vast/a;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 21
    invoke-virtual {p2}, Lcom/startapp/sdk/ads/video/vast/a;->c()Lcom/startapp/sdk/ads/video/vast/VASTResource;

    move-result-object p3

    invoke-virtual {p3}, Lcom/startapp/sdk/ads/video/vast/VASTResource;->a()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRollHtml:Ljava/lang/String;

    .line 22
    invoke-virtual {p2}, Lcom/startapp/sdk/ads/video/vast/a;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRollClickThroughUrl:Ljava/lang/String;

    .line 25
    :cond_3
    invoke-virtual {p1}, Lcom/startapp/yb;->b()Ljava/util/List;

    move-result-object p1

    new-array p2, v2, [Lcom/startapp/sdk/omsdk/VerificationDetails;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/startapp/sdk/omsdk/VerificationDetails;

    .line 26
    new-instance p2, Lcom/startapp/sdk/omsdk/AdVerification;

    invoke-direct {p2, p1}, Lcom/startapp/sdk/omsdk/AdVerification;-><init>([Lcom/startapp/sdk/omsdk/VerificationDetails;)V

    invoke-virtual {p0, p2}, Lcom/startapp/sdk/ads/video/VideoAdDetails;->a(Lcom/startapp/sdk/omsdk/AdVerification;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/startapp/sdk/omsdk/AdVerification;
    .locals 2

    .line 3
    new-instance v0, Lcom/startapp/sdk/omsdk/AdVerification;

    iget-object v1, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->adVerifications:[Lcom/startapp/sdk/omsdk/VerificationDetails;

    invoke-direct {v0, v1}, Lcom/startapp/sdk/omsdk/AdVerification;-><init>([Lcom/startapp/sdk/omsdk/VerificationDetails;)V

    return-object v0
.end method

.method public a(Lcom/startapp/sdk/omsdk/AdVerification;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Lcom/startapp/sdk/omsdk/AdVerification;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/startapp/sdk/omsdk/AdVerification;->a()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/startapp/sdk/omsdk/VerificationDetails;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/startapp/sdk/omsdk/VerificationDetails;

    iput-object p1, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->adVerifications:[Lcom/startapp/sdk/omsdk/VerificationDetails;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->localVideoPath:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->isVideoMuted:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->localVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRollHtml:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRollClickThroughUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->clickUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRollHtml:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRoll:Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;

    return-object v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->skippableAfter:J

    return-wide v0
.end method

.method public h()Lcom/startapp/sdk/ads/video/tracking/VideoTrackingDetails;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->videoTrackingDetails:Lcom/startapp/sdk/ads/video/tracking/VideoTrackingDetails;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRoll:Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;

    sget-object v1, Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;->NONE:Lcom/startapp/sdk/ads/video/VideoAdDetails$PostRollType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->postRollHtml:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->clickable:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->closeable:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->skippable:Z

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->isVideoMuted:Z

    return v0
.end method

.method public o()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->skippableAfter:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/sdk/ads/video/VideoAdDetails;->skippableAfter:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
