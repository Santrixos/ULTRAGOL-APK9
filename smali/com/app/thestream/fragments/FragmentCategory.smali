.class public Lcom/app/thestream/fragments/FragmentCategory;
.super Landroidx/fragment/app/Fragment;
.source "FragmentCategory.java"


# static fields
.field public static final EXTRA_OBJC:Ljava/lang/String; = "key.EXTRA_OBJC"


# instance fields
.field private activity:Landroid/app/Activity;

.field private adapterCategory:Lcom/app/thestream/adapters/AdapterCategory;

.field private lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private root_view:Landroid/view/View;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field private swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public static synthetic $r8$lambda$PgluNeGHYb767MQdkMQkc0UoEKY(Lcom/app/thestream/fragments/FragmentCategory;)V
    .locals 0

    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentCategory;->requestCategoriesApi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private displayApiResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "categories"
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

    .line 118
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->adapterCategory:Lcom/app/thestream/adapters/AdapterCategory;

    invoke-virtual {v0, p1}, Lcom/app/thestream/adapters/AdapterCategory;->setListData(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentCategory;->swipeProgress(Z)V

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 121
    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentCategory;->showNoItemView(Z)V

    :cond_0
    return-void
.end method

.method private initShimmerLayout()V
    .locals 7

    .line 205
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const v1, 0x7f0a01a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const v2, 0x7f0a01a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 207
    iget-object v2, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const v3, 0x7f0a01a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 208
    iget-object v3, p0, Lcom/app/thestream/fragments/FragmentCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v3, :cond_0

    .line 209
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 210
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 211
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/app/thestream/fragments/FragmentCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 213
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 215
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/app/thestream/fragments/FragmentCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 217
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onFailRequest()V
    .locals 2

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentCategory;->swipeProgress(Z)V

    .line 141
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/app/thestream/utils/Tools;->isConnect(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f1200b1

    .line 142
    invoke-virtual {p0, v0}, Lcom/app/thestream/fragments/FragmentCategory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/app/thestream/fragments/FragmentCategory;->showFailedView(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120101

    .line 144
    invoke-virtual {p0, v0}, Lcom/app/thestream/fragments/FragmentCategory;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/app/thestream/fragments/FragmentCategory;->showFailedView(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestAction()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    .line 149
    invoke-direct {p0, v0, v1}, Lcom/app/thestream/fragments/FragmentCategory;->showFailedView(ZLjava/lang/String;)V

    const/4 v1, 0x1

    .line 150
    invoke-direct {p0, v1}, Lcom/app/thestream/fragments/FragmentCategory;->swipeProgress(Z)V

    .line 151
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentCategory;->showNoItemView(Z)V

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda5;-><init>(Lcom/app/thestream/fragments/FragmentCategory;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestCategoriesApi()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/thestream/rests/RestAdapter;->createAPI(Ljava/lang/String;)Lcom/app/thestream/rests/ApiInterface;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentCategory;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const-string v2, "cda11bx8aITlKsXCpNB7yVLnOdEGqg342ZFrQzJRetkSoUMi9w"

    invoke-interface {v0, v2}, Lcom/app/thestream/rests/ApiInterface;->getAllCategories(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 128
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 129
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v2, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/fragments/FragmentCategory;)V

    .line 130
    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

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
            "flag",
            "message"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const v1, 0x7f0a0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const v2, 0x7f0a0150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 173
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :goto_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const p2, 0x7f0a0151

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/fragments/FragmentCategory;)V

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

    .line 179
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const v1, 0x7f0a019e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const v2, 0x7f0a01fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1200ff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 183
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 186
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

    .line 192
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 193
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/fragments/FragmentCategory;Z)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreateView$0$com-app-thestream-fragments-FragmentCategory(Landroid/view/View;Lcom/app/thestream/models/Category;I)V
    .locals 1

    .line 95
    new-instance p1, Landroid/content/Intent;

    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentCategory;->activity:Landroid/app/Activity;

    const-class v0, Lcom/app/thestream/activities/ActivityCategoryDetail;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "key.EXTRA_OBJC"

    .line 96
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentCategory;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {p1}, Lcom/app/thestream/activities/MainActivity;->showInterstitialAd()V

    .line 99
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {p1}, Lcom/app/thestream/activities/MainActivity;->destroyBannerAd()V

    return-void
.end method

.method synthetic lambda$onCreateView$1$com-app-thestream-fragments-FragmentCategory()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 106
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->adapterCategory:Lcom/app/thestream/adapters/AdapterCategory;

    invoke-virtual {v0}, Lcom/app/thestream/adapters/AdapterCategory;->resetListData()V

    .line 109
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentCategory;->requestAction()V

    return-void
.end method

.method synthetic lambda$requestCategoriesApi$2$com-app-thestream-fragments-FragmentCategory(Lcom/app/thestream/callbacks/CallbackCategories;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 131
    iget-object p2, p1, Lcom/app/thestream/callbacks/CallbackCategories;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 132
    iget-object p1, p1, Lcom/app/thestream/callbacks/CallbackCategories;->categories:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentCategory;->displayApiResult(Ljava/util/List;)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentCategory;->onFailRequest()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showFailedView$3$com-app-thestream-fragments-FragmentCategory(Landroid/view/View;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentCategory;->requestAction()V

    return-void
.end method

.method synthetic lambda$swipeProgress$4$com-app-thestream-fragments-FragmentCategory(Z)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 199
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

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

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 61
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->activity:Landroid/app/Activity;

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

    const p3, 0x7f0d0055

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    .line 68
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentCategory;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 70
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const p2, 0x7f0a0252

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 71
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentCategory;->initShimmerLayout()V

    .line 73
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const p2, 0x7f0a0283

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 p2, 0x1

    new-array p3, p2, [I

    const v1, 0x7f060053

    aput v1, p3, v0

    .line 74
    invoke-virtual {p1, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 76
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    const p3, 0x7f0a0227

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 78
    new-instance p1, Lcom/app/thestream/utils/ItemOffsetDecoration;

    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentCategory;->activity:Landroid/app/Activity;

    const v0, 0x7f0700f4

    invoke-direct {p1, p3, v0}, Lcom/app/thestream/utils/ItemOffsetDecoration;-><init>(Landroid/content/Context;I)V

    .line 79
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p3}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_0

    .line 80
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {p3, p2, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p3}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, p2, :cond_1

    .line 82
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v1, v0, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentCategory;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p3}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_2

    .line 85
    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 90
    :cond_2
    :goto_0
    new-instance p1, Lcom/app/thestream/adapters/AdapterCategory;

    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentCategory;->activity:Landroid/app/Activity;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p2, p3}, Lcom/app/thestream/adapters/AdapterCategory;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->adapterCategory:Lcom/app/thestream/adapters/AdapterCategory;

    .line 91
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentCategory;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->adapterCategory:Lcom/app/thestream/adapters/AdapterCategory;

    new-instance p2, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda3;-><init>(Lcom/app/thestream/fragments/FragmentCategory;)V

    invoke-virtual {p1, p2}, Lcom/app/thestream/adapters/AdapterCategory;->setOnItemClickListener(Lcom/app/thestream/adapters/AdapterCategory$OnItemClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->swipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance p2, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/app/thestream/fragments/FragmentCategory$$ExternalSyntheticLambda4;-><init>(Lcom/app/thestream/fragments/FragmentCategory;)V

    invoke-virtual {p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 112
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentCategory;->requestAction()V

    .line 114
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentCategory;->root_view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 157
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentCategory;->swipeProgress(Z)V

    .line 159
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentCategory;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    return-void
.end method
