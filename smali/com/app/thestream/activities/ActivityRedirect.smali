.class public Lcom/app/thestream/activities/ActivityRedirect;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityRedirect.java"


# instance fields
.field btnClose:Landroid/widget/ImageButton;

.field btnRedirect:Landroid/widget/Button;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0a00bc

    .line 33
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityRedirect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityRedirect;->btnClose:Landroid/widget/ImageButton;

    const v0, 0x7f0a00c2

    .line 34
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityRedirect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/app/thestream/activities/ActivityRedirect;->btnRedirect:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityRedirect;->btnClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/app/thestream/activities/ActivityRedirect$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityRedirect$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/ActivityRedirect;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/app/thestream/activities/ActivityRedirect;->btnRedirect:Landroid/widget/Button;

    new-instance v1, Lcom/app/thestream/activities/ActivityRedirect$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/ActivityRedirect$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/ActivityRedirect;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$initView$0$com-app-thestream-activities-ActivityRedirect(Landroid/view/View;)V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityRedirect;->finish()V

    return-void
.end method

.method synthetic lambda$initView$1$com-app-thestream-activities-ActivityRedirect(Landroid/view/View;)V
    .locals 2

    .line 39
    iget-object p1, p0, Lcom/app/thestream/activities/ActivityRedirect;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getRedirectUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x1020002

    .line 40
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityRedirect;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f120122

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/ActivityRedirect;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_0

    .line 42
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/app/thestream/activities/ActivityRedirect;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityRedirect;->startActivity(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0}, Lcom/app/thestream/activities/ActivityRedirect;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    .line 26
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/ActivityRedirect;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 27
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    const p1, 0x7f0d0021

    .line 28
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/ActivityRedirect;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityRedirect;->initView()V

    return-void
.end method
