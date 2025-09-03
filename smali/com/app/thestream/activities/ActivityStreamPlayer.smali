.class public Lcom/app/thestream/activities/ActivityStreamPlayer;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityStreamPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityStreamPlayer"


# instance fields
.field adsManager:Lcom/app/thestream/utils/AdsManager;

.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field private dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

.field private exitTime:J

.field private exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

.field fullscreen:Z

.field private fullscreenButton:Landroid/widget/ImageView;

.field parent_view:Landroid/widget/RelativeLayout;

.field private progressBar:Landroid/widget/ProgressBar;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field private styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

.field user_agent:Ljava/lang/String;

.field video_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->fullscreen:Z

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exitTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/app/thestream/activities/ActivityStreamPlayer;)Landroid/widget/ProgressBar;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/app/thestream/activities/ActivityStreamPlayer;)Lcom/google/android/exoplayer2/ExoPlayer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    return-object p0
.end method

.method private buildMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 261
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    const/4 v1, 0x0

    .line 262
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 p1, 0x4

    if-ne v1, p1, :cond_1

    .line 272
    new-instance p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    new-instance v2, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p1, v1, v2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    .line 273
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1

    .line 278
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;-><init>()V

    .line 276
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource;

    move-result-object p1

    return-object p1

    .line 268
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    const/4 v1, 0x1

    .line 269
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->setAllowChunklessPreparation(Z)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1

    .line 265
    :cond_4
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-direct {p1, v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 266
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private getUserAgent()Ljava/lang/String;
    .locals 4

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Dalvik/"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/app/thestream/activities/MainActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private playerOrientation()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    const v1, 0x7f0a012e

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->fullscreenButton:Landroid/widget/ImageView;

    .line 214
    new-instance v1, Lcom/app/thestream/activities/ActivityStreamPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityStreamPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/ActivityStreamPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getPlayerMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->setLandscape()V

    :cond_0
    return-void
.end method

.method private setLandscape()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->fullscreenButton:Landroid/widget/ImageView;

    const v1, 0x7f080168

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 248
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    :cond_0
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->setRequestedOrientation(I)V

    .line 252
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    .line 253
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 254
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 255
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->fullscreen:Z

    return-void
.end method

.method private setPortrait()V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->fullscreenButton:Landroid/widget/ImageView;

    const v1, 0x7f080169

    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 232
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->show()V

    :cond_0
    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->setRequestedOrientation(I)V

    .line 236
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    .line 237
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 238
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 239
    iget-object v2, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iput-boolean v1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->fullscreen:Z

    return-void
.end method


# virtual methods
.method public closePlayer()V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->finish()V

    .line 327
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->stop()V

    return-void
.end method

.method public errorDialog()V
    .locals 3

    .line 332
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120152

    .line 333
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1200d6

    .line 335
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12010f

    .line 336
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/thestream/activities/ActivityStreamPlayer$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/app/thestream/activities/ActivityStreamPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivityStreamPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12010d

    .line 337
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/app/thestream/activities/ActivityStreamPlayer$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/app/thestream/activities/ActivityStreamPlayer$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/activities/ActivityStreamPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$errorDialog$1$com-app-thestream-activities-ActivityStreamPlayer(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 336
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->retryLoad()V

    return-void
.end method

.method synthetic lambda$errorDialog$2$com-app-thestream-activities-ActivityStreamPlayer(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 337
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->finish()V

    return-void
.end method

.method synthetic lambda$playerOrientation$0$com-app-thestream-activities-ActivityStreamPlayer(Landroid/view/View;)V
    .locals 0

    .line 215
    iget-boolean p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->fullscreen:Z

    if-eqz p1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->setPortrait()V

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->setLandscape()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 297
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 298
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->showInterstitialAd()V

    .line 299
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->closePlayer()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0024

    .line 84
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->setContentView(I)V

    .line 86
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060052

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 88
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 89
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->video_url:Ljava/lang/String;

    const-string v0, "user_agent"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->user_agent:Ljava/lang/String;

    .line 96
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 97
    new-instance p1, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 99
    new-instance p1, Lcom/app/thestream/utils/AdsManager;

    invoke-direct {p1, p0}, Lcom/app/thestream/utils/AdsManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->adsManager:Lcom/app/thestream/utils/AdsManager;

    .line 100
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getInterstitialAdInterval()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/app/thestream/utils/AdsManager;->loadInterstitialAd(II)V

    const p1, 0x7f0a0213

    .line 103
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->parent_view:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a021d

    .line 104
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->progressBar:Landroid/widget/ProgressBar;

    .line 106
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->user_agent:Ljava/lang/String;

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "user agent : "

    const-string v2, "ActivityStreamPlayer"

    if-eqz p1, :cond_1

    .line 107
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    .line 108
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v3, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    iget-object v3, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->user_agent:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    .line 112
    new-instance v3, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V

    iput-object v3, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DefaultDataSource$Factory;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->user_agent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    new-instance p1, Lcom/google/android/exoplayer2/DefaultLoadControl;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/DefaultLoadControl;-><init>()V

    .line 118
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>()V

    .line 119
    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;)V

    .line 121
    new-instance v0, Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplayer2/trackselection/TrackSelector;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplayer2/LoadControl;)Lcom/google/android/exoplayer2/ExoPlayer$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ExoPlayer$Builder;->build()Lcom/google/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const p1, 0x7f0a0119

    .line 126
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    .line 127
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setPlayer(Lcom/google/android/exoplayer2/Player;)V

    .line 128
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->setUseController(Z)V

    .line 129
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->styledPlayerView:Lcom/google/android/exoplayer2/ui/StyledPlayerView;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerView;->requestFocus()Z

    .line 131
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->playerOrientation()V

    .line 133
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->video_url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/ActivityStreamPlayer;->buildMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 137
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 138
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 140
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    new-instance v0, Lcom/app/thestream/activities/ActivityStreamPlayer$1;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivityStreamPlayer$1;-><init>(Lcom/app/thestream/activities/ActivityStreamPlayer;)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->addListener(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 304
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 305
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 306
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 311
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 312
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    .line 313
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    return-void
.end method

.method public retryLoad()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->video_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 343
    invoke-direct {p0, v0}, Lcom/app/thestream/activities/ActivityStreamPlayer;->buildMediaSource(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayer;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 345
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    .line 346
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityStreamPlayer;->exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method
