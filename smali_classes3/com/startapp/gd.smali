.class public Lcom/startapp/gd;
.super Ljava/lang/Object;
.source "Sta"


# direct methods
.method public static a(Landroid/view/View;Lcom/startapp/sdk/ads/banner/BannerOptions;Ljava/util/concurrent/atomic/AtomicReference;)Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/startapp/sdk/ads/banner/BannerOptions;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    if-nez v0, :cond_0

    .line 1
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->r:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0

    .line 10
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 11
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->e:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0

    .line 14
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    .line 15
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->e:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0

    .line 18
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 19
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->e:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0

    .line 22
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/startapp/sdk/ads/banner/BannerOptions;->r()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_4

    .line 24
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->d:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0

    .line 28
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_5

    .line 29
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->l:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0

    .line 32
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v2, v3, :cond_6

    goto/16 :goto_4

    .line 36
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/startapp/sdk/ads/banner/BannerOptions;->h()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v4, 0x64

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int v6, v6, v5

    mul-int v6, v6, v2

    div-int/2addr v6, v4

    .line 39
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 42
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->o:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0

    .line 45
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 46
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->o:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0

    .line 49
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/startapp/sdk/ads/banner/BannerOptions;->q()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_13

    .line 50
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    .line 51
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 53
    invoke-static {v0, v2, v3}, Lcom/startapp/gd;->a(Landroid/view/View;Landroid/graphics/Rect;Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 55
    sget-object v3, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->o:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    .line 57
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    if-eqz v8, :cond_10

    .line 58
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v8, v10, :cond_9

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v8

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v10

    if-gez v8, :cond_9

    .line 60
    sget-object v5, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->m:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    goto/16 :goto_3

    .line 64
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 66
    invoke-static {v8, v5, v9}, Lcom/startapp/gd;->a(Landroid/view/View;Landroid/graphics/Rect;Z)Lorg/json/JSONObject;

    move-result-object v10

    .line 67
    invoke-virtual/range {p2 .. p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    invoke-static {v10, v11}, Lcom/startapp/gd;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 68
    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 72
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_f

    .line 73
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v14, v0, :cond_a

    goto :goto_2

    .line 79
    :cond_a
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v15, v5, :cond_b

    if-gt v13, v11, :cond_d

    goto :goto_2

    .line 84
    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getZ()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v15

    invoke-static {v5, v15}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gez v5, :cond_c

    goto :goto_2

    :cond_c
    if-nez v5, :cond_d

    if-gt v13, v11, :cond_d

    goto :goto_2

    :cond_d
    if-eqz v14, :cond_e

    .line 92
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_e

    .line 93
    invoke-virtual {v14, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 94
    invoke-static {v2, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 95
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v7, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 97
    invoke-static {v14, v7, v9}, Lcom/startapp/gd;->a(Landroid/view/View;Landroid/graphics/Rect;Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v10, v3}, Lcom/startapp/gd;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 99
    sget-object v3, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->p:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    :cond_e
    :goto_2
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_f
    move-object v0, v8

    goto/16 :goto_0

    .line 110
    :cond_10
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, v4}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 111
    :cond_11
    invoke-virtual {v0, v7}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 112
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v2, v2, v1

    add-int/2addr v9, v2

    if-lt v9, v6, :cond_11

    const/4 v5, 0x0

    goto :goto_3

    :cond_12
    move-object v5, v3

    :goto_3
    return-object v5

    :cond_13
    move-object v0, v5

    return-object v0

    .line 113
    :cond_14
    :goto_4
    sget-object v0, Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;->n:Lcom/startapp/sdk/adsbase/adlisteners/NotDisplayedReason;

    return-object v0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android."

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "androidx."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0

    .line 169
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;Landroid/graphics/Rect;Z)Lorg/json/JSONObject;
    .locals 3

    .line 114
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "class"

    .line 117
    invoke-static {p0}, Lcom/startapp/gd;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 125
    :catch_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "id"

    .line 126
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p2, :cond_2

    const-string p2, "target"

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 133
    :cond_2
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p2, v1, :cond_3

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v1

    if-gez p2, :cond_3

    const-string p2, "alpha"

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    float-to-double v1, p0

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_3
    if-eqz p1, :cond_4

    const-string p0, "left"

    .line 140
    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "top"

    .line 141
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "right"

    .line 142
    iget p2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "bottom"

    .line 143
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    return-object v0

    :catch_1
    move-exception p0

    .line 146
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "children"

    .line 147
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 153
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method
