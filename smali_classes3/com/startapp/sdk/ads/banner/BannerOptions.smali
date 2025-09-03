.class public Lcom/startapp/sdk/ads/banner/BannerOptions;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5396a537700bee05L


# instance fields
.field private adsNumber:I

.field private checkCoverage:Z

.field private checkFocus:Z

.field private delayFaceTime:I

.field private effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;
    .annotation runtime Lcom/startapp/ob;
        type = Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;
    .end annotation
.end field

.field private height:I

.field private heightRatio:F

.field private htmlAdsNumber:I

.field private minScale:F

.field private minViewabilityPercentage:I

.field private refreshRate:I

.field private refreshRate3D:I

.field private rotateThroughOnStart:Z

.field private rotateThroughSpeedMult:I

.field private scalePower:I

.field private stepSize:I

.field private timeBetweenFrames:I

.field private width:I

.field private widthRatio:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 2
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    .line 4
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minViewabilityPercentage:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkFocus:Z

    .line 6
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkCoverage:Z

    const/16 v1, 0x19

    .line 9
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->timeBetweenFrames:I

    const/4 v1, 0x5

    .line 10
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->stepSize:I

    const/16 v1, 0x1388

    .line 11
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->delayFaceTime:I

    const/4 v1, 0x4

    .line 12
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->adsNumber:I

    const/16 v2, 0xa

    .line 13
    iput v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->htmlAdsNumber:I

    const v2, 0xea60

    .line 14
    iput v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate3D:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 17
    iput v3, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->widthRatio:F

    .line 18
    iput v3, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->heightRatio:F

    const v3, 0x3f6147ae    # 0.88f

    .line 19
    iput v3, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minScale:F

    .line 20
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->scalePower:I

    .line 21
    sget-object v1, Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    .line 23
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    const/4 v0, 0x2

    .line 24
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 27
    iput v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate:I

    return-void
.end method

.method public constructor <init>(Lcom/startapp/sdk/ads/banner/BannerOptions;)V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    .line 29
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    const/16 v0, 0x32

    .line 30
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    .line 31
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minViewabilityPercentage:I

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkFocus:Z

    .line 33
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkCoverage:Z

    const/16 v1, 0x19

    .line 36
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->timeBetweenFrames:I

    const/4 v1, 0x5

    .line 37
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->stepSize:I

    const/16 v1, 0x1388

    .line 38
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->delayFaceTime:I

    const/4 v1, 0x4

    .line 39
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->adsNumber:I

    const/16 v2, 0xa

    .line 40
    iput v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->htmlAdsNumber:I

    const v2, 0xea60

    .line 41
    iput v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate3D:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 44
    iput v3, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->widthRatio:F

    .line 45
    iput v3, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->heightRatio:F

    const v3, 0x3f6147ae    # 0.88f

    .line 46
    iput v3, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minScale:F

    .line 47
    iput v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->scalePower:I

    .line 48
    sget-object v1, Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;->ROTATE_3D:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    iput-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    .line 50
    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    const/4 v0, 0x2

    .line 51
    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 54
    iput v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate:I

    .line 61
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    .line 62
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    .line 63
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->timeBetweenFrames:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->timeBetweenFrames:I

    .line 64
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->stepSize:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->stepSize:I

    .line 65
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->delayFaceTime:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->delayFaceTime:I

    .line 66
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->adsNumber:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->adsNumber:I

    .line 67
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->htmlAdsNumber:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->htmlAdsNumber:I

    .line 68
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate3D:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate3D:I

    .line 69
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->widthRatio:F

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->widthRatio:F

    .line 70
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->heightRatio:F

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->heightRatio:F

    .line 71
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->minScale:F

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minScale:F

    .line 72
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->scalePower:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->scalePower:I

    .line 73
    iget-object v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    iput-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    .line 74
    iget-boolean v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    .line 75
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 76
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate:I

    .line 77
    iget v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->minViewabilityPercentage:I

    iput v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minViewabilityPercentage:I

    .line 78
    iget-boolean v0, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkFocus:Z

    iput-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkFocus:Z

    .line 79
    iget-boolean p1, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkCoverage:Z

    iput-boolean p1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkCoverage:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->adsNumber:I

    return v0
.end method

.method public a(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    .line 2
    iput p2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->delayFaceTime:I

    return v0
.end method

.method public c()Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    return v0
.end method

.method public e()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->heightRatio:F

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/startapp/sdk/ads/banner/BannerOptions;

    .line 3
    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minViewabilityPercentage:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->minViewabilityPercentage:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkFocus:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkFocus:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkCoverage:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkCoverage:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->timeBetweenFrames:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->timeBetweenFrames:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->stepSize:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->stepSize:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->delayFaceTime:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->delayFaceTime:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->adsNumber:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->adsNumber:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->htmlAdsNumber:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->htmlAdsNumber:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate3D:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate3D:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->widthRatio:F

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->widthRatio:F

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->heightRatio:F

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->heightRatio:F

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minScale:F

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->minScale:F

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->scalePower:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->scalePower:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    iget-boolean v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate:I

    iget v3, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    iget-object p1, p1, Lcom/startapp/sdk/ads/banner/BannerOptions;->effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->htmlAdsNumber:I

    return v0
.end method

.method public g()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minScale:F

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minViewabilityPercentage:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->height:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minViewabilityPercentage:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkFocus:Z

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkCoverage:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->timeBetweenFrames:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->stepSize:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->delayFaceTime:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->adsNumber:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->htmlAdsNumber:I

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate3D:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->widthRatio:F

    .line 13
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->heightRatio:F

    .line 14
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->minScale:F

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->scalePower:I

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->effect:Lcom/startapp/sdk/ads/banner/BannerOptions$Effect;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    .line 18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate:I

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 21
    sget-object v1, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 22
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->refreshRate3D:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughSpeedMult:I

    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->scalePower:I

    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->stepSize:I

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->timeBetweenFrames:I

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->width:I

    return v0
.end method

.method public p()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->widthRatio:F

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkCoverage:Z

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->checkFocus:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startapp/sdk/ads/banner/BannerOptions;->rotateThroughOnStart:Z

    return v0
.end method
