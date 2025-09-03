.class public Lcom/app/thestream/adapters/AdapterCategory;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;,
        Lcom/app/thestream/adapters/AdapterCategory$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/app/thestream/adapters/AdapterCategory$OnItemClickListener;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Category;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/app/thestream/adapters/AdapterCategory;->items:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterCategory;->context:Landroid/content/Context;

    .line 44
    new-instance p2, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p2, p1}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/app/thestream/adapters/AdapterCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterCategory;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-app-thestream-adapters-AdapterCategory(Lcom/app/thestream/models/Category;ILandroid/view/View;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterCategory;->mOnItemClickListener:Lcom/app/thestream/adapters/AdapterCategory$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p3, p1, p2}, Lcom/app/thestream/adapters/AdapterCategory$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/app/thestream/models/Category;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 25
    check-cast p1, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/app/thestream/adapters/AdapterCategory;->onBindViewHolder(Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterCategory;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/thestream/models/Category;

    .line 81
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;->category_name:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/app/thestream/models/Category;->category_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/app/thestream/adapters/AdapterCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 84
    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/upload/category/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/app/thestream/models/Category;->category_image:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f080184

    .line 85
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;->category_image:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 88
    iget-object p1, p1, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;->lyt_parent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2}, Lcom/app/thestream/adapters/AdapterCategory$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/adapters/AdapterCategory;Lcom/app/thestream/models/Category;I)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/app/thestream/adapters/AdapterCategory;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 65
    new-instance p2, Lcom/app/thestream/databases/prefs/SharedPref;

    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterCategory;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p2}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p2}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008d

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 71
    new-instance p2, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;-><init>(Lcom/app/thestream/adapters/AdapterCategory;Landroid/view/View;)V

    return-object p2

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008e

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/app/thestream/adapters/AdapterCategory$ViewHolder;-><init>(Lcom/app/thestream/adapters/AdapterCategory;Landroid/view/View;)V

    return-object p2
.end method

.method public resetListData()V
    .locals 1

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/adapters/AdapterCategory;->items:Ljava/util/List;

    .line 102
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterCategory;->notifyDataSetChanged()V

    return-void
.end method

.method public setListData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Category;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterCategory;->items:Ljava/util/List;

    .line 97
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterCategory;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/app/thestream/adapters/AdapterCategory$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterCategory;->mOnItemClickListener:Lcom/app/thestream/adapters/AdapterCategory$OnItemClickListener;

    return-void
.end method
