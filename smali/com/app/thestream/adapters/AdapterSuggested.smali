.class public Lcom/app/thestream/adapters/AdapterSuggested;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterSuggested.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;,
        Lcom/app/thestream/adapters/AdapterSuggested$ProgressViewHolder;,
        Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;,
        Lcom/app/thestream/adapters/AdapterSuggested$OnItemOverflowClickListener;,
        Lcom/app/thestream/adapters/AdapterSuggested$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final VIEW_ITEM:I

.field private final VIEW_PROG:I

.field private charSequence:Ljava/lang/CharSequence;

.field private context:Landroid/content/Context;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z

.field private mOnItemClickListener:Lcom/app/thestream/adapters/AdapterSuggested$OnItemClickListener;

.field private mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterSuggested$OnItemOverflowClickListener;

.field private onLoadMoreListener:Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;

.field private pos:Lcom/app/thestream/models/Channel;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "view",
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Channel;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->VIEW_ITEM:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->VIEW_PROG:I

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->charSequence:Ljava/lang/CharSequence;

    .line 56
    iput-object p3, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested;->context:Landroid/content/Context;

    .line 58
    new-instance p3, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p3, p1}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/app/thestream/adapters/AdapterSuggested;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 59
    invoke-direct {p0, p2}, Lcom/app/thestream/adapters/AdapterSuggested;->lastItemViewDetector(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/app/thestream/adapters/AdapterSuggested;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->loading:Z

    return p0
.end method

.method static synthetic access$102(Lcom/app/thestream/adapters/AdapterSuggested;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/app/thestream/adapters/AdapterSuggested;->loading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/app/thestream/adapters/AdapterSuggested;)Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->onLoadMoreListener:Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;

    return-object p0
.end method

.method private lastItemViewDetector(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 211
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 213
    new-instance v1, Lcom/app/thestream/adapters/AdapterSuggested$1;

    invoke-direct {v1, p0, v0}, Lcom/app/thestream/adapters/AdapterSuggested$1;-><init>(Lcom/app/thestream/adapters/AdapterSuggested;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public insertData(Ljava/util/List;)V
    .locals 3
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
            "Lcom/app/thestream/models/Channel;",
            ">;)V"
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterSuggested;->setLoaded()V

    .line 177
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterSuggested;->getItemCount()I

    move-result v0

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 179
    iget-object v2, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/app/thestream/adapters/AdapterSuggested;->notifyItemRangeInserted(II)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$0$com-app-thestream-adapters-AdapterSuggested(Lcom/app/thestream/models/Channel;ILandroid/view/View;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->mOnItemClickListener:Lcom/app/thestream/adapters/AdapterSuggested$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p3, p1, p2}, Lcom/app/thestream/adapters/AdapterSuggested$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-app-thestream-adapters-AdapterSuggested(Lcom/app/thestream/models/Channel;ILandroid/view/View;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterSuggested$OnItemOverflowClickListener;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p3, p1, p2}, Lcom/app/thestream/adapters/AdapterSuggested$OnItemOverflowClickListener;->onItemOverflowClick(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 9
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

    .line 107
    invoke-virtual {p0, p2}, Lcom/app/thestream/adapters/AdapterSuggested;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 154
    check-cast p1, Lcom/app/thestream/adapters/AdapterSuggested$ProgressViewHolder;

    iget-object p1, p1, Lcom/app/thestream/adapters/AdapterSuggested$ProgressViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/thestream/models/Channel;

    .line 111
    check-cast p1, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;

    .line 113
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->channel_name:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->channel_category:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->channel_category:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v1, v0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const v2, 0x7f070103

    const v3, 0x7f070104

    const v4, 0x7f080184

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v5, "YOUTUBE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://img.youtube.com/vi/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/mqdefault.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-virtual {v1, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v3, v2}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 128
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/app/thestream/adapters/AdapterSuggested;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 131
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/upload/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v3, v2}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 138
    :goto_0
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->lyt_parent:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/app/thestream/adapters/AdapterSuggested$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2}, Lcom/app/thestream/adapters/AdapterSuggested$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/adapters/AdapterSuggested;Lcom/app/thestream/models/Channel;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p1, p1, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;->overflow:Landroid/widget/ImageView;

    new-instance v1, Lcom/app/thestream/adapters/AdapterSuggested$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2}, Lcom/app/thestream/adapters/AdapterSuggested$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/adapters/AdapterSuggested;Lcom/app/thestream/models/Channel;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
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

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 99
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d00de

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance p2, Lcom/app/thestream/adapters/AdapterSuggested$ProgressViewHolder;

    invoke-direct {p2, p1}, Lcom/app/thestream/adapters/AdapterSuggested$ProgressViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d0091

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/app/thestream/adapters/AdapterSuggested$OriginalViewHolder;-><init>(Lcom/app/thestream/adapters/AdapterSuggested;Landroid/view/View;Lcom/app/thestream/adapters/AdapterSuggested$1;)V

    return-object p2
.end method

.method public resetListData()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterSuggested;->notifyDataSetChanged()V

    return-void
.end method

.method public setLoaded()V
    .locals 2

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->loading:Z

    .line 185
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterSuggested;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    invoke-virtual {p0, v0}, Lcom/app/thestream/adapters/AdapterSuggested;->notifyItemRemoved(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLoading()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterSuggested;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterSuggested;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterSuggested;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/app/thestream/adapters/AdapterSuggested;->notifyItemInserted(I)V

    .line 197
    iput-boolean v1, p0, Lcom/app/thestream/adapters/AdapterSuggested;->loading:Z

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/app/thestream/adapters/AdapterSuggested$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested;->mOnItemClickListener:Lcom/app/thestream/adapters/AdapterSuggested$OnItemClickListener;

    return-void
.end method

.method public setOnItemOverflowClickListener(Lcom/app/thestream/adapters/AdapterSuggested$OnItemOverflowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemOverflowClickListener"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested;->mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterSuggested$OnItemOverflowClickListener;

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onLoadMoreListener"
        }
    .end annotation

    .line 207
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterSuggested;->onLoadMoreListener:Lcom/app/thestream/adapters/AdapterSuggested$OnLoadMoreListener;

    return-void
.end method
