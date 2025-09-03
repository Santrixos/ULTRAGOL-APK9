.class public Lcom/startapp/networkTest/utils/LteFrequencyUtil;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapp/networkTest/utils/LteFrequencyUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Lcom/startapp/d6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startapp/networkTest/utils/LteFrequencyUtil$1;

    invoke-direct {v0}, Lcom/startapp/networkTest/utils/LteFrequencyUtil$1;-><init>()V

    sput-object v0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->h:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(IFFFFFF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    .line 19
    new-instance v0, Lcom/startapp/d6;

    invoke-direct {v0}, Lcom/startapp/d6;-><init>()V

    iput-object v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    .line 20
    iput p1, v0, Lcom/startapp/d6;->band:I

    .line 22
    iput p5, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a:F

    .line 23
    iput p7, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->b:F

    .line 24
    iput p2, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->d:F

    .line 25
    iput p4, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->e:F

    .line 26
    iput p6, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->c:F

    .line 27
    iput p3, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->f:F

    return-void
.end method

.method public synthetic constructor <init>(IFFFFFFLcom/startapp/networkTest/utils/LteFrequencyUtil$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;-><init>(IFFFFFF)V

    return-void
.end method

.method private a(FI)F
    .locals 4

    if-ltz p2, :cond_0

    int-to-double v0, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 11
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    long-to-float p2, v0

    mul-float p1, p1, p2

    .line 13
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p1

    long-to-float p1, v0

    div-float/2addr p1, p2

    return p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static a(I)Lcom/startapp/d6;
    .locals 5

    .line 1
    sget-object v0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/startapp/networkTest/utils/LteFrequencyUtil;

    .line 4
    invoke-direct {v2, p0}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-direct {v2, p0}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->c(I)Lcom/startapp/networkTest/utils/LteFrequencyUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    goto :goto_0

    :cond_1
    if-lez p0, :cond_0

    int-to-long v3, p0

    .line 8
    invoke-direct {v2, v3, v4}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-direct {v2, p0}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->d(I)Lcom/startapp/networkTest/utils/LteFrequencyUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private a(J)Z
    .locals 0

    long-to-float p1, p1

    .line 10
    iget p2, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->c:F

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->b:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(I)Z
    .locals 1

    int-to-float p1, p1

    .line 1
    iget v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->f:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->e:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(I)Lcom/startapp/networkTest/utils/LteFrequencyUtil;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    iget v1, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->d:F

    int-to-float v2, p1

    iget v3, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->f:F

    sub-float v3, v2, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    add-float/2addr v3, v1

    iput v3, v0, Lcom/startapp/d6;->download_frequency:F

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v3, v1}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a(FI)F

    move-result v3

    iput v3, v0, Lcom/startapp/d6;->download_frequency:F

    .line 3
    iget-object v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    iput p1, v0, Lcom/startapp/d6;->download_earfcn:I

    .line 5
    iget p1, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a:F

    const/4 v3, 0x0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    iget v4, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->c:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_1

    .line 6
    :cond_0
    iget v3, v0, Lcom/startapp/d6;->download_frequency:F

    iget v4, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->d:F

    sub-float/2addr v3, v4

    add-float/2addr v3, p1

    iput v3, v0, Lcom/startapp/d6;->upload_frequency:F

    .line 7
    invoke-direct {p0, v3, v1}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a(FI)F

    move-result p1

    iput p1, v0, Lcom/startapp/d6;->upload_frequency:F

    .line 8
    iget-object p1, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    iget v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->c:F

    iget v1, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->f:F

    sub-float/2addr v2, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p1, Lcom/startapp/d6;->upload_earfcn:I

    :cond_1
    return-object p0
.end method

.method private d(I)Lcom/startapp/networkTest/utils/LteFrequencyUtil;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    iget v1, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a:F

    int-to-float v2, p1

    iget v3, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->c:F

    sub-float v3, v2, v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    add-float/2addr v3, v1

    iput v3, v0, Lcom/startapp/d6;->upload_frequency:F

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v3, v1}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a(FI)F

    move-result v3

    iput v3, v0, Lcom/startapp/d6;->upload_frequency:F

    .line 3
    iget-object v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    iput p1, v0, Lcom/startapp/d6;->upload_earfcn:I

    .line 5
    iget p1, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->d:F

    iget v3, v0, Lcom/startapp/d6;->upload_frequency:F

    iget v4, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a:F

    sub-float/2addr v3, v4

    add-float/2addr v3, p1

    iput v3, v0, Lcom/startapp/d6;->download_frequency:F

    .line 6
    invoke-direct {p0, v3, v1}, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->a(FI)F

    move-result p1

    iput p1, v0, Lcom/startapp/d6;->download_frequency:F

    .line 7
    iget-object p1, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->g:Lcom/startapp/d6;

    iget v0, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->f:F

    iget v1, p0, Lcom/startapp/networkTest/utils/LteFrequencyUtil;->c:F

    sub-float/2addr v2, v1

    add-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p1, Lcom/startapp/d6;->download_earfcn:I

    return-object p0
.end method
