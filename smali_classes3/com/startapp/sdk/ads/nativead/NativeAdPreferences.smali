.class public Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
.super Lcom/startapp/sdk/adsbase/model/AdPreferences;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x442027c3218ced34L


# instance fields
.field private adsNumber:I

.field private autoBitmapDownload:Z

.field private bitmapSize:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

.field private isContentAd:Z

.field private moreImage:I

.field private primaryImage:I

.field private useSimpleToken:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startapp/sdk/adsbase/model/AdPreferences;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->adsNumber:I

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    const/4 v2, -0x1

    .line 43
    iput v2, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->primaryImage:I

    .line 44
    iput v2, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->moreImage:I

    .line 45
    iput-boolean v1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->isContentAd:Z

    .line 46
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->useSimpleToken:Z

    return-void
.end method


# virtual methods
.method public getAdsNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->adsNumber:I

    return v0
.end method

.method public getImageSize()Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->bitmapSize:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-object v0
.end method

.method public getPrimaryImageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->primaryImage:I

    return v0
.end method

.method public getSecondaryImageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->moreImage:I

    return v0
.end method

.method public isAutoBitmapDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    return v0
.end method

.method public isContentAd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->isContentAd:Z

    return v0
.end method

.method public isSimpleToken()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->useSimpleToken:Z

    return v0
.end method

.method public setAdsNumber(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->adsNumber:I

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoBitmapDownload(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->autoBitmapDownload:Z

    return-object p0
.end method

.method public setContentAd(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->isContentAd:Z

    return-object p0
.end method

.method public setImageSize(Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->bitmapSize:Lcom/startapp/sdk/ads/nativead/NativeAdPreferences$NativeAdBitmapSize;

    return-object p0
.end method

.method public setPrimaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
    .locals 0

    .line 1
    iput p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->primaryImage:I

    return-object p0
.end method

.method public setSecondaryImageSize(I)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
    .locals 0

    .line 1
    iput p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->moreImage:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\n===== NativeAdConfig =====\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "    adsNumber: ["

    .line 3
    invoke-static {v1}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->getAdsNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    autoBitmapDownload: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->isAutoBitmapDownload()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    useSimpleToken: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->isSimpleToken()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "===== End NativeAdConfig ====="

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useSimpleToken(Z)Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startapp/sdk/ads/nativead/NativeAdPreferences;->useSimpleToken:Z

    return-object p0
.end method
