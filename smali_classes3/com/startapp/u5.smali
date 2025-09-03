.class public Lcom/startapp/u5;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/sdk/ads/list3d/List3DView;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/list3d/List3DView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/u5;->a:Lcom/startapp/sdk/ads/list3d/List3DView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/startapp/u5;->a:Lcom/startapp/sdk/ads/list3d/List3DView;

    iget-object v1, v0, Lcom/startapp/sdk/ads/list3d/List3DView;->l:Lcom/startapp/u2;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v2, p0, Lcom/startapp/u5;->a:Lcom/startapp/sdk/ads/list3d/List3DView;

    invoke-virtual {v2, v0}, Lcom/startapp/sdk/ads/list3d/List3DView;->d(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Lcom/startapp/u5;->a:Lcom/startapp/sdk/ads/list3d/List3DView;

    iget v4, v3, Lcom/startapp/sdk/ads/list3d/List3DView;->g:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/startapp/sdk/ads/list3d/List3DView;->e:I

    .line 11
    iget-object v0, v3, Lcom/startapp/sdk/ads/list3d/List3DView;->l:Lcom/startapp/u2;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 12
    iget-wide v4, v0, Lcom/startapp/u2;->e:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    sub-long v4, v2, v4

    long-to-int v5, v4

    const/16 v4, 0x32

    if-le v5, v4, :cond_1

    const/16 v5, 0x32

    .line 18
    :cond_1
    move-object v4, v0

    check-cast v4, Lcom/startapp/y9;

    .line 19
    iget v6, v4, Lcom/startapp/u2;->b:F

    const/4 v7, 0x0

    .line 20
    iget v8, v4, Lcom/startapp/u2;->a:F

    iget v9, v4, Lcom/startapp/u2;->c:F

    cmpl-float v10, v8, v9

    if-lez v10, :cond_2

    goto :goto_0

    .line 22
    :cond_2
    iget v9, v4, Lcom/startapp/u2;->d:F

    cmpg-float v10, v8, v9

    if-gez v10, :cond_3

    :goto_0
    sub-float v7, v9, v8

    .line 23
    :cond_3
    iget v9, v4, Lcom/startapp/y9;->g:F

    mul-float v7, v7, v9

    add-float/2addr v7, v6

    iput v7, v4, Lcom/startapp/u2;->b:F

    int-to-float v5, v5

    mul-float v5, v5, v7

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    add-float/2addr v5, v8

    .line 26
    iput v5, v4, Lcom/startapp/u2;->a:F

    .line 29
    iget v5, v4, Lcom/startapp/y9;->f:F

    mul-float v7, v7, v5

    iput v7, v4, Lcom/startapp/u2;->b:F

    .line 30
    :cond_4
    iput-wide v2, v0, Lcom/startapp/u2;->e:J

    .line 31
    iget-object v0, p0, Lcom/startapp/u5;->a:Lcom/startapp/sdk/ads/list3d/List3DView;

    iget-object v2, v0, Lcom/startapp/sdk/ads/list3d/List3DView;->l:Lcom/startapp/u2;

    .line 32
    iget v2, v2, Lcom/startapp/u2;->a:F

    float-to-int v2, v2

    .line 33
    iget v3, v0, Lcom/startapp/sdk/ads/list3d/List3DView;->e:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/startapp/sdk/ads/list3d/List3DView;->a(I)V

    .line 36
    :cond_5
    iget-object v0, p0, Lcom/startapp/u5;->a:Lcom/startapp/sdk/ads/list3d/List3DView;

    iget-object v0, v0, Lcom/startapp/sdk/ads/list3d/List3DView;->l:Lcom/startapp/u2;

    const v2, 0x3ecccccd    # 0.4f

    .line 37
    iget v3, v0, Lcom/startapp/u2;->b:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 38
    :goto_1
    iget v4, v0, Lcom/startapp/u2;->a:F

    sub-float v6, v4, v2

    iget v7, v0, Lcom/startapp/u2;->c:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    add-float/2addr v4, v2

    iget v0, v0, Lcom/startapp/u2;->d:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-nez v1, :cond_9

    .line 39
    iget-object v0, p0, Lcom/startapp/u5;->a:Lcom/startapp/sdk/ads/list3d/List3DView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/AdapterView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    return-void
.end method
