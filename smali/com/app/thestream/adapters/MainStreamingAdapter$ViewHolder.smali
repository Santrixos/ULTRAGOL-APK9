.class public Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MainStreamingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/adapters/MainStreamingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field tvStreamerName:Landroid/widget/TextView;

.field tvPlatformName:Landroid/widget/TextView;

.field ivPlatformIcon:Landroid/widget/ImageView;

.field btnWatch:Landroid/widget/Button;

.field final synthetic this$0:Lcom/app/thestream/adapters/MainStreamingAdapter;


# direct methods
.method public constructor <init>(Lcom/app/thestream/adapters/MainStreamingAdapter;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/app/thestream/adapters/MainStreamingAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    iput-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->this$0:Lcom/app/thestream/adapters/MainStreamingAdapter;

    .line 91
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901c7    # @+id/tv_streamer_name

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->tvStreamerName:Landroid/widget/TextView;

    const p1, 0x7f0901c6    # @+id/tv_platform_name

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->tvPlatformName:Landroid/widget/TextView;

    const p1, 0x7f0900f4    # @+id/iv_platform_icon

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->ivPlatformIcon:Landroid/widget/ImageView;

    const p1, 0x7f09007b    # @+id/btn_watch

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->btnWatch:Landroid/widget/Button;

    return-void
.end method