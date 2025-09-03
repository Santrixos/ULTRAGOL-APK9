.class public Lcom/app/thestream/activities/ActivityPrivacyPolicy;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityPrivacyPolicy.java"


# instance fields
.field post:Lcom/app/thestream/models/Settings;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    const p1, 0x7f0d0020

    .line 40
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->setContentView(I)V

    .line 41
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    .line 42
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    const p1, 0x7f0a02d0

    .line 43
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->webView:Landroid/webkit/WebView;

    .line 44
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getPrivacyPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/app/thestream/utils/Tools;->displayContent(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->setupToolbar()V

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

    .line 69
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 73
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setupToolbar()V
    .locals 3

    const v0, 0x7f0a02b1

    .line 50
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 51
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 53
    iget-object v1, p0, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060057

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setBackgroundColor(I)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityPrivacyPolicy;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
