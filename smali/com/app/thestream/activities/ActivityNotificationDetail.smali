.class public Lcom/app/thestream/activities/ActivityNotificationDetail;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityNotificationDetail.java"


# instance fields
.field adsManager:Lcom/app/thestream/utils/AdsManager;

.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field btn_favorite:Landroid/widget/ImageButton;

.field btn_share:Landroid/widget/ImageButton;

.field channel_category:Landroid/widget/TextView;

.field channel_description:Landroid/webkit/WebView;

.field channel_image:Landroid/widget/ImageView;

.field channel_name:Landroid/widget/TextView;

.field private dao:Lcom/app/thestream/databases/dao/DAO;

.field flag_read_later:Z

.field private lyt_main_content:Landroid/widget/LinearLayout;

.field private lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field lyt_suggested:Landroid/widget/RelativeLayout;

.field private mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field private str_channel_id:Ljava/lang/String;

.field private swipe_refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field title_toolbar:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$2ZkbRa2q0wq0q2J_UEGM7oqhE3k(Lcom/app/thestream/activities/ActivityNotificationDetail;)V
    .locals 0

    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->requestPostData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 60
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private displayAllData(Lcom/app/thestream/callbacks/CallbackChannelDetail;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resp"
        }
    .end annotation

    .line 188
    iget-object v0, p1, Lcom/app/thestream/callbacks/CallbackChannelDetail;->post:Lcom/app/thestream/models/Channel;

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->displayData(Lcom/app/thestream/models/Channel;)V

    .line 189
    iget-object p1, p1, Lcom/app/thestream/callbacks/CallbackChannelDetail;->suggested:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->displaySuggested(Ljava/util/List;)V

    return-void
.end method

.method private displaySuggested(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
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

    const v0, 0x7f0a0228

    .line 250
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 251
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 252
    new-instance v1, Lcom/app/thestream/adapters/AdapterSuggested;

    invoke-direct {v1, p0, v0, p1}, Lcom/app/thestream/adapters/AdapterSuggested;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 253
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v2, 0x0

    .line 254
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 255
    new-instance v0, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda6;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;)V

    invoke-virtual {v1, v0}, Lcom/app/thestream/adapters/AdapterSuggested;->setOnItemClickListener(Lcom/app/thestream/adapters/AdapterSuggested$OnItemClickListener;)V

    .line 263
    new-instance v0, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda7;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;)V

    invoke-virtual {v1, v0}, Lcom/app/thestream/adapters/AdapterSuggested;->setOnItemOverflowClickListener(Lcom/app/thestream/adapters/AdapterSuggested$OnItemOverflowClickListener;)V

    const v0, 0x7f0a02c2

    .line 268
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 269
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f120150

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 272
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private initToolbar()V
    .locals 3

    const v0, 0x7f0a02b1

    .line 278
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 279
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 281
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 287
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 290
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private onFailRequest()V
    .locals 3

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->swipeProgress(Z)V

    .line 157
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_main_content:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->isConnect(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f1200b1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->showFailedView(ZLjava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->showFailedView(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private refreshReadLaterMenu(Lcom/app/thestream/models/Channel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object p1, p1, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/app/thestream/databases/dao/DAO;->getChannel(Ljava/lang/String;)Lcom/app/thestream/databases/dao/ChannelEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->flag_read_later:Z

    if-eqz p1, :cond_1

    .line 320
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->btn_favorite:Landroid/widget/ImageButton;

    const v0, 0x7f080167

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->btn_favorite:Landroid/widget/ImageButton;

    const v0, 0x7f080166

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private requestAction()V
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    .line 134
    invoke-direct {p0, v0, v1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->showFailedView(ZLjava/lang/String;)V

    const/4 v0, 0x1

    .line 135
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->swipeProgress(Z)V

    .line 136
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda8;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private requestPostData()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/thestream/rests/RestAdapter;->createAPI(Ljava/lang/String;)Lcom/app/thestream/rests/ApiInterface;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->str_channel_id:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/app/thestream/rests/ApiInterface;->getChannelDetail(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 142
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 143
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v2, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda9;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;)V

    .line 144
    invoke-virtual {v0, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

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

    const v0, 0x7f0a0199

    .line 166
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0150

    .line 167
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 169
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 171
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0a0151

    .line 173
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showInterstitialAd()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getInterstitialAdCounter()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getInterstitialAdInterval()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getInterstitialAdCounter()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/app/thestream/databases/prefs/AdsPref;->updateInterstitialAdCounter(I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0, v2}, Lcom/app/thestream/databases/prefs/AdsPref;->updateInterstitialAdCounter(I)V

    .line 244
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->showInterstitialAd()V

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

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->swipe_refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 179
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1, v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {p1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 181
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_main_content:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_main_content:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public addToFavorite(Lcom/app/thestream/models/Channel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channel"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->btn_favorite:Landroid/widget/ImageButton;

    new-instance v1, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;Lcom/app/thestream/models/Channel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public displayData(Lcom/app/thestream/models/Channel;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "channel"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->title_toolbar:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_name:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_category:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_category:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object v0, p1, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v1, "%20"

    const-string v2, " "

    const-string v3, "/upload/"

    const v4, 0x7f080184

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v5, "YOUTUBE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p1, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 207
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_image:Landroid/widget/ImageView;

    .line 209
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://img.youtube.com/vi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mqdefault.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 213
    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_image:Landroid/widget/ImageView;

    .line 214
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 218
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_image:Landroid/widget/ImageView;

    .line 220
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_image:Landroid/widget/ImageView;

    new-instance v1, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda3;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;Lcom/app/thestream/models/Channel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_description:Landroid/webkit/WebView;

    iget-object v1, p1, Lcom/app/thestream/models/Channel;->channel_description:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/app/thestream/utils/Tools;->displayContent(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->btn_share:Landroid/widget/ImageButton;

    new-instance v1, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda4;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;Lcom/app/thestream/models/Channel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->addToFavorite(Lcom/app/thestream/models/Channel;)V

    .line 233
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->refreshReadLaterMenu(Lcom/app/thestream/models/Channel;)V

    .line 235
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda5;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method synthetic lambda$addToFavorite$8$com-app-thestream-activities-ActivityNotificationDetail(Lcom/app/thestream/models/Channel;Landroid/view/View;)V
    .locals 2

    .line 305
    iget-boolean p2, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->flag_read_later:Z

    if-eqz p2, :cond_0

    .line 306
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object v0, p1, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/app/thestream/databases/dao/DAO;->deleteChannel(Ljava/lang/String;)V

    const p2, 0x7f1200b6

    .line 307
    invoke-virtual {p0, p2}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 309
    :cond_0
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->dao:Lcom/app/thestream/databases/dao/DAO;

    invoke-static {p1}, Lcom/app/thestream/databases/dao/ChannelEntity;->entity(Lcom/app/thestream/models/Channel;)Lcom/app/thestream/databases/dao/ChannelEntity;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/app/thestream/databases/dao/DAO;->insertChannel(Lcom/app/thestream/databases/dao/ChannelEntity;)V

    const p2, 0x7f1200b5

    .line 310
    invoke-virtual {p0, p2}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 312
    :goto_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, -0x1

    invoke-static {v0, p2, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 313
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->refreshReadLaterMenu(Lcom/app/thestream/models/Channel;)V

    return-void
.end method

.method synthetic lambda$displayData$3$com-app-thestream-activities-ActivityNotificationDetail(Lcom/app/thestream/models/Channel;Landroid/view/View;)V
    .locals 0

    .line 224
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-static {p0, p2, p1}, Lcom/app/thestream/utils/Tools;->startPlayer(Landroid/app/Activity;Landroid/view/View;Lcom/app/thestream/models/Channel;)V

    .line 225
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->showInterstitialAd()V

    return-void
.end method

.method synthetic lambda$displayData$4$com-app-thestream-activities-ActivityNotificationDetail(Lcom/app/thestream/models/Channel;Landroid/view/View;)V
    .locals 0

    .line 230
    iget-object p1, p1, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/app/thestream/utils/Tools;->share(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$displayData$5$com-app-thestream-activities-ActivityNotificationDetail()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_suggested:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$displaySuggested$6$com-app-thestream-activities-ActivityNotificationDetail(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    .line 256
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    const-class v0, Lcom/app/thestream/activities/ActivityNotificationDetail;

    invoke-direct {p1, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    iget-object p2, p2, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    const-string p3, "id"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->startActivity(Landroid/content/Intent;)V

    .line 259
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->showInterstitialAd()V

    .line 260
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return-void
.end method

.method synthetic lambda$displaySuggested$7$com-app-thestream-activities-ActivityNotificationDetail(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 1

    .line 264
    new-instance p3, Lcom/app/thestream/utils/PopupMenu;

    invoke-direct {p3, p0}, Lcom/app/thestream/utils/PopupMenu;-><init>(Landroid/app/Activity;)V

    .line 265
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {p3, p1, p2, v0}, Lcom/app/thestream/utils/PopupMenu;->onClickItemOverflow(Landroid/view/View;Lcom/app/thestream/models/Channel;Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-app-thestream-activities-ActivityNotificationDetail()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 121
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/shimmer/ShimmerFrameLayout;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->startShimmer()V

    .line 125
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_main_content:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->requestAction()V

    return-void
.end method

.method synthetic lambda$requestPostData$1$com-app-thestream-activities-ActivityNotificationDetail(Lcom/app/thestream/callbacks/CallbackChannelDetail;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 145
    iget-object p2, p1, Lcom/app/thestream/callbacks/CallbackChannelDetail;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->displayAllData(Lcom/app/thestream/callbacks/CallbackChannelDetail;)V

    const/4 p1, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->swipeProgress(Z)V

    .line 148
    iget-object p2, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_main_content:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->onFailRequest()V

    :goto_0
    return-void
.end method

.method synthetic lambda$showFailedView$2$com-app-thestream-activities-ActivityNotificationDetail(Landroid/view/View;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->requestAction()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 353
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 354
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    const p1, 0x7f0d001d

    .line 79
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->setContentView(I)V

    .line 80
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    .line 82
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 83
    new-instance p1, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 85
    new-instance p1, Lcom/app/thestream/utils/AdsManager;

    invoke-direct {p1, p0}, Lcom/app/thestream/utils/AdsManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Lcom/app/thestream/utils/AdsManager;->loadBannerAd(I)V

    .line 87
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1, v0, v0}, Lcom/app/thestream/utils/AdsManager;->loadInterstitialAd(II)V

    .line 88
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1, v0}, Lcom/app/thestream/utils/AdsManager;->loadNativeAd(I)V

    .line 90
    invoke-static {p0}, Lcom/app/thestream/databases/dao/AppDatabase;->getDatabase(Landroid/content/Context;)Lcom/app/thestream/databases/dao/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/thestream/databases/dao/AppDatabase;->get()Lcom/app/thestream/databases/dao/DAO;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->dao:Lcom/app/thestream/databases/dao/DAO;

    const p1, 0x7f0a0088

    .line 92
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    .line 93
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    new-instance v1, Lcom/app/thestream/utils/AppBarLayoutBehavior;

    invoke-direct {v1}, Lcom/app/thestream/utils/AppBarLayoutBehavior;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    const p1, 0x7f0a0282

    .line 95
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->swipe_refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v0, v0, [I

    const v1, 0x7f060053

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 96
    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    .line 97
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->swipe_refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    const p1, 0x7f0a019b

    .line 99
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_main_content:Landroid/widget/LinearLayout;

    const p1, 0x7f0a0252

    .line 100
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const p1, 0x7f0a0213

    .line 101
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const p1, 0x7f0a02af

    .line 103
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->title_toolbar:Landroid/widget/TextView;

    const p1, 0x7f0a00be

    .line 104
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->btn_favorite:Landroid/widget/ImageButton;

    const p1, 0x7f0a00c3

    .line 105
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->btn_share:Landroid/widget/ImageButton;

    const p1, 0x7f0a00d4

    .line 106
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_image:Landroid/widget/ImageView;

    const p1, 0x7f0a00d5

    .line 107
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_name:Landroid/widget/TextView;

    const p1, 0x7f0a00d2

    .line 108
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_category:Landroid/widget/TextView;

    const p1, 0x7f0a00d3

    .line 109
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->channel_description:Landroid/webkit/WebView;

    const p1, 0x7f0a01a7

    .line 111
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityNotificationDetail;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_suggested:Landroid/widget/RelativeLayout;

    .line 113
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "id"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->str_channel_id:Ljava/lang/String;

    .line 116
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->requestAction()V

    .line 118
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->swipe_refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v0, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityNotificationDetail$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/activities/ActivityNotificationDetail;)V

    invoke-virtual {p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 129
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->initToolbar()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "menu"
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 343
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 344
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->lyt_shimmer:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-virtual {v0}, Lcom/facebook/shimmer/ShimmerFrameLayout;->stopShimmer()V

    .line 345
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

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

    .line 328
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityNotificationDetail;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 331
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 338
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 339
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityNotificationDetail;->adsManager:Lcom/app/thestream/utils/AdsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/AdsManager;->resumeBannerAd(I)V

    return-void
.end method
