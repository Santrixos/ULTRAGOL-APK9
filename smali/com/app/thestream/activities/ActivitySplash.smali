.class public Lcom/app/thestream/activities/ActivitySplash;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivitySplash.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ActivitySplash"


# instance fields
.field ads:Lcom/app/thestream/models/Ads;

.field adsManager:Lcom/app/thestream/utils/AdsManager;

.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field app:Lcom/app/thestream/models/App;

.field img_splash:Landroid/widget/ImageView;

.field private final mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field settings:Lcom/app/thestream/models/Settings;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;


# direct methods
.method public static synthetic $r8$lambda$Vd7eyf2prVinMtSC0tU-dGAbzuo(Lcom/app/thestream/activities/ActivitySplash;)V
    .locals 0

    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->requestConfig()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 41
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method private requestAPI(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiUrl"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lcom/app/thestream/rests/RestAdapter;->createAPI(Ljava/lang/String;)Lcom/app/thestream/rests/ApiInterface;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->mCompositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    const-string v1, "com.mexicotv.futbolenvivoabierta"

    const-string v2, "cda11bx8aITlKsXCpNB7yVLnOdEGqg342ZFrQzJRetkSoUMi9w"

    invoke-interface {p1, v1, v2}, Lcom/app/thestream/rests/ApiInterface;->getConfig(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object p1

    .line 131
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 132
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda3;-><init>(Lcom/app/thestream/activities/ActivitySplash;)V

    .line 133
    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private requestConfig()V
    .locals 5

    const-string v0, "WVVoU01HTklUVFpNZVRscFkyMUdlVm95TVRSTWJVNTJZbE01ZEZwWVozbE1NakZzWlVkc2FtSXhPV2hqU0VKellWZE9hR1JIYkhaaWEyeHJXREpPZG1KVE5YUmFXR2h3V1RJNU1HUnBOVzFrV0ZKcFlqSjRiR0p1V25Ca2JUbG9XVzFzYkdOdVVtZz0="

    .line 102
    invoke-static {v0}, Lcom/app/thestream/utils/Tools;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_applicationId_"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    aget-object v2, v0, v1

    const-string v3, "localhost"

    const-string v4, "192.168.1.4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 105
    aget-object v0, v0, v3

    .line 106
    iget-object v3, p0, Lcom/app/thestream/activities/ActivitySplash;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v3, v2, v0}, Lcom/app/thestream/databases/prefs/SharedPref;->saveConfig(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.mexicotv.futbolenvivoabierta"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 109
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, v2}, Lcom/app/thestream/activities/ActivitySplash;->requestAPI(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->startMainActivity()V

    goto :goto_0

    .line 115
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applicationId does not match, applicationId in your app is : com.mexicotv.futbolenvivoabierta\n\n But your Server Key is registered with applicationId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nPlease update your Server Key with the appropriate registration applicationId that is used in your Android project."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Error"

    .line 119
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 120
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120076

    .line 121
    invoke-virtual {p0, v2}, Lcom/app/thestream/activities/ActivitySplash;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivitySplash;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    :goto_0
    return-void
.end method

.method private startMainActivity()V
    .locals 4

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/activities/ActivitySplash;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$requestAPI$2$com-app-thestream-activities-ActivitySplash(Lcom/app/thestream/callbacks/CallbackConfig;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 134
    iget-object p2, p1, Lcom/app/thestream/callbacks/CallbackConfig;->status:Ljava/lang/String;

    const-string v0, "ok"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    iget-object p2, p1, Lcom/app/thestream/callbacks/CallbackConfig;->app:Lcom/app/thestream/models/App;

    iput-object p2, p0, Lcom/app/thestream/activities/ActivitySplash;->app:Lcom/app/thestream/models/App;

    .line 136
    iget-object p2, p1, Lcom/app/thestream/callbacks/CallbackConfig;->settings:Lcom/app/thestream/models/Settings;

    iput-object p2, p0, Lcom/app/thestream/activities/ActivitySplash;->settings:Lcom/app/thestream/models/Settings;

    .line 137
    iget-object p1, p1, Lcom/app/thestream/callbacks/CallbackConfig;->ads:Lcom/app/thestream/models/Ads;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->ads:Lcom/app/thestream/models/Ads;

    .line 139
    iget-object p2, p0, Lcom/app/thestream/activities/ActivitySplash;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-static {p2, p1}, Lcom/app/thestream/utils/Tools;->saveAds(Lcom/app/thestream/databases/prefs/AdsPref;Lcom/app/thestream/models/Ads;)V

    .line 141
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    iget-object p2, p0, Lcom/app/thestream/activities/ActivitySplash;->settings:Lcom/app/thestream/models/Settings;

    iget-object p2, p2, Lcom/app/thestream/models/Settings;->youtube_api_key:Ljava/lang/String;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->settings:Lcom/app/thestream/models/Settings;

    iget-object v0, v0, Lcom/app/thestream/models/Settings;->more_apps_url:Ljava/lang/String;

    iget-object v1, p0, Lcom/app/thestream/activities/ActivitySplash;->settings:Lcom/app/thestream/models/Settings;

    iget-object v1, v1, Lcom/app/thestream/models/Settings;->privacy_policy:Ljava/lang/String;

    iget-object v2, p0, Lcom/app/thestream/activities/ActivitySplash;->app:Lcom/app/thestream/models/App;

    iget-object v2, v2, Lcom/app/thestream/models/App;->redirect_url:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/app/thestream/databases/prefs/SharedPref;->saveCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->app:Lcom/app/thestream/models/App;

    iget-object p1, p1, Lcom/app/thestream/models/App;->status:Ljava/lang/String;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "Ads Data is saved"

    const-string v0, "Response"

    if-eqz p1, :cond_0

    .line 149
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/thestream/activities/ActivityRedirect;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 151
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySplash;->finish()V

    const-string p1, "ActivitySplash"

    const-string v1, "App status is suspended"

    .line 152
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->startMainActivity()V

    .line 155
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    :cond_1
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->startMainActivity()V

    :goto_1
    return-void
.end method

.method synthetic lambda$requestConfig$0$com-app-thestream-activities-ActivitySplash(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->startMainActivity()V

    return-void
.end method

.method synthetic lambda$requestConfig$1$com-app-thestream-activities-ActivitySplash(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySplash;->finish()V

    return-void
.end method

.method synthetic lambda$startMainActivity$3$com-app-thestream-activities-ActivitySplash()V
    .locals 3

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySplash;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/app/thestream/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivitySplash;->startActivity(Landroid/content/Intent;)V

    .line 168
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySplash;->finish()V

    .line 169
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->showInterstitialAd()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    const p1, 0x7f0d0023

    .line 54
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySplash;->setContentView(I)V

    .line 55
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    .line 56
    new-instance p1, Lcom/app/thestream/utils/AdsManager;

    invoke-direct {p1, p0}, Lcom/app/thestream/utils/AdsManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->adsManager:Lcom/app/thestream/utils/AdsManager;

    .line 57
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 58
    new-instance p1, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 61
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/AdsPref;->getInterstitialAdInterval()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/app/thestream/utils/AdsManager;->loadInterstitialAd(II)V

    const p1, 0x7f0a0005

    .line 63
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivitySplash;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->img_splash:Landroid/widget/ImageView;

    .line 64
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->img_splash:Landroid/widget/ImageView;

    const v0, 0x7f0800ec

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->img_splash:Landroid/widget/ImageView;

    const v0, 0x7f0800ed

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    :goto_0
    iget-object p1, p0, Lcom/app/thestream/activities/ActivitySplash;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdStatus()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 71
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivitySplash;->getApplication()Landroid/app/Application;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdMobAppOpenAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    check-cast p1, Lcom/app/thestream/activities/MyApplication;

    new-instance v0, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda4;-><init>(Lcom/app/thestream/activities/ActivitySplash;)V

    invoke-virtual {p1, p0, v0}, Lcom/app/thestream/activities/MyApplication;->showAdIfAvailable(Landroid/app/Activity;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;)V

    goto :goto_1

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->requestConfig()V

    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "google_ad_manager"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/app/thestream/activities/ActivitySplash;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/AdsPref;->getAdManagerAppOpenAdId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    check-cast p1, Lcom/app/thestream/activities/MyApplication;

    new-instance v0, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/app/thestream/activities/ActivitySplash$$ExternalSyntheticLambda4;-><init>(Lcom/app/thestream/activities/ActivitySplash;)V

    invoke-virtual {p1, p0, v0}, Lcom/app/thestream/activities/MyApplication;->showAdIfAvailable(Landroid/app/Activity;Lcom/solodroid/ads/sdk/util/OnShowAdCompleteListener;)V

    goto :goto_1

    .line 82
    :cond_3
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->requestConfig()V

    goto :goto_1

    .line 85
    :cond_4
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->requestConfig()V

    goto :goto_1

    .line 88
    :cond_5
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivitySplash;->requestConfig()V

    :goto_1
    return-void
.end method
