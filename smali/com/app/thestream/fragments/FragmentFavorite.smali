.class public Lcom/app/thestream/fragments/FragmentFavorite;
.super Landroidx/fragment/app/Fragment;
.source "FragmentFavorite.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field adapterFavorite:Lcom/app/thestream/adapters/AdapterFavorite;

.field channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/app/thestream/models/Channel;",
            ">;"
        }
    .end annotation
.end field

.field private charSequence:Ljava/lang/CharSequence;

.field private dao:Lcom/app/thestream/databases/dao/DAO;

.field flag_read_later:Z

.field lyt_no_favorite:Landroid/view/View;

.field parent_view:Landroid/widget/LinearLayout;

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field root_view:Landroid/view/View;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->channels:Ljava/util/List;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->charSequence:Ljava/lang/CharSequence;

    return-void
.end method

.method private displayData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "radios"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/app/thestream/databases/dao/ChannelEntity;",
            ">;)V"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/app/thestream/databases/dao/ChannelEntity;

    invoke-virtual {v2}, Lcom/app/thestream/databases/dao/ChannelEntity;->original()Lcom/app/thestream/models/Channel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, v1}, Lcom/app/thestream/fragments/FragmentFavorite;->showNoItemView(Z)V

    .line 115
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->adapterFavorite:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-virtual {v1}, Lcom/app/thestream/adapters/AdapterFavorite;->resetListData()V

    .line 116
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->adapterFavorite:Lcom/app/thestream/adapters/AdapterFavorite;

    invoke-virtual {v1, v0}, Lcom/app/thestream/adapters/AdapterFavorite;->insertData(Ljava/util/List;)V

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 118
    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentFavorite;->showNoItemView(Z)V

    :cond_1
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

    .line 123
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->root_view:Landroid/view/View;

    const v1, 0x7f0a019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->root_view:Landroid/view/View;

    const v2, 0x7f0a01fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f120100

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 127
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addFavorite()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->adapterFavorite:Lcom/app/thestream/adapters/AdapterFavorite;

    new-instance v1, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/fragments/FragmentFavorite;)V

    invoke-virtual {v0, v1}, Lcom/app/thestream/adapters/AdapterFavorite;->setOnItemOverflowClickListener(Lcom/app/thestream/adapters/AdapterFavorite$OnItemOverflowClickListener;)V

    return-void
.end method

.method synthetic lambda$addFavorite$1$com-app-thestream-fragments-FragmentFavorite(Lcom/app/thestream/models/Channel;Landroid/view/MenuItem;)Z
    .locals 2

    .line 156
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const v0, 0x7f0a01c1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 158
    :cond_0
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->charSequence:Ljava/lang/CharSequence;

    const v0, 0x7f120110

    invoke-virtual {p0, v0}, Lcom/app/thestream/fragments/FragmentFavorite;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    .line 159
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->dao:Lcom/app/thestream/databases/dao/DAO;

    invoke-static {p1}, Lcom/app/thestream/databases/dao/ChannelEntity;->entity(Lcom/app/thestream/models/Channel;)Lcom/app/thestream/databases/dao/ChannelEntity;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/app/thestream/databases/dao/DAO;->insertChannel(Lcom/app/thestream/databases/dao/ChannelEntity;)V

    .line 160
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->parent_view:Landroid/widget/LinearLayout;

    const p2, 0x7f1200b5

    invoke-virtual {p0, p2}, Lcom/app/thestream/fragments/FragmentFavorite;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->charSequence:Ljava/lang/CharSequence;

    const v1, 0x7f120113

    invoke-virtual {p0, v1}, Lcom/app/thestream/fragments/FragmentFavorite;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 162
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object p1, p1, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/app/thestream/databases/dao/DAO;->deleteChannel(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->parent_view:Landroid/widget/LinearLayout;

    const p2, 0x7f1200b6

    invoke-virtual {p0, p2}, Lcom/app/thestream/fragments/FragmentFavorite;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 164
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->dao:Lcom/app/thestream/databases/dao/DAO;

    invoke-interface {p1}, Lcom/app/thestream/databases/dao/DAO;->getAllChannel()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/app/thestream/fragments/FragmentFavorite;->displayData(Ljava/util/List;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method synthetic lambda$addFavorite$2$com-app-thestream-fragments-FragmentFavorite(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 2

    .line 152
    new-instance p3, Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    invoke-direct {p3, v0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 153
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    .line 154
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0e0005

    invoke-virtual {p1, v1, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    new-instance p1, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2}, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/fragments/FragmentFavorite;Lcom/app/thestream/models/Channel;)V

    invoke-virtual {p3, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 172
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->show()V

    .line 174
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object p2, p2, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/app/thestream/databases/dao/DAO;->getChannel(Ljava/lang/String;)Lcom/app/thestream/databases/dao/ChannelEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->flag_read_later:Z

    const p2, 0x7f0a01c1

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f120113

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 177
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->charSequence:Ljava/lang/CharSequence;

    goto :goto_1

    .line 179
    :cond_1
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f120110

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 180
    invoke-virtual {p3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->charSequence:Ljava/lang/CharSequence;

    :goto_1
    return-void
.end method

.method synthetic lambda$onChannelClickListener$0$com-app-thestream-fragments-FragmentFavorite(Landroid/view/View;Lcom/app/thestream/models/Channel;I)V
    .locals 2

    .line 136
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/app/thestream/utils/Tools;->isConnect(Landroid/content/Context;)Z

    move-result p1

    const-string p3, "key.EXTRA_OBJC"

    if-eqz p1, :cond_0

    .line 137
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    const-class v1, Lcom/app/thestream/activities/ActivityChannelDetail;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentFavorite;->startActivity(Landroid/content/Intent;)V

    .line 140
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {p1}, Lcom/app/thestream/activities/MainActivity;->showInterstitialAd()V

    .line 141
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    check-cast p1, Lcom/app/thestream/activities/MainActivity;

    invoke-virtual {p1}, Lcom/app/thestream/activities/MainActivity;->destroyBannerAd()V

    goto :goto_0

    .line 143
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    const-class v1, Lcom/app/thestream/activities/ActivityChannelDetailOffline;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentFavorite;->startActivity(Landroid/content/Intent;)V

    :goto_0
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

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onChannelClickListener()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->adapterFavorite:Lcom/app/thestream/adapters/AdapterFavorite;

    new-instance v1, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentFavorite$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/fragments/FragmentFavorite;)V

    invoke-virtual {v0, v1}, Lcom/app/thestream/adapters/AdapterFavorite;->setOnItemClickListener(Lcom/app/thestream/adapters/AdapterFavorite$OnItemClickListener;)V

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

    const p3, 0x7f0d0056

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->root_view:Landroid/view/View;

    .line 69
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 70
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentFavorite;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/app/thestream/databases/dao/AppDatabase;->getDatabase(Landroid/content/Context;)Lcom/app/thestream/databases/dao/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/thestream/databases/dao/AppDatabase;->get()Lcom/app/thestream/databases/dao/DAO;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->dao:Lcom/app/thestream/databases/dao/DAO;

    .line 72
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->root_view:Landroid/view/View;

    const p2, 0x7f0a0213

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->parent_view:Landroid/widget/LinearLayout;

    .line 73
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->root_view:Landroid/view/View;

    const p2, 0x7f0a019c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->lyt_no_favorite:Landroid/view/View;

    .line 74
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->root_view:Landroid/view/View;

    const p2, 0x7f0a0226

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    invoke-direct {p3, v1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    .line 79
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1, p3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p3, :cond_2

    .line 81
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-direct {p2, p3, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 84
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentFavorite;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0701f0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 85
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p2}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_3

    .line 86
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, p1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1, p1, p1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 91
    :goto_1
    new-instance p1, Lcom/app/thestream/adapters/AdapterFavorite;

    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->activity:Landroid/app/Activity;

    iget-object p3, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->channels:Ljava/util/List;

    invoke-direct {p1, p2, p3, v1}, Lcom/app/thestream/adapters/AdapterFavorite;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->adapterFavorite:Lcom/app/thestream/adapters/AdapterFavorite;

    .line 92
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentFavorite;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 93
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentFavorite;->onChannelClickListener()V

    .line 94
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentFavorite;->addFavorite()V

    .line 96
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->channels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 97
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->lyt_no_favorite:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 99
    :cond_4
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->lyt_no_favorite:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :goto_2
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentFavorite;->root_view:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 108
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentFavorite;->dao:Lcom/app/thestream/databases/dao/DAO;

    invoke-interface {v0}, Lcom/app/thestream/databases/dao/DAO;->getAllChannel()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/app/thestream/fragments/FragmentFavorite;->displayData(Ljava/util/List;)V

    return-void
.end method
