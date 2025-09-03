.class public Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AdapterChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/adapters/AdapterChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginalViewHolder"
.end annotation


# instance fields
.field public channel_category:Landroid/widget/TextView;

.field public channel_image:Landroid/widget/ImageView;

.field public channel_name:Landroid/widget/TextView;

.field public lyt_parent:Landroid/widget/LinearLayout;

.field public overflow:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00d5

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_name:Landroid/widget/TextView;

    const v0, 0x7f0a00d2

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_category:Landroid/widget/TextView;

    const v0, 0x7f0a00d4

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    const v0, 0x7f0a01a0

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->lyt_parent:Landroid/widget/LinearLayout;

    const v0, 0x7f0a020c

    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->overflow:Landroid/widget/ImageView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/app/thestream/adapters/AdapterChannel$1;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
