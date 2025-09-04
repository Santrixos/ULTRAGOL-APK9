.class public Lcom/app/thestream/activities/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field private bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 26
    const v0, 0x7f0c0067    # R.id.navigation

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/app/thestream/activities/MainActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 27
    return-void
.end method

.method private setupNavigation()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->bottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 33
    :cond_9
    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .param p1, "item"    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 40
    .local v0, "itemId":I
    const v1, 0x7f0c0035    # R.id.navigation_calendar

    if-ne v0, v1, :cond_f

    .line 41
    invoke-static {p0, v0}, Lcom/app/thestream/utils/NavigationHelper;->handleNavigationItemSelected(Landroid/content/Context;I)V

    .line 42
    return v2

    .line 46
    :cond_f
    sparse-switch v0, :sswitch_data_1a

    .line 61
    const/4 v1, 0x0

    return v1

    .line 48
    :sswitch_14
    :goto_14
    const/4 v1, 0x0

    return v1

    .line 46
    nop

    :sswitch_data_1a
    .sparse-switch
        0x7f0c0032 -> :sswitch_14    # R.id.navigation_category
        0x7f0c0036 -> :sswitch_14    # R.id.navigation_favorite
        0x7f0c0037 -> :sswitch_14    # R.id.navigation_recent
        0x7f0c0038 -> :sswitch_14    # R.id.navigation_settings
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f0e001c    # R.layout.activity_main

    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->setContentView(I)V

    .line 20
    invoke-direct {p0}, Lcom/app/thestream/activities/MainActivity;->initViews()V

    .line 21
    invoke-direct {p0}, Lcom/app/thestream/activities/MainActivity;->setupNavigation()V

    .line 22
    return-void
.end method