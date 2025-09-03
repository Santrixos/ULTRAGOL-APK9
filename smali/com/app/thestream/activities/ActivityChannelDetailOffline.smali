.class public Lcom/app/thestream/activities/ActivityChannelDetailOffline;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityChannelDetailOffline.java"


# instance fields
.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field btn_favorite:Landroid/widget/ImageButton;

.field private channel:Lcom/app/thestream/models/Channel;

.field channel_category:Landroid/widget/TextView;

.field channel_description:Landroid/webkit/WebView;

.field channel_image:Landroid/widget/ImageView;

.field channel_name:Landroid/widget/TextView;

.field private dao:Lcom/app/thestream/databases/dao/DAO;

.field flag_read_later:Z

.field parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field title_toolbar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private refreshReadLaterMenu()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v1, v1, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/app/thestream/databases/dao/DAO;->getChannel(Ljava/lang/String;)Lcom/app/thestream/databases/dao/ChannelEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->flag_read_later:Z

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->btn_favorite:Landroid/widget/ImageButton;

    const v1, 0x7f080167

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->btn_favorite:Landroid/widget/ImageButton;

    const v1, 0x7f080166

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method private setupToolbar()V
    .locals 2

    const v0, 0x7f0a02b1

    .line 83
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 84
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 85
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 89
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addToFavorite()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->btn_favorite:Landroid/widget/ImageButton;

    new-instance v1, Lcom/app/thestream/activities/ActivityChannelDetailOffline$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivityChannelDetailOffline;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public displayData()V
    .locals 9

    .line 95
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->title_toolbar:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v1, v1, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v1, v1, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_category:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v1, v1, Lcom/app/thestream/models/Channel;->category_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v0, v0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v1, "%20"

    const-string v2, " "

    const-string v3, "/upload/"

    const v4, 0x7f080184

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v0, v0, Lcom/app/thestream/models/Channel;->channel_type:Ljava/lang/String;

    const-string v5, "YOUTUBE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v0, v0, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 102
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v3, v3, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 103
    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_image:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://img.youtube.com/vi/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v2, v2, Lcom/app/thestream/models/Channel;->video_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mqdefault.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_image:Landroid/widget/ImageView;

    .line 109
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 113
    invoke-virtual {v6}, Lcom/app/thestream/databases/prefs/SharedPref;->getBaseUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v3, v3, Lcom/app/thestream/models/Channel;->channel_image:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v4}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_image:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_image:Landroid/widget/ImageView;

    new-instance v1, Lcom/app/thestream/activities/ActivityChannelDetailOffline$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/ActivityChannelDetailOffline;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_description:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 121
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_description:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 122
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_description:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 123
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_description:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_description:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000d

    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 132
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v0, v0, Lcom/app/thestream/models/Channel;->channel_description:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "<style type=\"text/css\">body{color: #eeeeee;}"

    goto :goto_1

    :cond_2
    const-string v1, "<style type=\"text/css\">body{color: #000000;}"

    .line 143
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<style type=\"text/css\">@font-face {font-family: MyFont;src: url(\"file:///android_asset/font/custom_font.ttf\")}body {font-family: MyFont; font-size: medium; text-align: left;}</style>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<style>img{max-width:100%;height:auto;} figure{max-width:100%;height:auto;} iframe{width:100%;}</style> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</style></head><body>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</body></html>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    iget-object v3, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_description:Landroid/webkit/WebView;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v6, "text/html; charset=UTF-8"

    const-string v7, "utf-8"

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$addToFavorite$2$com-app-thestream-activities-ActivityChannelDetailOffline(Landroid/view/View;)V
    .locals 2

    .line 172
    iget-boolean p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->flag_read_later:Z

    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v0, v0, Lcom/app/thestream/models/Channel;->channel_id:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/app/thestream/databases/dao/DAO;->deleteChannel(Ljava/lang/String;)V

    const p1, 0x7f1200b6

    .line 174
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->dao:Lcom/app/thestream/databases/dao/DAO;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    invoke-static {v0}, Lcom/app/thestream/databases/dao/ChannelEntity;->entity(Lcom/app/thestream/models/Channel;)Lcom/app/thestream/databases/dao/ChannelEntity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/app/thestream/databases/dao/DAO;->insertChannel(Lcom/app/thestream/databases/dao/ChannelEntity;)V

    const p1, 0x7f1200b5

    .line 177
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 179
    :goto_0
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 180
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->refreshReadLaterMenu()V

    return-void
.end method

.method synthetic lambda$displayData$1$com-app-thestream-activities-ActivityChannelDetailOffline(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    invoke-static {p0, p1, v0}, Lcom/app/thestream/utils/Tools;->startPlayer(Landroid/app/Activity;Landroid/view/View;Lcom/app/thestream/models/Channel;)V

    return-void
.end method

.method synthetic lambda$onCreate$0$com-app-thestream-activities-ActivityChannelDetailOffline(Landroid/view/View;)V
    .locals 3

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    iget-object v0, v0, Lcom/app/thestream/models/Channel;->channel_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.SEND"

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n\nhttps://play.google.com/store/apps/details?id="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "com.mexicotv.futbolenvivoabierta"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "text/plain"

    .line 77
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    const p1, 0x7f0d001d

    .line 50
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->setContentView(I)V

    .line 51
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "key.EXTRA_OBJC"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/app/thestream/models/Channel;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel:Lcom/app/thestream/models/Channel;

    .line 55
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 56
    new-instance p1, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 57
    invoke-static {p0}, Lcom/app/thestream/databases/dao/AppDatabase;->getDatabase(Landroid/content/Context;)Lcom/app/thestream/databases/dao/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/app/thestream/databases/dao/AppDatabase;->get()Lcom/app/thestream/databases/dao/DAO;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->dao:Lcom/app/thestream/databases/dao/DAO;

    const p1, 0x7f0a0213

    .line 59
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const p1, 0x7f0a02af

    .line 60
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->title_toolbar:Landroid/widget/TextView;

    const p1, 0x7f0a00be

    .line 61
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->btn_favorite:Landroid/widget/ImageButton;

    const p1, 0x7f0a00d4

    .line 62
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_image:Landroid/widget/ImageView;

    const p1, 0x7f0a00d5

    .line 63
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_name:Landroid/widget/TextView;

    const p1, 0x7f0a00d2

    .line 64
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_category:Landroid/widget/TextView;

    const p1, 0x7f0a00d3

    .line 65
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->channel_description:Landroid/webkit/WebView;

    .line 67
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->setupToolbar()V

    .line 68
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->displayData()V

    .line 69
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->addToFavorite()V

    const p1, 0x7f0a00c3

    .line 71
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/app/thestream/activities/ActivityChannelDetailOffline$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/activities/ActivityChannelDetailOffline;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityChannelDetailOffline;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 199
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 209
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 204
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method
