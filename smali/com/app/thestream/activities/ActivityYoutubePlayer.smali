.class public Lcom/app/thestream/activities/ActivityYoutubePlayer;
.super Lcom/google/android/youtube/player/YouTubeBaseActivity;
.source "ActivityYoutubePlayer.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/activities/ActivityYoutubePlayer$MyPlayerStateChangeListener;
    }
.end annotation


# static fields
.field private static final RECOVERY_REQUEST:I = 0x1


# instance fields
.field private exitTime:J

.field private id:Ljava/lang/String;

.field parent_view:Landroid/widget/RelativeLayout;

.field private playerStateChangeListener:Lcom/app/thestream/activities/ActivityYoutubePlayer$MyPlayerStateChangeListener;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field private youTubeView:Lcom/google/android/youtube/player/YouTubePlayerView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->id:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->exitTime:J

    return-void
.end method


# virtual methods
.method public closePlayer()V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->finish()V

    return-void
.end method

.method public errorDialog()V
    .locals 3

    .line 75
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120152

    .line 76
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "You must install and enable the YouTube app to play this video."

    .line 78
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/activities/ActivityYoutubePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/ActivityYoutubePlayer;)V

    const-string v2, "Install"

    .line 79
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/activities/ActivityYoutubePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivityYoutubePlayer;)V

    const-string v2, "Later"

    .line 83
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method protected getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->youTubeView:Lcom/google/android/youtube/player/YouTubePlayerView;

    return-object v0
.end method

.method synthetic lambda$errorDialog$0$com-app-thestream-activities-ActivityYoutubePlayer(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->finish()V

    .line 81
    new-instance p1, Landroid/content/Intent;

    const-string p2, "http://play.google.com/store/apps/details?id=com.google.android.youtube"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$errorDialog$1$com-app-thestream-activities-ActivityYoutubePlayer(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;

    move-result-object p1

    iget-object p2, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p2}, Lcom/app/thestream/databases/prefs/SharedPref;->getYoutubeAPIKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/google/android/youtube/player/YouTubePlayer$Provider;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->closePlayer()V

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

    .line 43
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->requestWindowFeature(I)Z

    .line 45
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0d0026

    .line 46
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->setContentView(I)V

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060052

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 50
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 51
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 54
    :cond_0
    new-instance v0, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {v0, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 55
    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getPlayerMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->setRequestedOrientation(I)V

    .line 59
    :cond_1
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->id:Ljava/lang/String;

    const p1, 0x7f0a0213

    .line 62
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->parent_view:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a02d7

    .line 63
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/player/YouTubePlayerView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->youTubeView:Lcom/google/android/youtube/player/YouTubePlayerView;

    const-string p1, "com.google.android.youtube"

    .line 65
    invoke-static {p0, p1}, Lcom/app/thestream/utils/Tools;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->youTubeView:Lcom/google/android/youtube/player/YouTubePlayerView;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getYoutubeAPIKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/youtube/player/YouTubePlayerView;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 67
    new-instance p1, Lcom/app/thestream/activities/ActivityYoutubePlayer$MyPlayerStateChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/app/thestream/activities/ActivityYoutubePlayer$MyPlayerStateChangeListener;-><init>(Lcom/app/thestream/activities/ActivityYoutubePlayer$1;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->playerStateChangeListener:Lcom/app/thestream/activities/ActivityYoutubePlayer$MyPlayerStateChangeListener;

    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->errorDialog()V

    :goto_0
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

    .line 118
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "provider",
            "errorReason"
        }
    .end annotation

    .line 97
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->isUserRecoverableError()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p2, p0, v0}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120078

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "provider",
            "player",
            "wasRestored"
        }
    .end annotation

    .line 89
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->playerStateChangeListener:Lcom/app/thestream/activities/ActivityYoutubePlayer$MyPlayerStateChangeListener;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V

    if-nez p3, :cond_0

    .line 91
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityYoutubePlayer;->id:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 124
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
