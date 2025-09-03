.class Lcom/app/thestream/adapters/AdapterChannel$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AdapterChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/adapters/AdapterChannel;->lastItemViewDetector(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/adapters/AdapterChannel;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lcom/app/thestream/adapters/AdapterChannel;Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$layoutManager"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    iput-object p2, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->val$layoutManager:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 315
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 316
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->val$layoutManager:Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p2

    invoke-static {p1, p2}, Lcom/app/thestream/adapters/AdapterChannel;->access$100(Lcom/app/thestream/adapters/AdapterChannel;[I)I

    move-result p1

    .line 317
    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-static {p2}, Lcom/app/thestream/adapters/AdapterChannel;->access$200(Lcom/app/thestream/adapters/AdapterChannel;)Z

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {p2}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-static {p1}, Lcom/app/thestream/adapters/AdapterChannel;->access$300(Lcom/app/thestream/adapters/AdapterChannel;)Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 319
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    iget-object p1, p1, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p3, -0x1

    goto :goto_1

    :sswitch_0
    const-string p3, "startapp"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    goto :goto_1

    :sswitch_1
    const-string p3, "applovin"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x4

    goto :goto_1

    :sswitch_2
    const-string p3, "google_ad_manager"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x3

    goto :goto_1

    :sswitch_3
    const-string p3, "admob"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "fan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :sswitch_5
    const-string p3, "applovin_max"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p3, 0x0

    :cond_5
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 331
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {p1}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result p1

    div-int/lit8 p1, p1, 0xc

    .line 332
    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-static {p2}, Lcom/app/thestream/adapters/AdapterChannel;->access$300(Lcom/app/thestream/adapters/AdapterChannel;)Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;->onLoadMore(I)V

    goto :goto_2

    .line 326
    :pswitch_0
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {p1}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result p1

    div-int/lit8 p1, p1, 0xd

    .line 327
    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterChannel$2;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-static {p2}, Lcom/app/thestream/adapters/AdapterChannel;->access$300(Lcom/app/thestream/adapters/AdapterChannel;)Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;->onLoadMore(I)V

    :cond_6
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5e7844a4 -> :sswitch_5
        0x18b13 -> :sswitch_4
        0x58603fd -> :sswitch_3
        0x3b19f957 -> :sswitch_2
        0x4650da37 -> :sswitch_1
        0x4e7cc27f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
