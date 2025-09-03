.class public Lcom/app/thestream/adapters/AdapterFavorite;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterFavorite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;,
        Lcom/app/thestream/adapters/AdapterFavorite$ProgressViewHolder;,
        Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;,
        Lcom/app/thestream/adapters/AdapterFavorite$OnItemOverflowClickListener;,
        Lcom/app/thestream/adapters/AdapterFavorite$OnItemClickListener;
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

.field private mOnItemClickListener:Lcom/app/thestream/adapters/AdapterFavorite$OnItemClickListener;

.field private mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterFavorite$OnItemOverflowClickListener;

.field private onLoadMoreListener:Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;

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

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->VIEW_ITEM:I

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->VIEW_PROG:I

    .line 57
    iput-object p3, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite;->context:Landroid/content/Context;

    .line 59
    new-instance p3, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p3, p1}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/app/thestream/adapters/AdapterFavorite;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 60
    invoke-direct {p0, p2}, Lcom/app/thestream/adapters/AdapterFavorite;->lastItemViewDetector(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/app/thestream/adapters/AdapterFavorite;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->loading:Z

    return p0
.end method

.method static synthetic access$102(Lcom/app/thestream/adapters/AdapterFavorite;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/app/thestream/adapters/AdapterFavorite;->loading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/app/thestream/adapters/AdapterFavorite;)Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->onLoadMoreListener:Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;

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

    .line 226
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 228
    new-instance v1, Lcom/app/thestream/adapters/AdapterFavorite$1;

    invoke-direct {v1, p0, v0}, Lcom/app/thestream/adapters/AdapterFavorite$1;-><init>(Lcom/app/thestream/adapters/AdapterFavorite;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

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

    .line 182
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

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

    .line 191
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterFavorite;->setLoaded()V

    .line 192
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterFavorite;->getItemCount()I

    move-result v0

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 194
    iget-object v2, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/app/thestream/adapters/AdapterFavorite;->notifyItemRangeInserted(II)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$0$com-app-thestream-adapters-AdapterFavorite(Lcom/app/thestream/models/Channel;ILandroid/view/View;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->mOnItemClickListener:Lcom/app/thestream/adapters/AdapterFavorite$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0, p3, p1, p2}, Lcom/app/thestream/adapters/AdapterFavorite$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-app-thestream-adapters-AdapterFavorite(Lcom/app/thestream/models/Channel;ILandroid/view/View;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterFavorite$OnItemOverflowClickListener;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p3, p1, p2}, Lcom/app/thestream/adapters/AdapterFavorite$OnItemOverflowClickListener;->onItemOverflowClick(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 10
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

    .line 113
    invoke-virtual {p0, p2}, Lcom/app/thestream/adapters/AdapterFavorite;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 169
    check-cast p1, Lcom/app/thestream/adapters/AdapterFavorite$ProgressViewHolder;

    iget-object p1, p1, Lcom/app/thestream/adapters/AdapterFavorite$ProgressViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/thestream/models/Channel;

    .line 117
    check-cast p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;

    .line 119
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;->channel_name:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;->channel_category:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;->channel_category:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v1, v0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v2, "%20"

    const-string v3, " "

    const-string v4, "/upload/"

    const v5, 0x7f070103

    const v6, 0x7f070104

    const v7, 0x7f080184

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v8, "YOUTUBE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, v0, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/app/thestream/adapters/AdapterFavorite;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 131
    invoke-virtual {v9}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v6, v5}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://img.youtube.com/vi/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/mqdefault.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v6, v5}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/app/thestream/adapters/AdapterFavorite;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 146
    invoke-virtual {v9}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 147
    invoke-virtual {v1, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v6, v5}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 153
    :goto_0
    iget-object v1, p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;->lyt_parent:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/app/thestream/adapters/AdapterFavorite$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p2}, Lcom/app/thestream/adapters/AdapterFavorite$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/adapters/AdapterFavorite;Lcom/app/thestream/models/Channel;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object p1, p1, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;->overflow:Landroid/widget/ImageView;

    new-instance v1, Lcom/app/thestream/adapters/AdapterFavorite$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p2}, Lcom/app/thestream/adapters/AdapterFavorite$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/adapters/AdapterFavorite;Lcom/app/thestream/models/Channel;I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00de

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 106
    new-instance p2, Lcom/app/thestream/adapters/AdapterFavorite$ProgressViewHolder;

    invoke-direct {p2, p1}, Lcom/app/thestream/adapters/AdapterFavorite$ProgressViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 94
    :cond_0
    new-instance p2, Lcom/app/thestream/databases/prefs/SharedPref;

    iget-object v2, p0, Lcom/app/thestream/adapters/AdapterFavorite;->context:Landroid/content/Context;

    invoke-direct {p2, v2}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p2}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_2

    invoke-virtual {p2}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008f

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    new-instance p2, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;

    invoke-direct {p2, p0, p1, v3}, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;-><init>(Lcom/app/thestream/adapters/AdapterFavorite;Landroid/view/View;Lcom/app/thestream/adapters/AdapterFavorite$1;)V

    return-object p2

    .line 96
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0090

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 97
    new-instance p2, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;

    invoke-direct {p2, p0, p1, v3}, Lcom/app/thestream/adapters/AdapterFavorite$OriginalViewHolder;-><init>(Lcom/app/thestream/adapters/AdapterFavorite;Landroid/view/View;Lcom/app/thestream/adapters/AdapterFavorite$1;)V

    return-object p2
.end method

.method public resetListData()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterFavorite;->notifyDataSetChanged()V

    return-void
.end method

.method public setLoaded()V
    .locals 2

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->loading:Z

    .line 200
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterFavorite;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 203
    invoke-virtual {p0, v0}, Lcom/app/thestream/adapters/AdapterFavorite;->notifyItemRemoved(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLoading()V
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterFavorite;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterFavorite;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterFavorite;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/app/thestream/adapters/AdapterFavorite;->notifyItemInserted(I)V

    .line 212
    iput-boolean v1, p0, Lcom/app/thestream/adapters/AdapterFavorite;->loading:Z

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/app/thestream/adapters/AdapterFavorite$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite;->mOnItemClickListener:Lcom/app/thestream/adapters/AdapterFavorite$OnItemClickListener;

    return-void
.end method

.method public setOnItemOverflowClickListener(Lcom/app/thestream/adapters/AdapterFavorite$OnItemOverflowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemOverflowClickListener"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite;->mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterFavorite$OnItemOverflowClickListener;

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onLoadMoreListener"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterFavorite;->onLoadMoreListener:Lcom/app/thestream/adapters/AdapterFavorite$OnLoadMoreListener;

    return-void
.end method
