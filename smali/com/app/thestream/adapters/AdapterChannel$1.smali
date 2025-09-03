.class Lcom/app/thestream/adapters/AdapterChannel$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "AdapterChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/app/thestream/adapters/AdapterChannel;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/app/thestream/adapters/AdapterChannel;


# direct methods
.method constructor <init>(Lcom/app/thestream/adapters/AdapterChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel$1;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 82
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterChannel$1;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    iput-boolean v0, v1, Lcom/app/thestream/adapters/AdapterChannel;->scrolling:Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 84
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel$1;->this$0:Lcom/app/thestream/adapters/AdapterChannel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/app/thestream/adapters/AdapterChannel;->scrolling:Z

    .line 86
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
