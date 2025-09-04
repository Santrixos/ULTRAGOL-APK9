.class public Lcom/app/thestream/adapters/MainStreamingAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MainStreamingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private streamingLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/StreamingLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/StreamingLink;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/app/thestream/adapters/MainStreamingAdapter;->streamingLinks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    iget-object p2, p0, Lcom/app/thestream/adapters/MainStreamingAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00ab    # @layout/item_streaming_main

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;-><init>(Lcom/app/thestream/adapters/MainStreamingAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onBindViewHolder(Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;I)V
    .locals 2
    .param p1    # Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 36
    iget-object v0, p0, Lcom/app/thestream/adapters/MainStreamingAdapter;->streamingLinks:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/app/thestream/models/StreamingLink;

    .line 38
    iget-object v0, p1, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->tvStreamerName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/app/thestream/models/StreamingLink;->getStreamerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p1, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->tvPlatformName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/app/thestream/models/StreamingLink;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/app/thestream/adapters/MainStreamingAdapter;->getPlatformDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p1, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->ivPlatformIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/app/thestream/models/StreamingLink;->getPlatform()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/app/thestream/adapters/MainStreamingAdapter;->setPlatformIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 43
    iget-object v0, p1, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->btnWatch:Landroid/widget/Button;

    new-instance v1, Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/adapters/MainStreamingAdapter;Lcom/app/thestream/models/StreamingLink;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p1, p1, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/app/thestream/adapters/MainStreamingAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/adapters/MainStreamingAdapter;Lcom/app/thestream/models/StreamingLink;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/app/thestream/adapters/MainStreamingAdapter;->streamingLinks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateStreamingLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/app/thestream/models/StreamingLink;",
            ">;)V"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter;->streamingLinks:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getPlatformDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "Otra"

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "youtube"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v0, "twitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v0, "tiktok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "instagram"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "facebook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, "Otro"

    return-object p1

    :pswitch_0
    const-string p1, "TikTok"

    return-object p1

    :pswitch_1
    const-string p1, "Twitch"

    return-object p1

    :pswitch_2
    const-string p1, "Instagram"

    return-object p1

    :pswitch_3
    const-string p1, "Facebook"

    return-object p1

    :pswitch_4
    const-string p1, "YouTube"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x3e4cc8b4 -> :sswitch_4
        -0x32bbef50 -> :sswitch_3
        -0xf1eb3b3 -> :sswitch_2
        -0xb3c562e -> :sswitch_1
        -0x8a7b2ee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPlatformIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1080024    # @android:drawable/ic_media_play

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private openStreamingLink(Ljava/lang/String;)V
    .locals 3

    .line 79
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    iget-object p1, p0, Lcom/app/thestream/adapters/MainStreamingAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    iget-object v0, p0, Lcom/app/thestream/adapters/MainStreamingAdapter;->context:Landroid/content/Context;

    const-string v1, "Error al abrir el enlace"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$onBindViewHolder$0(Lcom/app/thestream/adapters/MainStreamingAdapter;Lcom/app/thestream/models/StreamingLink;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Lcom/app/thestream/models/StreamingLink;->getStreamUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/app/thestream/adapters/MainStreamingAdapter;->openStreamingLink(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onBindViewHolder$1(Lcom/app/thestream/adapters/MainStreamingAdapter;Lcom/app/thestream/models/StreamingLink;Landroid/view/View;)V
    .locals 0

    .line 44
    invoke-virtual {p1}, Lcom/app/thestream/models/StreamingLink;->getStreamUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/app/thestream/adapters/MainStreamingAdapter;->openStreamingLink(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/app/thestream/adapters/MainStreamingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/app/thestream/adapters/MainStreamingAdapter;->onBindViewHolder(Lcom/app/thestream/adapters/MainStreamingAdapter$ViewHolder;I)V

    return-void
.end method