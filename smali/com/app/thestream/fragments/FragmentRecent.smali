.class public Lcom/app/thestream/fragments/FragmentRecent;
.super Landroidx/fragment/app/Fragment;
.source "FragmentRecent.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

.field private failed_page:I

.field private lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field parent_view:Landroid/widget/LinearLayout;

.field private post_total:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field root_view:Landroid/view/View;

.field private sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->post_total:I

    .line 56
    iput v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->failed_page:I

    .line 57
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private displayApiResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "channels"
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

    .line 145
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v0, p1}, Lcom/app/thestream/adapters/AdapterChannel;->insertDataWithNativeAd(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentRecent;->swipeProgress(Z)V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 148
    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->showNoItemView(Z)V

    :cond_0
    return-void
.end method

.method private initShimmerLayout()V
    .locals 7

    .line 247
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const v1, 0x7f0a01a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const v2, 0x7f0a01a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const v3, 0x7f0a01a5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 250
    iget-object v3, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v3, :cond_0

    .line 251
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v3, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 255
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 257
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v3, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 259
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onFailRequest(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page_no"
        }
    .end annotation

    .line 176
    iput p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->failed_page:I

    .line 177
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {p1}, Lcom/app/thestream/adapters/AdapterChannel;->setLoaded()V

    const/4 p1, 0x0

    .line 178
    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->swipeProgress(Z)V

    .line 179
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/app/thestream/utils/Tools;->isConnect(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const p1, 0x7f1200b1

    .line 180
    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->showFailedView(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120101

    .line 182
    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->showFailedView(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestAction(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "page_no"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    .line 187
    invoke-direct {p0, v0, v1}, Lcom/app/thestream/fragments/FragmentRecent;->showFailedView(ZLjava/lang/String;)V

    .line 188
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentRecent;->showNoItemView(Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 190
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentRecent;->swipeProgress(Z)V

    goto :goto_0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v0}, Lcom/app/thestream/adapters/AdapterChannel;->setLoading()V

    .line 194
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda6;-><init>(Lcom/app/thestream/fragments/FragmentRecent;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestListPostApi(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "page_no"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/thestream/rests/RestAdapter;->createAPI(Ljava/lang/String;)Lcom/app/thestream/rests/ApiInterface;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentRecent;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/16 v2, 0xc

    const-string v3, "cda11bx8aITlKsXCpNB7yVLnOdEGqg342ZFrQzJRetkSoUMi9w"

    invoke-interface {v0, p1, v2, v3}, Lcom/app/thestream/rests/ApiInterface;->getRecentChannel(IILjava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 155
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 156
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v2, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda5;-><init>(Lcom/app/thestream/fragments/FragmentRecent;I)V

    .line 157
    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 154
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private showFailedView(ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "show",
            "message"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const v2, 0x7f0a0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 215
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 217
    :goto_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const p2, 0x7f0a0151

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/fragments/FragmentRecent;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showNoItemView(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const v1, 0x7f0a019f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const v2, 0x7f0a01fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120102

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 225
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 228
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private swipeProgress(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "show"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 235
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda7;-><init>(Lcom/app/thestream/fragments/FragmentRecent;Z)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addFavorite()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    new-instance v1, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda4;-><init>(Lcom/app/thestream/fragments/FragmentRecent;)V

    invoke-virtual {v0, v1}, Lcom/app/thestream/adapters/AdapterChannel;->setOnItemOverflowClickListener(Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;)V

    return-void
.end method

.method synthetic lambda$addFavorite$3$com-app-thestream-fragments-FragmentRecent(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    .line 170
    new-instance p3, Lcom/app/thestream/utils/PopupMenu;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->activity:Landroid/app/Activity;

    invoke-direct {p3, v0}, Lcom/app/thestream/utils/PopupMenu;-><init>(Landroid/app/Activity;)V

    .line 171
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->parent_view:Landroid/widget/LinearLayout;

    invoke-virtual {p3, p1, p2, v0}, Lcom/app/thestream/utils/PopupMenu;->onClickItemOverflow(Landroid/view/View;Lcom/app/thestream/models/Channel;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreateView$0$com-app-thestream-fragments-FragmentRecent(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    .line 102
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentRecent;->activity:Landroid/app/Activity;

    const-class v0, Lcom/app/thestream/activities/ActivityChannelDetail;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "key.EXTRA_OBJC"

    .line 103
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {p1}, Lcom/app/thestream/activities/MainActivity;->showInterstitialAd()V

    .line 106
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {p1}, Lcom/app/thestream/activities/MainActivity;->destroyBannerAd()V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-app-thestream-fragments-FragmentRecent()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 116
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v0}, Lcom/app/thestream/adapters/AdapterChannel;->resetListData()V

    const/4 v0, 0x1

    .line 119
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentRecent;->requestAction(I)V

    return-void
.end method

.method synthetic lambda$requestAction$4$com-app-thestream-fragments-FragmentRecent(I)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->requestListPostApi(I)V

    return-void
.end method

.method synthetic lambda$requestListPostApi$2$com-app-thestream-fragments-FragmentRecent(ILcom/app/thestream/callbacks/CallbackChannel;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 158
    iget-object p3, p2, Lcom/app/thestream/callbacks/CallbackChannel;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 159
    iget p1, p2, Lcom/app/thestream/callbacks/CallbackChannel;->count_total:I

    iput p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->post_total:I

    .line 160
    iget-object p1, p2, Lcom/app/thestream/callbacks/CallbackChannel;->posts:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->displayApiResult(Ljava/util/List;)V

    .line 161
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentRecent;->addFavorite()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->onFailRequest(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showFailedView$5$com-app-thestream-fragments-FragmentRecent(Landroid/view/View;)V
    .locals 0

    .line 217
    iget p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->failed_page:I

    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->requestAction(I)V

    return-void
.end method

.method synthetic lambda$swipeProgress$6$com-app-thestream-fragments-FragmentRecent(Z)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 241
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 242
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->startShimmer()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 65
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    const p3, 0x7f0d0057

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    .line 72
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentRecent;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 73
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const p2, 0x7f0a0213

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->parent_view:Landroid/widget/LinearLayout;

    .line 74
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const p2, 0x7f0a0252

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 75
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentRecent;->initShimmerLayout()V

    .line 77
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const p2, 0x7f0a0282

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    new-array p3, p2, [I

    const v1, 0x7f060053

    aput v1, p3, v0

    .line 78
    invoke-virtual {p1, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 79
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    const p3, 0x7f0a0226

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p3, p2, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    .line 84
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v1, p3, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p3, :cond_2

    .line 86
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {p3, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 89
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentRecent;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0701f0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 90
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentRecent;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_3

    .line 91
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0, p1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1, p1, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 97
    :goto_1
    new-instance p1, Lcom/app/thestream/adapters/AdapterChannel;

    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentRecent;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p3, v0, v1}, Lcom/app/thestream/adapters/AdapterChannel;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    .line 98
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentRecent;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 101
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    new-instance p3, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/fragments/FragmentRecent;)V

    invoke-virtual {p1, p3}, Lcom/app/thestream/adapters/AdapterChannel;->setOnItemClickListener(Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    new-instance p3, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/fragments/FragmentRecent;)V

    invoke-virtual {p1, p3}, Lcom/app/thestream/adapters/AdapterChannel;->setOnLoadMoreListener(Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;)V

    .line 113
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p3, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/app/thestream/fragments/FragmentRecent$$ExternalSyntheticLambda3;-><init>(Lcom/app/thestream/fragments/FragmentRecent;)V

    invoke-virtual {p1, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 122
    invoke-direct {p0, p2}, Lcom/app/thestream/fragments/FragmentRecent;->requestAction(I)V

    .line 124
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->root_view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 199
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentRecent;->swipeProgress(Z)V

    .line 201
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 141
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setLoadMore(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "current_page"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v0}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    .line 131
    iget v1, p0, Lcom/app/thestream/fragments/FragmentRecent;->post_total:I

    if-le v1, v0, :cond_0

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 133
    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentRecent;->requestAction(I)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentRecent;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {p1}, Lcom/app/thestream/adapters/AdapterChannel;->setLoaded()V

    :goto_0
    return-void
.end method
