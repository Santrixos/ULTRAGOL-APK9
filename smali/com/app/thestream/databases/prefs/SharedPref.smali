.class public Lcom/app/thestream/databases/prefs/SharedPref;
.super Ljava/lang/Object;
.source "SharedPref.java"


# static fields
.field private static final IS_FIRST_TIME_LAUNCH:Ljava/lang/String; = "IsFirstTimeLaunch"


# instance fields
.field context:Landroid/content/Context;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->context:Landroid/content/Context;

    const-string v0, "setting"

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getApplicationId()Ljava/lang/String;
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "application_id"

    const-string v2, "com.app.thestream"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "api_url"

    const-string v2, "http://10.0.2.2/the_stream"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCategoryViewType()Ljava/lang/Integer;
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "category_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getChannelViewType()Ljava/lang/Integer;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "video_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getInAppReviewToken()Ljava/lang/Integer;
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "in_app_review_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIsDarkTheme()Ljava/lang/Boolean;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMoreAppsUrl()Ljava/lang/String;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "more_apps_url"

    const-string v2, "https://play.google.com/store/apps/developer?id=Solodroid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerMode()Ljava/lang/Integer;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "player_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyPolicy()Ljava/lang/String;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "privacy_policy"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "redirect_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getYoutubeAPIKey()Ljava/lang/String;
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "youtube_api_key"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFirstTimeLaunch()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "IsFirstTimeLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "api_url",
            "application_id"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "api_url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "application_id"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public saveCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "youtube_api_key",
            "more_apps_url",
            "privacy_policy",
            "redirect_url"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "youtube_api_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v0, "more_apps_url"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "privacy_policy"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 86
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "redirect_url"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setFirstTimeLaunch(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFirstTime"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "IsFirstTimeLaunch"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 34
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsDarkTheme(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDarkTheme"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "theme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateCategoryViewType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "category_list"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateChannelViewType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "video_list"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 47
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateInAppReviewToken(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "in_app_review_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 108
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updatePlayerMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "player_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object p1, p0, Lcom/app/thestream/databases/prefs/SharedPref;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
