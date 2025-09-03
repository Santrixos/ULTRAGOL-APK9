.class public Lcom/app/thestream/utils/RtlViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;,
        Lcom/app/thestream/utils/RtlViewPager$ReversingOnPageChangeListener;,
        Lcom/app/thestream/utils/RtlViewPager$SavedState;
    }
.end annotation


# instance fields
.field private mLayoutDirection:I

.field private final mPageChangeListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
            "Lcom/app/thestream/utils/RtlViewPager$ReversingOnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/utils/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/app/thestream/utils/RtlViewPager;->mLayoutDirection:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/app/thestream/utils/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/app/thestream/utils/RtlViewPager;->mLayoutDirection:I

    return-void
.end method

.method static synthetic access$401(Lcom/app/thestream/utils/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 44
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/app/thestream/utils/RtlViewPager;)Z
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/app/thestream/utils/RtlViewPager;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$601(Lcom/app/thestream/utils/RtlViewPager;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 0

    .line 44
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    return-object p0
.end method

.method private isRtl()Z
    .locals 2

    .line 91
    iget v0, p0, Lcom/app/thestream/utils/RtlViewPager;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 198
    new-instance v0, Lcom/app/thestream/utils/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/app/thestream/utils/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/app/thestream/utils/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 199
    iget-object v1, p0, Lcom/app/thestream/utils/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public clearOnPageChangeListeners()V
    .locals 1

    .line 213
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->clearOnPageChangeListeners()V

    .line 214
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAdapter()Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    .line 86
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getDelegate()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 3

    .line 96
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 97
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/app/thestream/utils/RtlViewPager;->isRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 219
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-nez v0, :cond_2

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Lcom/app/thestream/utils/RtlViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 223
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/view/View;->measure(II)V

    .line 224
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40000000    # 2.0f

    .line 229
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 231
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 135
    instance-of v0, p1, Lcom/app/thestream/utils/RtlViewPager$SavedState;

    if-nez v0, :cond_0

    .line 136
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 140
    :cond_0
    check-cast p1, Lcom/app/thestream/utils/RtlViewPager$SavedState;

    .line 141
    invoke-static {p1}, Lcom/app/thestream/utils/RtlViewPager$SavedState;->access$100(Lcom/app/thestream/utils/RtlViewPager$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/app/thestream/utils/RtlViewPager;->mLayoutDirection:I

    .line 142
    invoke-static {p1}, Lcom/app/thestream/utils/RtlViewPager$SavedState;->access$200(Lcom/app/thestream/utils/RtlViewPager$SavedState;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutDirection"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onRtlPropertiesChanged(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 61
    :goto_0
    iget p1, p0, Lcom/app/thestream/utils/RtlViewPager;->mLayoutDirection:I

    if-eq v1, p1, :cond_2

    .line 62
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager;->getCurrentItem()I

    move-result v0

    .line 67
    :cond_1
    iput v1, p0, Lcom/app/thestream/utils/RtlViewPager;->mLayoutDirection:I

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 70
    invoke-virtual {p0, v0}, Lcom/app/thestream/utils/RtlViewPager;->setCurrentItem(I)V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 129
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/app/thestream/utils/RtlViewPager$SavedState;

    iget v2, p0, Lcom/app/thestream/utils/RtlViewPager;->mLayoutDirection:I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/app/thestream/utils/RtlViewPager$SavedState;-><init>(Landroid/os/Parcelable;ILcom/app/thestream/utils/RtlViewPager$1;)V

    return-object v1
.end method

.method public removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager;->mPageChangeListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/app/thestream/utils/RtlViewPager$ReversingOnPageChangeListener;

    if-eqz p1, :cond_0

    .line 207
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;

    invoke-direct {v0, p0, p1}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;-><init>(Lcom/app/thestream/utils/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V

    move-object p1, v0

    .line 80
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/app/thestream/utils/RtlViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 115
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/app/thestream/utils/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 119
    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "smoothScroll"
        }
    .end annotation

    .line 106
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/app/thestream/utils/RtlViewPager;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 110
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/app/thestream/utils/RtlViewPager$ReversingOnPageChangeListener;

    invoke-direct {v0, p0, p1}, Lcom/app/thestream/utils/RtlViewPager$ReversingOnPageChangeListener;-><init>(Lcom/app/thestream/utils/RtlViewPager;Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-super {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
