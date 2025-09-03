.class public Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AdapterCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/adapters/AdapterCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public category_image:Landroid/widget/ImageView;

.field public category_name:Landroid/widget/TextView;

.field public lyt_parent:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/app/thestream/adapters/AdapterCategory;


# direct methods
.method public constructor <init>(Lcom/app/thestream/adapters/AdapterCategory;Landroid/view/View;)V
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

    .line 53
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;->this$0:Lcom/app/thestream/adapters/AdapterCategory;

    .line 54
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a00cc

    .line 55
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;->category_name:Landroid/widget/TextView;

    const p1, 0x7f0a00cb

    .line 56
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;->category_image:Landroid/widget/ImageView;

    const p1, 0x7f0a01a0

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;->lyt_parent:Landroid/widget/LinearLayout;

    return-void
.end method
