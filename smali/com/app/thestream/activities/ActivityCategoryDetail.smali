.class public Lcom/app/thestream/activities/ActivityCategoryDetail;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityCategoryDetail.java"


# instance fields
.field private adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

.field adsManager:Lcom/app/thestream/utils/AdsManager;

.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field private category:Lcom/app/thestream/models/Category;

.field private failed_page:I

.field private lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private post_total:I

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 53
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->post_total:I

    .line 55
    iput v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->failed_page:I

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

    .line 181
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v0, p1}, Lcom/app/thestream/adapters/AdapterChannel;->insertDataWithNativeAd(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeProgress(Z)V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 184
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->showNoItemView(Z)V

    :cond_0
    return-void
.end method

.method private initShimmerLayout()V
    .locals 7

    const v0, 0x7f0a01a6

    .line 266
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01a4

    .line 267
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01a5

    .line 268
    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v3, :cond_0

    .line 270
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 272
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object v3, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 274
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 276
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v3, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 278
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 280
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

    .line 205
    iput p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->failed_page:I

    .line 206
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {p1}, Lcom/app/thestream/adapters/AdapterChannel;->setLoaded()V

    const/4 p1, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeProgress(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/app/thestream/utils/Tools;->isConnect(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const p1, 0x7f1200b1

    .line 209
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->showFailedView(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f120101

    .line 211
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->showFailedView(ZLjava/lang/String;)V

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

    .line 216
    invoke-direct {p0, v0, v1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->showFailedView(ZLjava/lang/String;)V

    .line 217
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->showNoItemView(Z)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 219
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeProgress(Z)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v0}, Lcom/app/thestream/adapters/AdapterChannel;->setLoading()V

    .line 223
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda6;-><init>(Lcom/app/thestream/activities/ActivityCategoryDetail;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestPostApi(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "page_no"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/thestream/rests/RestAdapter;->createAPI(Ljava/lang/String;)Lcom/app/thestream/rests/ApiInterface;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->category:Lcom/app/thestream/models/Category;

    iget v2, v2, Lcom/app/thestream/models/Category;->cid:I

    const/16 v3, 0xc

    const-string v4, "cda11bx8aITlKsXCpNB7yVLnOdEGqg342ZFrQzJRetkSoUMi9w"

    invoke-interface {v0, v2, p1, v3, v4}, Lcom/app/thestream/rests/ApiInterface;->getChannelByCategory(IIILjava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 191
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 192
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v2, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda5;-><init>(Lcom/app/thestream/activities/ActivityCategoryDetail;I)V

    .line 193
    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 190
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private showFailedView(ZLjava/lang/String;)V
    .locals 2
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

    const v0, 0x7f0a0197

    .line 227
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0150

    .line 228
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a0151

    .line 236
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda3;-><init>(Lcom/app/thestream/activities/ActivityCategoryDetail;)V

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

    const v0, 0x7f0a019d

    .line 240
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01fb

    .line 241
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120102

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 243
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 244
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 247
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

    .line 253
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 254
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 255
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda4;-><init>(Lcom/app/thestream/activities/ActivityCategoryDetail;Z)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addFavorite()V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    new-instance v1, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda7;-><init>(Lcom/app/thestream/activities/ActivityCategoryDetail;)V

    invoke-virtual {v0, v1}, Lcom/app/thestream/adapters/AdapterChannel;->setOnItemOverflowClickListener(Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;)V

    return-void
.end method

.method synthetic lambda$addFavorite$6$com-app-thestream-activities-ActivityCategoryDetail(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    .line 286
    new-instance p3, Lcom/app/thestream/utils/PopupMenu;

    invoke-direct {p3, p0}, Lcom/app/thestream/utils/PopupMenu;-><init>(Landroid/app/Activity;)V

    .line 287
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p3, p1, p2, v0}, Lcom/app/thestream/utils/PopupMenu;->onClickItemOverflow(Landroid/view/View;Lcom/app/thestream/models/Channel;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-app-thestream-activities-ActivityCategoryDetail(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    .line 107
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/app/thestream/activities/ActivityChannelDetail;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "key.EXTRA_OBJC"

    .line 108
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->startActivity(Landroid/content/Intent;)V

    .line 110
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1}, Lcom/app/thestream/utils/AdsManager;->showInterstitialAd()V

    .line 111
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-app-thestream-activities-ActivityCategoryDetail()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 121
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v0}, Lcom/app/thestream/adapters/AdapterChannel;->resetListData()V

    const/4 v0, 0x1

    .line 124
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->requestAction(I)V

    return-void
.end method

.method synthetic lambda$requestAction$3$com-app-thestream-activities-ActivityCategoryDetail(I)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->requestPostApi(I)V

    return-void
.end method

.method synthetic lambda$requestPostApi$2$com-app-thestream-activities-ActivityCategoryDetail(ILcom/app/thestream/callbacks/CallbackDetailCategory;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 194
    iget-object p3, p2, Lcom/app/thestream/callbacks/CallbackDetailCategory;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 195
    iget p1, p2, Lcom/app/thestream/callbacks/CallbackDetailCategory;->count_total:I

    iput p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->post_total:I

    .line 196
    iget-object p1, p2, Lcom/app/thestream/callbacks/CallbackDetailCategory;->posts:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->displayApiResult(Ljava/util/List;)V

    .line 197
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->addFavorite()V

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->onFailRequest(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$showFailedView$4$com-app-thestream-activities-ActivityCategoryDetail(Landroid/view/View;)V
    .locals 0

    .line 236
    iget p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->failed_page:I

    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->requestAction(I)V

    return-void
.end method

.method synthetic lambda$swipeProgress$5$com-app-thestream-activities-ActivityCategoryDetail(Z)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 260
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 261
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->startShimmer()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 310
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 311
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 64
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    const p1, 0x7f0d001c

    .line 66
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->setContentView(I)V

    .line 67
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    .line 69
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 70
    new-instance p1, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 72
    new-instance p1, Lcom/app/thestream/utils/AdsManager;

    invoke-direct {p1, p0}, Lcom/app/thestream/utils/AdsManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Lcom/app/thestream/utils/AdsManager;->loadBannerAd(I)V

    .line 74
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getInterstitialAdInterval()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/app/thestream/utils/AdsManager;->loadInterstitialAd(II)V

    .line 76
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "key.EXTRA_OBJC"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/app/thestream/models/Category;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->category:Lcom/app/thestream/models/Category;

    const p1, 0x7f0a0252

    .line 78
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 79
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->initShimmerLayout()V

    const p1, 0x7f0a0282

    .line 81
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v1, v0, [I

    const v2, 0x7f060053

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 82
    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    const p1, 0x7f0a0226

    .line 84
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 86
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v1, v0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    .line 89
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v2, v1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 91
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701f0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 95
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v3, p1, v3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_1

    .line 98
    :cond_3
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1, p1, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 102
    :goto_1
    new-instance p1, Lcom/app/thestream/adapters/AdapterChannel;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v1, v2}, Lcom/app/thestream/adapters/AdapterChannel;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    .line 103
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 106
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    new-instance v1, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/ActivityCategoryDetail;)V

    invoke-virtual {p1, v1}, Lcom/app/thestream/adapters/AdapterChannel;->setOnItemClickListener(Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    new-instance v1, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivityCategoryDetail;)V

    invoke-virtual {p1, v1}, Lcom/app/thestream/adapters/AdapterChannel;->setOnLoadMoreListener(Lcom/app/thestream/adapters/AdapterChannel$OnLoadMoreListener;)V

    .line 118
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityCategoryDetail$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/activities/ActivityCategoryDetail;)V

    invoke-virtual {p1, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 127
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->requestAction(I)V

    .line 129
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->setupToolbar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menu"
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 299
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->swipeProgress(Z)V

    .line 301
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 305
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0243

    if-eq v0, v1, :cond_0

    .line 176
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 170
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/app/thestream/activities/ActivitySearch;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->startActivity(Landroid/content/Intent;)V

    .line 172
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return v2

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->onBackPressed()V

    return v2
.end method

.method protected onResume()V
    .locals 2

    .line 293
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 294
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/AdsManager;->resumeBannerAd(I)V

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

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v0}, Lcom/app/thestream/adapters/AdapterChannel;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    .line 137
    iget v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->post_total:I

    if-le v1, v0, :cond_0

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 139
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityCategoryDetail;->requestAction(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {p1}, Lcom/app/thestream/adapters/AdapterChannel;->setLoaded()V

    :goto_0
    return-void
.end method

.method public setupToolbar()V
    .locals 2

    const v0, 0x7f0a02b1

    .line 146
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 147
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 148
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 151
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityCategoryDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityCategoryDetail;->category:Lcom/app/thestream/models/Category;

    iget-object v1, v1, Lcom/app/thestream/models/Category;->category_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
