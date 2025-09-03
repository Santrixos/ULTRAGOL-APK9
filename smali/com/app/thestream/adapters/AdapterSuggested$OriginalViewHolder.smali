.class public Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AdapterSuggested.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/adapters/AdapterSuggested;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OriginalViewHolder"
.end annotation


# instance fields
.field public channel_category:Landroid/widget/TextView;

.field public channel_image:Landroid/widget/ImageView;

.field public channel_name:Landroid/widget/TextView;

.field public lyt_parent:Landroid/widget/LinearLayout;

.field public overflow:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/app/thestream/adapters/AdapterSuggested;


# direct methods
.method private constructor <init>(Lcom/app/thestream/adapters/AdapterSuggested;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "v"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->this$0:Lcom/app/thestream/adapters/AdapterSuggested;

    .line 71
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00d5

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->channel_name:Landroid/widget/TextView;

    const p1, 0x7f0a00d2

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->channel_category:Landroid/widget/TextView;

    const p1, 0x7f0a00d4

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    const p1, 0x7f0a01a0

    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->lyt_parent:Landroid/widget/LinearLayout;

    const p1, 0x7f0a020c

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->overflow:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Lcom/app/thestream/adapters/AdapterSuggested;Landroid/view/View;Lcom/app/thestream/adapters/AdapterSuggested$1;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;-><init>(Lcom/app/thestream/adapters/AdapterSuggested;Landroid/view/View;)V

    return-void
.end method
