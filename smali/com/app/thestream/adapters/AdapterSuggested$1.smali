.class Lcom/app/thestream/adapters/AdapterSuggested$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AdapterSuggested.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/adapters/AdapterSuggested;->lastItemViewDetector(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/adapters/AdapterSuggested;

.field final synthetic val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/app/thestream/adapters/AdapterSuggested;Landroidx/recyclerview/widget/LinearLayoutManager;)V
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

    .line 213
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    iput-object p2, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

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

    .line 216
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 217
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->val$layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 218
    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    invoke-static {p2}, Lcom/app/thestream/adapters/AdapterSuggested;->access$100(Lcom/app/thestream/adapters/AdapterSuggested;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    invoke-virtual {p2}, Lcom/app/thestream/adapters/AdapterSuggested;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    invoke-static {p1}, Lcom/app/thestream/adapters/AdapterSuggested;->access$200(Lcom/app/thestream/adapters/AdapterSuggested;)Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    invoke-static {p1}, Lcom/app/thestream/adapters/AdapterSuggested;->access$200(Lcom/app/thestream/adapters/AdapterSuggested;)Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    invoke-virtual {p1}, Lcom/app/thestream/adapters/AdapterSuggested;->getItemCount()I

    move-result p1

    div-int/lit8 p1, p1, 0xc

    .line 221
    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    invoke-static {p2}, Lcom/app/thestream/adapters/AdapterSuggested;->access$200(Lcom/app/thestream/adapters/AdapterSuggested;)Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;->onLoadMore(I)V

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$1;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    invoke-static {p1, p3}, Lcom/app/thestream/adapters/AdapterSuggested;->access$102(Lcom/app/thestream/adapters/AdapterSuggested;Z)Z

    :cond_1
    return-void
.end method
