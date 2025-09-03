.class public Lcom/startapp/s5;
.super Landroid/widget/ArrayAdapter;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/startapp/w5;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapp/w5;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2
    iput-object p3, p0, Lcom/startapp/s5;->a:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/startapp/s5;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Lcom/startapp/x5;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/startapp/x5;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object p3, p2, Lcom/startapp/x5;->a:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/startapp/x5;

    move-object v8, p3

    move-object p3, p2

    move-object p2, v8

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/w5;

    .line 7
    sget-object v1, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->h:Lcom/startapp/sdk/adsbase/AdsCommonMetaData;

    .line 8
    iget-object v2, v0, Lcom/startapp/w5;->q:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Lcom/startapp/sdk/adsbase/AdsCommonMetaData;->a(Ljava/lang/String;)Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;

    move-result-object v1

    .line 10
    iget-object v2, p2, Lcom/startapp/x5;->g:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v1, :cond_1

    .line 11
    iput-object v1, p2, Lcom/startapp/x5;->g:Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;

    .line 13
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 15
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;->e()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v4

    .line 16
    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;->d()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v3

    invoke-direct {v2, v5, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 17
    iget-object v5, p2, Lcom/startapp/x5;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object v2, p2, Lcom/startapp/x5;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;->h()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 21
    iget-object v2, p2, Lcom/startapp/x5;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;->f()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v2, p2, Lcom/startapp/x5;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;->g()Ljava/util/Set;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/startapp/qb;->a(Landroid/widget/TextView;Ljava/util/Set;)V

    .line 24
    iget-object v2, p2, Lcom/startapp/x5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;->c()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 25
    iget-object v2, p2, Lcom/startapp/x5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;->a()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v2, p2, Lcom/startapp/x5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaDataStyle;->b()Ljava/util/Set;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/startapp/qb;->a(Landroid/widget/TextView;Ljava/util/Set;)V

    .line 27
    :cond_1
    iget-object v1, p2, Lcom/startapp/x5;->c:Landroid/widget/TextView;

    .line 28
    iget-object v2, v0, Lcom/startapp/w5;->g:Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v1, p2, Lcom/startapp/x5;->d:Landroid/widget/TextView;

    .line 31
    iget-object v2, v0, Lcom/startapp/w5;->h:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    sget-object v1, Lcom/startapp/z5;->b:Lcom/startapp/z5;

    .line 34
    iget-object v2, p0, Lcom/startapp/s5;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/startapp/z5;->a(Ljava/lang/String;)Lcom/startapp/y5;

    move-result-object v1

    .line 35
    iget-object v2, v0, Lcom/startapp/w5;->a:Ljava/lang/String;

    .line 36
    iget-object v5, v0, Lcom/startapp/w5;->i:Ljava/lang/String;

    .line 37
    iget-object v1, v1, Lcom/startapp/y5;->a:Lcom/startapp/g4;

    invoke-virtual {v1, p1, v2, v5}, Lcom/startapp/g4;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    .line 38
    iget-object p1, p2, Lcom/startapp/x5;->b:Landroid/widget/ImageView;

    const v1, 0x1080093

    .line 39
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object p1, p2, Lcom/startapp/x5;->b:Landroid/widget/ImageView;

    const-string v1, "tag_error"

    .line 41
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 42
    :cond_2
    iget-object v1, p2, Lcom/startapp/x5;->b:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 44
    iget-object p1, p2, Lcom/startapp/x5;->b:Landroid/widget/ImageView;

    const-string v1, "tag_ok"

    .line 45
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 46
    :goto_1
    iget-object p1, p2, Lcom/startapp/x5;->f:Lcom/startapp/sdk/json/RatingBar;

    .line 47
    iget v1, v0, Lcom/startapp/w5;->j:F

    .line 48
    invoke-virtual {p1, v1}, Lcom/startapp/sdk/json/RatingBar;->setRating(F)V

    .line 49
    iget-object p1, v0, Lcom/startapp/w5;->n:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 50
    :goto_2
    invoke-virtual {p2, v3}, Lcom/startapp/x5;->a(Z)V

    .line 51
    sget-object p1, Lcom/startapp/z5;->b:Lcom/startapp/z5;

    .line 52
    iget-object p2, p0, Lcom/startapp/s5;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/startapp/z5;->a(Ljava/lang/String;)Lcom/startapp/y5;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    iget-object v3, v0, Lcom/startapp/w5;->c:[Ljava/lang/String;

    .line 55
    new-instance v4, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;

    iget-object p2, p0, Lcom/startapp/s5;->a:Ljava/lang/String;

    invoke-direct {v4, p2}, Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object p2, v0, Lcom/startapp/w5;->o:Ljava/lang/Long;

    if-eqz p2, :cond_4

    .line 57
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_3

    .line 60
    :cond_4
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 61
    sget-object v0, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->k:Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;

    .line 62
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/MetaData;->p()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_3
    move-wide v5, v0

    .line 63
    iget-object p2, p1, Lcom/startapp/y5;->a:Lcom/startapp/g4;

    iget-object p1, p1, Lcom/startapp/y5;->c:Ljava/lang/String;

    .line 64
    invoke-virtual {p2, v3, p1}, Lcom/startapp/g4;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    iget-object v0, p2, Lcom/startapp/g4;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 70
    :cond_5
    new-instance v0, Lcom/startapp/j9;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/startapp/j9;-><init>(Landroid/content/Context;[Ljava/lang/String;Lcom/startapp/sdk/adsbase/commontracking/TrackingParams;J)V

    .line 71
    iget-object p2, p2, Lcom/startapp/g4;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v0}, Lcom/startapp/j9;->b()V

    :goto_4
    return-object p3
.end method
