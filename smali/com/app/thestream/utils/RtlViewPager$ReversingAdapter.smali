.class Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;
.super Lcom/app/thestream/utils/DelegatingPagerAdapter;
.source "RtlViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/utils/RtlViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReversingAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/utils/RtlViewPager;


# direct methods
.method constructor <init>(Lcom/app/thestream/utils/RtlViewPager;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "adapter"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    .line 280
    invoke-direct {p0, p2}, Lcom/app/thestream/utils/DelegatingPagerAdapter;-><init>(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 296
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->destroyItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 288
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 301
    invoke-super {p0, p1}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    .line 302
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x2

    :cond_2
    :goto_1
    return p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 320
    :cond_0
    invoke-super {p0, p1}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getPageWidth(I)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    .line 328
    :cond_0
    invoke-super {p0, p1}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->getPageWidth(I)F

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "position"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 346
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->instantiateItem(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "position"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 337
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 362
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->this$0:Lcom/app/thestream/utils/RtlViewPager;

    invoke-static {v0}, Lcom/app/thestream/utils/RtlViewPager;->access$500(Lcom/app/thestream/utils/RtlViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/app/thestream/utils/RtlViewPager$ReversingAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p2, v0, -0x1

    .line 354
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/app/thestream/utils/DelegatingPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    return-void
.end method
