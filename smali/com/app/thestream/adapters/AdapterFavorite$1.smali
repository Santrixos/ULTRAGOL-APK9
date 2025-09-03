.class Lcom/app/thestream/adapters/AdapterFavorite$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AdapterFavorite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/adapters/AdapterFavorite;->lastItemViewDetector(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/adapters/AdapterFavorite;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/app/thestream/adapters/AdapterFavorite;Landroidx/recyclerview/widget/LinearLayoutManager;)V
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

    .line 228
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->this$0:Lcom/app/thestream/adapters/AdapterFavorite;

    iput-object p2, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
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

    .line 231
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 232
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 233
    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->this$0:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-static {p2}, Lcom/app/thestream/adapters/AdapterFavorite;->access$100(Lcom/app/thestream/adapters/AdapterFavorite;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->this$0:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-virtual {p2}, Lcom/app/thestream/adapters/AdapterFavorite;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->this$0:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-static {p1}, Lcom/app/thestream/adapters/AdapterFavorite;->access$200(Lcom/app/thestream/adapters/AdapterFavorite;)Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 234
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->this$0:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-static {p1}, Lcom/app/thestream/adapters/AdapterFavorite;->access$200(Lcom/app/thestream/adapters/AdapterFavorite;)Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->this$0:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-virtual {p1}, Lcom/app/thestream/adapters/AdapterFavorite;->getItemCount()I

    move-result p1

    div-int/lit8 p1, p1, 0xc

    .line 236
    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->this$0:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-static {p2}, Lcom/app/thestream/adapters/AdapterFavorite;->access$200(Lcom/app/thestream/adapters/AdapterFavorite;)Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;->onLoadMore(I)V

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite$1;->this$0:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-static {p1, p3}, Lcom/app/thestream/adapters/AdapterFavorite;->access$102(Lcom/app/thestream/adapters/AdapterFavorite;Z)Z

    :cond_1
    return-void
.end method
