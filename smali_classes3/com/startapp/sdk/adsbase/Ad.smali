.class public abstract Lcom/startapp/sdk/adsbase/Ad;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/adsbase/Ad$AdType;,
        Lcom/startapp/sdk/adsbase/Ad$AdState;
    }
.end annotation


# static fields
.field public static b:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public transient a:Landroid/content/Context;

.field public activityExtra:Lcom/startapp/sdk/adsbase/ActivityExtra;

.field public adCacheTtl:Ljava/lang/Long;

.field private adInfoOverride:Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;

.field public belowMinCPM:Z

.field public consentData:Lcom/startapp/sdk/adsbase/consent/ConsentData;

.field public errorMessage:Ljava/lang/String;

.field public extraData:Ljava/io/Serializable;

.field private lastLoadTime:Ljava/lang/Long;

.field private notDisplayedReason:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

.field public placement:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

.field private state:Lcom/startapp/sdk/adsbase/Ad$AdState;

.field private type:Lcom/startapp/sdk/adsbase/Ad$AdType;

.field private videoCancelCallBack:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->extraData:Ljava/io/Serializable;

    .line 10
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->adCacheTtl:Ljava/lang/Long;

    .line 12
    sget-object v1, Lcom/startapp/sdk/adsbase/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/sdk/adsbase/Ad$AdState;

    iput-object v1, p0, Lcom/startapp/sdk/adsbase/Ad;->state:Lcom/startapp/sdk/adsbase/Ad$AdState;

    .line 15
    iput-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->lastLoadTime:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/startapp/sdk/adsbase/Ad;->belowMinCPM:Z

    .line 23
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/startapp/sdk/adsbase/Ad;->placement:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    .line 25
    sget-object p1, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 26
    invoke-static {}, Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;->a()Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;

    move-result-object p1

    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->adInfoOverride:Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;

    return-void
.end method

.method public static a(Lcom/startapp/sdk/adsbase/Ad;Ljava/lang/Long;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->lastLoadTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a(Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->notDisplayedReason:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-void
.end method

.method public abstract a(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/startapp/sdk/adsbase/Ad;->videoCancelCallBack:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/Ad;->videoCancelCallBack:Z

    return v0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->lastLoadTime:Ljava/lang/Long;

    return-object v0
.end method

.method public c()Ljava/lang/Long;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/Ad;->e()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/startapp/sdk/adsbase/Ad;->adCacheTtl:Ljava/lang/Long;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->lastLoadTime:Ljava/lang/Long;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->lastLoadTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/Ad;->c()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public e()J
    .locals 2

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a:Lcom/startapp/sdk/adsbase/cache/CacheMetaData;

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/cache/CacheMetaData;->a()Lcom/startapp/sdk/adsbase/cache/ACMConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/cache/ACMConfig;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->placement:Lcom/startapp/sdk/adsbase/model/AdPreferences$Placement;

    return-object v0
.end method

.method public abstract getAdId()Ljava/lang/String;
.end method

.method public getAdInfoOverride()Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->adInfoOverride:Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;

    return-object v0
.end method

.method public abstract getBidToken()Ljava/lang/String;
.end method

.method public final getConsentData()Lcom/startapp/sdk/adsbase/consent/ConsentData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->consentData:Lcom/startapp/sdk/adsbase/consent/ConsentData;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/io/Serializable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->extraData:Ljava/io/Serializable;

    return-object v0
.end method

.method public getNotDisplayedReason()Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->notDisplayedReason:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0
.end method

.method public getState()Lcom/startapp/sdk/adsbase/Ad$AdState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->state:Lcom/startapp/sdk/adsbase/Ad$AdState;

    return-object v0
.end method

.method public getType()Lcom/startapp/sdk/adsbase/Ad$AdType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    return-object v0
.end method

.method public isBelowMinCPM()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/adsbase/Ad;->belowMinCPM:Z

    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/adsbase/Ad;->state:Lcom/startapp/sdk/adsbase/Ad$AdState;

    sget-object v1, Lcom/startapp/sdk/adsbase/Ad$AdState;->READY:Lcom/startapp/sdk/adsbase/Ad$AdState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/startapp/sdk/adsbase/Ad;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/startapp/sdk/adsbase/Ad;->load(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    return-void
.end method

.method public load(Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lcom/startapp/sdk/adsbase/model/AdPreferences;

    invoke-direct {v0}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/startapp/sdk/adsbase/Ad;->load(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    return-void
.end method

.method public load(Lcom/startapp/sdk/adsbase/model/AdPreferences;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/startapp/sdk/adsbase/Ad;->load(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    return-void
.end method

.method public load(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/startapp/sdk/adsbase/Ad;->load(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Z)Z

    return-void
.end method

.method public load(Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Z)Z
    .locals 9

    .line 5
    new-instance v0, Lcom/startapp/sdk/adsbase/Ad$a;

    invoke-direct {v0, p0, p2}, Lcom/startapp/sdk/adsbase/Ad$a;-><init>(Lcom/startapp/sdk/adsbase/Ad;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    .line 39
    sget-boolean p2, Lcom/startapp/sdk/adsbase/Ad;->b:Z

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 40
    iget-object p2, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/startapp/sdk/adsbase/SimpleTokenUtils;->f(Landroid/content/Context;)V

    .line 41
    sput-boolean v1, Lcom/startapp/sdk/adsbase/Ad;->b:Z

    .line 47
    :cond_0
    iget-object p2, p0, Lcom/startapp/sdk/adsbase/Ad;->state:Lcom/startapp/sdk/adsbase/Ad$AdState;

    sget-object v2, Lcom/startapp/sdk/adsbase/Ad$AdState;->UN_INITIALIZED:Lcom/startapp/sdk/adsbase/Ad$AdState;

    const/4 v3, 0x0

    if-eq p2, v2, :cond_1

    const-string p2, "load() was already called."

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string p2, ""

    const/4 v2, 0x0

    .line 52
    :goto_0
    iget-object v4, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/startapp/wb;->g(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string p2, "network not available."

    const/4 v2, 0x1

    .line 55
    :cond_2
    sget-object v4, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 56
    invoke-virtual {v4}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->b()Z

    move-result v4

    if-nez v4, :cond_3

    const-string p2, "serving ads disabled"

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ad wasn\'t loaded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/startapp/sdk/adsbase/Ad;->setErrorMessage(Ljava/lang/String;)V

    .line 62
    iget-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    invoke-static {p1, v0, p0, v3}, Lcom/startapp/j;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;Lcom/startapp/sdk/adsbase/Ad;Z)V

    return v3

    .line 66
    :cond_4
    sget-object p2, Lcom/startapp/sdk/adsbase/Ad$AdState;->PROCESSING:Lcom/startapp/sdk/adsbase/Ad$AdState;

    invoke-virtual {p0, p2}, Lcom/startapp/sdk/adsbase/Ad;->setState(Lcom/startapp/sdk/adsbase/Ad$AdState;)V

    .line 69
    new-instance v7, Lcom/startapp/sdk/adsbase/Ad$b;

    invoke-direct {v7, p0, p1, v0}, Lcom/startapp/sdk/adsbase/Ad$b;-><init>(Lcom/startapp/sdk/adsbase/Ad;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    .line 82
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getType()Lcom/startapp/sdk/adsbase/Ad$AdType;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 83
    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/model/AdPreferences;->getType()Lcom/startapp/sdk/adsbase/Ad$AdType;

    move-result-object p2

    .line 84
    iput-object p2, p0, Lcom/startapp/sdk/adsbase/Ad;->type:Lcom/startapp/sdk/adsbase/Ad$AdType;

    .line 85
    :cond_5
    sget-object v2, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 86
    iget-object v3, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    sget-object p2, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    sget-object p2, Lcom/startapp/t9;->d:Lcom/startapp/t9;

    .line 87
    iget-object v5, p2, Lcom/startapp/t9;->c:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;

    const/4 v8, 0x0

    move-object v4, p1

    move v6, p3

    .line 88
    invoke-virtual/range {v2 .. v8}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->a(Landroid/content/Context;Lcom/startapp/sdk/adsbase/model/AdPreferences;Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataRequest$RequestReason;ZLcom/startapp/sdk/adsbase/remoteconfig/c;Z)V

    return v1
.end method

.method public setActivityExtra(Lcom/startapp/sdk/adsbase/ActivityExtra;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->activityExtra:Lcom/startapp/sdk/adsbase/ActivityExtra;

    return-void
.end method

.method public setAdInfoOverride(Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->adInfoOverride:Lcom/startapp/sdk/adsbase/adinformation/AdInformationOverrides;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->a:Landroid/content/Context;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setExtraData(Ljava/io/Serializable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->extraData:Ljava/io/Serializable;

    return-void
.end method

.method public setState(Lcom/startapp/sdk/adsbase/Ad$AdState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/adsbase/Ad;->state:Lcom/startapp/sdk/adsbase/Ad$AdState;

    return-void
.end method

.method public show()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
