.class public Lcom/app/thestream/activities/ActivitySearch;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivitySearch.java"


# instance fields
.field private adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

.field adsManager:Lcom/app/thestream/utils/AdsManager;

.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field private bt_clear:Landroid/widget/ImageButton;

.field private et_search:Landroid/widget/EditText;

.field private lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field parent_view:Landroid/widget/RelativeLayout;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field snackbar:Lcom/google/android/material/snackbar/Snackbar;

.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 60
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 144
    new-instance v0, Lcom/app/thestream/activities/ActivitySearch$1;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivitySearch$1;-><init>(Lcom/app/thestream/activities/ActivitySearch;)V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->textWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/app/thestream/activities/ActivitySearch;)Landroid/widget/ImageButton;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/app/thestream/activities/ActivitySearch;->bt_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private hideKeyboard()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    .line 237
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivitySearch;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private initShimmerLayout()V
    .locals 7

    const v0, 0x7f0a01a6

    .line 278
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01a4

    .line 279
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a01a5

    .line 280
    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 281
    iget-object v3, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-nez v3, :cond_0

    .line 282
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 283
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 284
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 286
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 287
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 288
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v3, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    .line 290
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 291
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 292
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onFailRequest()V
    .locals 2

    .line 198
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->isConnect(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f1200b1

    .line 199
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivitySearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/app/thestream/activities/ActivitySearch;->showFailedView(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120101

    .line 201
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivitySearch;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/app/thestream/activities/ActivitySearch;->showFailedView(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestSearchApi(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/thestream/rests/RestAdapter;->createAPI(Ljava/lang/String;)Lcom/app/thestream/rests/ApiInterface;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/16 v2, 0x64

    const-string v3, "cda11bx8aITlKsXCpNB7yVLnOdEGqg342ZFrQzJRetkSoUMi9w"

    invoke-interface {v0, p1, v2, v3}, Lcom/app/thestream/rests/ApiInterface;->getSearchChannel(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 166
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 167
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda7;-><init>(Lcom/app/thestream/activities/ActivitySearch;)V

    .line 168
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 165
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private requestSearchApiRTL(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/thestream/rests/RestAdapter;->createAPI(Ljava/lang/String;)Lcom/app/thestream/rests/ApiInterface;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const/16 v2, 0x64

    const-string v3, "cda11bx8aITlKsXCpNB7yVLnOdEGqg342ZFrQzJRetkSoUMi9w"

    invoke-interface {v0, p1, v2, v3}, Lcom/app/thestream/rests/ApiInterface;->getSearchChannelRTL(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 183
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 184
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/ActivitySearch;)V

    .line 185
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 182
    invoke-virtual {v1, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private searchAction()V
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    .line 206
    invoke-direct {p0, v0, v1}, Lcom/app/thestream/activities/ActivitySearch;->showFailedView(ZLjava/lang/String;)V

    .line 207
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivitySearch;->showNotFoundView(Z)V

    .line 208
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    invoke-virtual {v1}, Lcom/app/thestream/adapters/AdapterChannel;->resetListData()V

    const/4 v1, 0x1

    .line 211
    invoke-direct {p0, v1}, Lcom/app/thestream/activities/ActivitySearch;->swipeProgress(Z)V

    .line 212
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda5;-><init>(Lcom/app/thestream/activities/ActivitySearch;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->parent_view:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 221
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_0
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

    .line 243
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0150

    .line 244
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 250
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a0151

    .line 252
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda4;-><init>(Lcom/app/thestream/activities/ActivitySearch;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showNotFoundView(Z)V
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

    .line 256
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a01fb

    .line 257
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120103

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 260
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private swipeProgress(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "show"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 270
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 273
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->startShimmer()V

    :goto_0
    return-void
.end method


# virtual methods
.method public addFavorite()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    new-instance v1, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda6;-><init>(Lcom/app/thestream/activities/ActivitySearch;)V

    invoke-virtual {v0, v1}, Lcom/app/thestream/adapters/AdapterChannel;->setOnItemOverflowClickListener(Lcom/app/thestream/adapters/AdapterChannel$OnItemOverflowClickListener;)V

    return-void
.end method

.method synthetic lambda$addFavorite$7$com-app-thestream-activities-ActivitySearch(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    .line 298
    new-instance p3, Lcom/app/thestream/utils/PopupMenu;

    invoke-direct {p3, p0}, Lcom/app/thestream/utils/PopupMenu;-><init>(Landroid/app/Activity;)V

    .line 299
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->parent_view:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p1, p2, v0}, Lcom/app/thestream/utils/PopupMenu;->onClickItemOverflow(Landroid/view/View;Lcom/app/thestream/models/Channel;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-app-thestream-activities-ActivitySearch(Landroid/view/View;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->et_search:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$onCreate$1$com-app-thestream-activities-ActivitySearch(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySearch;->hideKeyboard()V

    .line 115
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySearch;->searchAction()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method synthetic lambda$onCreate$2$com-app-thestream-activities-ActivitySearch(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    .line 122
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/app/thestream/activities/ActivityChannelDetail;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "key.EXTRA_OBJC"

    .line 123
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->startActivity(Landroid/content/Intent;)V

    .line 125
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1}, Lcom/app/thestream/utils/AdsManager;->showInterstitialAd()V

    .line 126
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return-void
.end method

.method synthetic lambda$requestSearchApi$3$com-app-thestream-activities-ActivitySearch(Lcom/app/thestream/callbacks/CallbackChannel;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 169
    iget-object p2, p1, Lcom/app/thestream/callbacks/CallbackChannel;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 170
    iget-object p2, p0, Lcom/app/thestream/activities/ActivitySearch;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    iget-object v0, p1, Lcom/app/thestream/callbacks/CallbackChannel;->posts:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/app/thestream/adapters/AdapterChannel;->insertData(Ljava/util/List;)V

    .line 171
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->addFavorite()V

    .line 172
    iget-object p1, p1, Lcom/app/thestream/callbacks/CallbackChannel;->posts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->showNotFoundView(Z)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySearch;->onFailRequest()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 176
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->swipeProgress(Z)V

    return-void
.end method

.method synthetic lambda$requestSearchApiRTL$4$com-app-thestream-activities-ActivitySearch(Lcom/app/thestream/callbacks/CallbackChannel;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 186
    iget-object p2, p1, Lcom/app/thestream/callbacks/CallbackChannel;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 187
    iget-object p2, p0, Lcom/app/thestream/activities/ActivitySearch;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    iget-object v0, p1, Lcom/app/thestream/callbacks/CallbackChannel;->posts:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/app/thestream/adapters/AdapterChannel;->insertData(Ljava/util/List;)V

    .line 188
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->addFavorite()V

    .line 189
    iget-object p1, p1, Lcom/app/thestream/callbacks/CallbackChannel;->posts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->showNotFoundView(Z)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySearch;->onFailRequest()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 193
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->swipeProgress(Z)V

    return-void
.end method

.method synthetic lambda$searchAction$5$com-app-thestream-activities-ActivitySearch(Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->requestSearchApi(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$showFailedView$6$com-app-thestream-activities-ActivitySearch(Landroid/view/View;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySearch;->searchAction()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->et_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->et_search:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 320
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    :goto_0
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

    .line 68
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    const p1, 0x7f0d0022

    .line 70
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->setContentView(I)V

    .line 71
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    .line 73
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 74
    new-instance p1, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 76
    new-instance p1, Lcom/app/thestream/utils/AdsManager;

    invoke-direct {p1, p0}, Lcom/app/thestream/utils/AdsManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->adsManager:Lcom/app/thestream/utils/AdsManager;

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Lcom/app/thestream/utils/AdsManager;->loadBannerAd(I)V

    .line 78
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->adsManager:Lcom/app/thestream/utils/AdsManager;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getInterstitialAdInterval()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/app/thestream/utils/AdsManager;->loadInterstitialAd(II)V

    const p1, 0x7f0a0213

    .line 80
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->parent_view:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0117

    .line 81
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->et_search:Landroid/widget/EditText;

    const p1, 0x7f0a00ba

    .line 82
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->bt_clear:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    .line 83
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const p1, 0x7f0a0252

    .line 84
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    .line 85
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySearch;->initShimmerLayout()V

    const/4 p1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivitySearch;->swipeProgress(Z)V

    const v1, 0x7f0a0226

    .line 87
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v2, v0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v0, :cond_1

    .line 92
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-direct {v3, v2, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 94
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;-><init>(II)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 97
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    .line 99
    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1, v0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_1

    .line 101
    :cond_3
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 104
    :goto_1
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->et_search:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    new-instance p1, Lcom/app/thestream/adapters/AdapterChannel;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p0, v0, v1}, Lcom/app/thestream/adapters/AdapterChannel;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    .line 108
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->bt_clear:Landroid/widget/ImageButton;

    new-instance v0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivitySearch;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->et_search:Landroid/widget/EditText;

    new-instance v0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/activities/ActivitySearch;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 121
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySearch;->adapterChannel:Lcom/app/thestream/adapters/AdapterChannel;

    new-instance v0, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivitySearch$$ExternalSyntheticLambda3;-><init>(Lcom/app/thestream/activities/ActivitySearch;)V

    invoke-virtual {p1, v0}, Lcom/app/thestream/adapters/AdapterChannel;->setOnItemClickListener(Lcom/app/thestream/adapters/AdapterChannel$OnItemClickListener;)V

    .line 129
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->setupToolbar()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 310
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 311
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "menuItem"
        }
    .end annotation

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 231
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 305
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 306
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySearch;->adsManager:Lcom/app/thestream/utils/AdsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/AdsManager;->resumeBannerAd(I)V

    return-void
.end method

.method public setupToolbar()V
    .locals 2

    const v0, 0x7f0a02b1

    .line 134
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivitySearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 135
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivitySearch;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 136
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySearch;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
