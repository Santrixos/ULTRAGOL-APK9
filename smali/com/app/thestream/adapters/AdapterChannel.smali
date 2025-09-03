.class public Lcom/app/thestream/adapters/AdapterChannel;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;,
        Lcom/app/thestream/adapters/AdapterChannel$ProgressViewHolder;,
        Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;,
        Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;,
        Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;
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
.field private final VIEW_AD:I

.field private final VIEW_ITEM:I

.field private final VIEW_PROG:I

.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field context:Landroid/content/Context;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Z

.field private mOnItemClickListener:Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;

.field private mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;

.field private onLoadMoreListener:Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;

.field scrolling:Z

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V
    .locals 2
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

    .line 72
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->VIEW_PROG:I

    const/4 v1, 0x1

    .line 44
    iput v1, p0, Lcom/app/thestream/adapters/AdapterChannel;->VIEW_ITEM:I

    const/4 v1, 0x2

    .line 45
    iput v1, p0, Lcom/app/thestream/adapters/AdapterChannel;->VIEW_AD:I

    .line 52
    iput-boolean v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->scrolling:Z

    .line 73
    iput-object p3, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel;->context:Landroid/content/Context;

    .line 75
    new-instance p3, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p3, p1}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 76
    new-instance p3, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {p3, p1}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 77
    invoke-direct {p0, p2}, Lcom/app/thestream/adapters/AdapterChannel;->lastItemViewDetector(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 78
    new-instance p1, Lcom/app/thestream/adapters/AdapterChannel$1;

    invoke-direct {p1, p0}, Lcom/app/thestream/adapters/AdapterChannel$1;-><init>(Lcom/app/thestream/adapters/AdapterChannel;)V

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/app/thestream/adapters/AdapterChannel;[I)I
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/app/thestream/adapters/AdapterChannel;->getLastVisibleItem([I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/app/thestream/adapters/AdapterChannel;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/app/thestream/adapters/AdapterChannel;->loading:Z

    return p0
.end method

.method static synthetic access$300(Lcom/app/thestream/adapters/AdapterChannel;)Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/app/thestream/adapters/AdapterChannel;->onLoadMoreListener:Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;

    return-object p0
.end method

.method private getLastVisibleItem([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "into"
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    aget v1, p1, v0

    .line 352
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-ge v1, v3, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
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

    .line 310
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 312
    new-instance v1, Lcom/app/thestream/adapters/AdapterChannel$2;

    invoke-direct {v1, p0, v0}, Lcom/app/thestream/adapters/AdapterChannel$2;-><init>(Lcom/app/thestream/adapters/AdapterChannel;Landroidx/recyclerview/widget/StaggeredGridLayoutManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

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

    .line 242
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/app/thestream/models/Channel;

    if-eqz p1, :cond_2

    .line 244
    iget-object v0, p1, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1

    :cond_2
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

    .line 254
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterChannel;->setLoaded()V

    .line 255
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result v0

    .line 256
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 257
    iget-object v2, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/app/thestream/adapters/AdapterChannel;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public insertDataWithNativeAd(Ljava/util/List;)V
    .locals 5
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

    .line 262
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterChannel;->setLoaded()V

    .line 263
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result v0

    .line 264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/app/thestream/models/Channel;

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TITLE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v2}, Lcom/app/thestream/databases/prefs/AdsPref;->getNativeAdIndex()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 268
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    .line 269
    new-instance v2, Lcom/app/thestream/models/Channel;

    invoke-direct {v2}, Lcom/app/thestream/models/Channel;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x6

    .line 271
    new-instance v2, Lcom/app/thestream/models/Channel;

    invoke-direct {v2}, Lcom/app/thestream/models/Channel;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getNativeAdIndex()I

    move-result v1

    new-instance v2, Lcom/app/thestream/models/Channel;

    invoke-direct {v2}, Lcom/app/thestream/models/Channel;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 276
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 277
    iget-object v2, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/app/thestream/adapters/AdapterChannel;->notifyItemRangeInserted(II)V

    return-void
.end method

.method synthetic lambda$onBindViewHolder$0$com-app-thestream-adapters-AdapterChannel(Lcom/app/thestream/models/Channel;ILandroid/view/View;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->mOnItemClickListener:Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0, p3, p1, p2}, Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;->onItemClick(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onBindViewHolder$1$com-app-thestream-adapters-AdapterChannel(Lcom/app/thestream/models/Channel;ILandroid/view/View;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p3, p1, p2}, Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;->onItemOverflowClick(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 20
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 144
    instance-of v3, v1, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, v0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/app/thestream/models/Channel;

    .line 146
    move-object v6, v1

    check-cast v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;

    .line 148
    iget-object v7, v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_name:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v7, v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_category:Landroid/widget/TextView;

    iget-object v8, v3, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v7, v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_category:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v7, v3, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v8, "%20"

    const-string v9, " "

    const-string v10, "/upload/"

    const v11, 0x7f070103

    const v12, 0x7f070104

    const v13, 0x7f080184

    if-eqz v7, :cond_1

    iget-object v7, v3, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v14, "YOUTUBE"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    iget-object v7, v3, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 159
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 160
    invoke-virtual {v15}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 161
    invoke-virtual {v7, v13}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 162
    invoke-virtual {v7, v12, v11}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 163
    invoke-virtual {v7}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    iget-object v8, v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://img.youtube.com/vi/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v3, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/mqdefault.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 168
    invoke-virtual {v7, v13}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 169
    invoke-virtual {v7, v12, v11}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 170
    invoke-virtual {v7}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    iget-object v8, v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 171
    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 175
    invoke-virtual {v15}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 176
    invoke-virtual {v7, v13}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 177
    invoke-virtual {v7, v12, v11}, Lcom/squareup/picasso/RequestCreator;->resizeDimen(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    .line 178
    invoke-virtual {v7}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v7

    iget-object v8, v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->channel_image:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v7, v8}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 182
    :goto_0
    iget-object v7, v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->lyt_parent:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/app/thestream/adapters/AdapterChannel$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v3, v2}, Lcom/app/thestream/adapters/AdapterChannel$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/adapters/AdapterChannel;Lcom/app/thestream/models/Channel;I)V

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v6, v6, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;->overflow:Landroid/widget/ImageView;

    new-instance v7, Lcom/app/thestream/adapters/AdapterChannel$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0, v3, v2}, Lcom/app/thestream/adapters/AdapterChannel$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/adapters/AdapterChannel;Lcom/app/thestream/models/Channel;I)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 194
    :cond_2
    instance-of v3, v1, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    if-eqz v3, :cond_4

    .line 196
    move-object v3, v1

    check-cast v3, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    .line 199
    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_3

    .line 200
    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    goto :goto_1

    .line 202
    :cond_3
    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700f5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    :goto_1
    move v15, v6

    .line 205
    iget-object v7, v0, Lcom/app/thestream/adapters/AdapterChannel;->context:Landroid/content/Context;

    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 206
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 208
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v10

    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 209
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/AdsPref;->getBackupAds()Ljava/lang/String;

    move-result-object v11

    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 210
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobNativeId()Ljava/lang/String;

    move-result-object v12

    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 211
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerNativeId()Ljava/lang/String;

    move-result-object v13

    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 212
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/AdsPref;->getFanNativeId()Ljava/lang/String;

    move-result-object v14

    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 213
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/AdsPref;->getAppLovinNativeAdManualUnitId()Ljava/lang/String;

    move-result-object v16

    iget-object v6, v0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 214
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const/16 v18, 0x1

    const-string v19, "default"

    move-object v6, v3

    move v5, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    .line 205
    invoke-virtual/range {v6 .. v18}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->loadNativeAd(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 219
    invoke-virtual {v3, v5, v5, v5, v5}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;->setNativeAdPadding(IIII)V

    goto :goto_2

    .line 222
    :cond_4
    move-object v3, v1

    check-cast v3, Lcom/app/thestream/adapters/AdapterChannel$ProgressViewHolder;

    iget-object v3, v3, Lcom/app/thestream/adapters/AdapterChannel$ProgressViewHolder;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 225
    :goto_2
    invoke-virtual {v0, v2}, Lcom/app/thestream/adapters/AdapterChannel;->getItemViewType(I)I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/app/thestream/adapters/AdapterChannel;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    goto :goto_3

    .line 229
    :cond_5
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v2, 0x0

    .line 230
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    goto :goto_4

    .line 226
    :cond_6
    :goto_3
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 227
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :goto_4
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

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_2

    .line 124
    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p2}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v3, 0x0

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/app/thestream/adapters/AdapterChannel;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p2}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d008f

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 129
    new-instance p2, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;

    invoke-direct {p2, p1, v3}, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;-><init>(Landroid/view/View;Lcom/app/thestream/adapters/AdapterChannel$1;)V

    goto :goto_1

    .line 125
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0090

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 126
    new-instance p2, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;

    invoke-direct {p2, p1, v3}, Lcom/app/thestream/adapters/AdapterChannel$OriginalViewHolder;-><init>(Landroid/view/View;Lcom/app/thestream/adapters/AdapterChannel$1;)V

    goto :goto_1

    :cond_2
    if-ne p2, v0, :cond_3

    .line 132
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00f4

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    new-instance p2, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;

    invoke-direct {p2, p1}, Lcom/solodroid/ads/sdk/format/NativeAdViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 135
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00de

    invoke-virtual {p2, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 136
    new-instance p2, Lcom/app/thestream/adapters/AdapterChannel$ProgressViewHolder;

    invoke-direct {p2, p1}, Lcom/app/thestream/adapters/AdapterChannel$ProgressViewHolder;-><init>(Landroid/view/View;)V

    :goto_1
    return-object p2
.end method

.method public resetListData()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterChannel;->notifyDataSetChanged()V

    return-void
.end method

.method public setLoaded()V
    .locals 2

    const/4 v0, 0x0

    .line 282
    iput-boolean v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->loading:Z

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 286
    invoke-virtual {p0, v0}, Lcom/app/thestream/adapters/AdapterChannel;->notifyItemRemoved(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLoading()V
    .locals 2

    .line 292
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/app/thestream/adapters/AdapterChannel;->items:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p0}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/app/thestream/adapters/AdapterChannel;->notifyItemInserted(I)V

    .line 295
    iput-boolean v1, p0, Lcom/app/thestream/adapters/AdapterChannel;->loading:Z

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemClickListener"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel;->mOnItemClickListener:Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;

    return-void
.end method

.method public setOnItemOverflowClickListener(Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mItemOverflowClickListener"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel;->mOnItemOverflowClickListener:Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;

    return-void
.end method

.method public setOnLoadMoreListener(Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onLoadMoreListener"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/app/thestream/adapters/AdapterChannel;->onLoadMoreListener:Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;

    return-void
.end method
