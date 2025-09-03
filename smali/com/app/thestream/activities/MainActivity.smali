.class public Lcom/app/thestream/activities/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/thestream/activities/MainActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field adsManager:Lcom/app/thestream/utils/AdsManager;

.field adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

.field private appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

.field private exitTime:J

.field private mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field pager_number:I

.field parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field prevMenuItem:Landroid/view/MenuItem;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field private toolbar:Landroidx/appcompat/widget/Toolbar;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;

.field private viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x4

    .line 68
    iput v0, p0, Lcom/app/thestream/activities/MainActivity;->pager_number:I

    const-wide/16 v0, 0x0

    .line 69
    iput-wide v0, p0, Lcom/app/thestream/activities/MainActivity;->exitTime:J

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    const/16 v0, 0x61

    const/16 v1, 0x31

    .line 192
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x62

    const/16 v1, 0x32

    .line 193
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x63

    const/16 v1, 0x33

    .line 194
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$000(Lcom/app/thestream/activities/MainActivity;)Lcom/google/android/material/bottomnavigation/BottomNavigationView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/app/thestream/activities/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/app/thestream/activities/MainActivity;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/app/thestream/activities/MainActivity;)Landroidx/appcompat/widget/Toolbar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/app/thestream/activities/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/app/thestream/activities/MainActivity;)Lcom/app/thestream/utils/RtlViewPager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    return-object p0
.end method

.method private inAppReview()V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getInAppReviewToken()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 436
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getInAppReviewToken()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/app/thestream/databases/prefs/SharedPref;->updateInAppReviewToken(I)V

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {p0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object v0

    .line 439
    invoke-interface {v0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/play/core/tasks/Task;

    move-result-object v1

    .line 440
    new-instance v2, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/app/thestream/activities/MainActivity;Lcom/google/android/play/core/review/ReviewManager;)V

    invoke-virtual {v1, v2}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda4;-><init>()V

    .line 451
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    .line 453
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in app review token : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/app/thestream/activities/MainActivity;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getInAppReviewToken()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private inAppUpdate()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/play/core/tasks/Task;

    move-result-object v0

    .line 458
    new-instance v1, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/tasks/Task;->addOnSuccessListener(Lcom/google/android/play/core/tasks/OnSuccessListener;)Lcom/google/android/play/core/tasks/Task;

    return-void
.end method

.method static synthetic lambda$inAppReview$10(Ljava/lang/Exception;)V
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-App Request Failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "In-App Review"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$inAppReview$6(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$inAppReview$7(Lcom/google/android/play/core/tasks/Task;)V
    .locals 1

    const-string p0, "MainActivity"

    const-string v0, "In-App Review Success"

    .line 445
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$inAppReview$8(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "MainActivity"

    const-string v0, "In-App Review Rating Failed"

    .line 448
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showBottomSheetExitDialog()V
    .locals 5

    .line 346
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00b2

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 348
    iget-object v2, p0, Lcom/app/thestream/activities/MainActivity;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v2}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0800e9

    .line 349
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const v2, 0x7f0800ea

    .line 351
    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const v1, 0x7f0a00c1

    .line 353
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a00c3

    .line 354
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f0a00bd

    .line 355
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 358
    new-instance v4, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    new-instance v1, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    new-instance v1, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda7;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v1, p0, Lcom/app/thestream/activities/MainActivity;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v2, 0x7f130171

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    goto :goto_1

    .line 384
    :cond_1
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v2, 0x7f130173

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 388
    :goto_1
    iget-object v1, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 389
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 391
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    .line 392
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 393
    new-instance v1, Lcom/app/thestream/activities/MainActivity$3;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$3;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 404
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 405
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v1, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda8;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showSnackBar(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method

.method private startUpdateFlow(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appUpdateInfo"
        }
    .end annotation

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    const/4 v1, 0x1

    const/16 v2, 0x7c

    invoke-interface {v0, p1, v1, p0, v2}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 472
    invoke-virtual {p1}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroyBannerAd()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->destroyBannerAd()V

    return-void
.end method

.method public exitApp()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/app/thestream/activities/MainActivity;->showBottomSheetExitDialog()V

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public initComponent()V
    .locals 2

    const v0, 0x7f0a0286

    .line 113
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    new-instance v1, Lcom/app/thestream/utils/AppBarLayoutBehavior;

    invoke-direct {v1}, Lcom/app/thestream/utils/AppBarLayoutBehavior;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    const v0, 0x7f0a02b1

    .line 116
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/app/thestream/activities/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 117
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 118
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f120053

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    const v0, 0x7f0a0213

    .line 120
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/app/thestream/activities/MainActivity;->parent_view:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0a01f3

    .line 121
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/app/thestream/activities/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    const/4 v1, 0x1

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setLabelVisibilityMode(I)V

    const v0, 0x7f0a02cc

    .line 124
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a02cd

    .line 125
    invoke-virtual {p0, v0}, Lcom/app/thestream/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/app/thestream/utils/RtlViewPager;

    iput-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    .line 129
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->initViewPager()V

    return-void
.end method

.method public initRTLViewPager()V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    new-instance v1, Lcom/app/thestream/activities/MainActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/app/thestream/activities/MainActivity$MyAdapter;-><init>(Lcom/app/thestream/activities/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/RtlViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 203
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    iget v1, p0, Lcom/app/thestream/activities/MainActivity;->pager_number:I

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/RtlViewPager;->setOffscreenPageLimit(I)V

    .line 204
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 222
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    new-instance v1, Lcom/app/thestream/activities/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$2;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/RtlViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 254
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/RtlViewPager;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    return-void
.end method

.method public initViewPager()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/app/thestream/activities/MainActivity$MyAdapter;

    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/app/thestream/activities/MainActivity$MyAdapter;-><init>(Lcom/app/thestream/activities/MainActivity;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/app/thestream/activities/MainActivity;->pager_number:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 137
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->navigation:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    .line 155
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/app/thestream/activities/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/app/thestream/activities/MainActivity$1;-><init>(Lcom/app/thestream/activities/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 187
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/RtlViewPager;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setVisibility(I)V

    return-void
.end method

.method synthetic lambda$inAppReview$9$com-app-thestream-activities-MainActivity(Lcom/google/android/play/core/review/ReviewManager;Lcom/google/android/play/core/tasks/Task;)V
    .locals 1

    .line 441
    invoke-virtual {p2}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p2}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/play/core/review/ReviewInfo;

    .line 443
    invoke-interface {p1, p0, p2}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda10;-><init>()V

    .line 444
    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2}, Lcom/app/thestream/activities/MainActivity$$ExternalSyntheticLambda11;-><init>()V

    .line 447
    invoke-virtual {p1, p2}, Lcom/google/android/play/core/tasks/Task;->addOnFailureListener(Lcom/google/android/play/core/tasks/OnFailureListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return-void
.end method

.method synthetic lambda$inAppUpdate$11$com-app-thestream-activities-MainActivity(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 2

    .line 459
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 460
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->isUpdateTypeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/MainActivity;->startUpdateFlow(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    goto :goto_0

    .line 462
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 463
    invoke-direct {p0, p1}, Lcom/app/thestream/activities/MainActivity;->startUpdateFlow(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method synthetic lambda$initRTLViewPager$1$com-app-thestream-activities-MainActivity(Landroid/view/MenuItem;)Z
    .locals 2

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    .line 216
    :pswitch_1
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/app/thestream/utils/RtlViewPager;->setCurrentItem(I)V

    return v1

    .line 210
    :pswitch_2
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    invoke-virtual {p1, v1}, Lcom/app/thestream/utils/RtlViewPager;->setCurrentItem(I)V

    return v1

    .line 213
    :pswitch_3
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/app/thestream/utils/RtlViewPager;->setCurrentItem(I)V

    return v1

    .line 207
    :pswitch_4
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->viewPagerRTL:Lcom/app/thestream/utils/RtlViewPager;

    invoke-virtual {p1, v0}, Lcom/app/thestream/utils/RtlViewPager;->setCurrentItem(I)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f0a01f4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$initViewPager$0$com-app-thestream-activities-MainActivity(Landroid/view/MenuItem;)Z
    .locals 2

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    .line 149
    :pswitch_1
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 143
    :pswitch_2
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 146
    :pswitch_3
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    .line 140
    :pswitch_4
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7f0a01f4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method synthetic lambda$showBottomSheetExitDialog$2$com-app-thestream-activities-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 359
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->rateApp(Landroid/app/Activity;)V

    .line 360
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showBottomSheetExitDialog$3$com-app-thestream-activities-MainActivity(Landroid/view/View;)V
    .locals 0

    const p1, 0x7f12012f

    .line 364
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/app/thestream/utils/Tools;->shareContent(Landroid/app/Activity;Ljava/lang/String;)V

    .line 365
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showBottomSheetExitDialog$4$com-app-thestream-activities-MainActivity(Landroid/view/View;)V
    .locals 0

    .line 369
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->finish()V

    .line 370
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->destroyBannerAd()V

    .line 371
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method synthetic lambda$showBottomSheetExitDialog$5$com-app-thestream-activities-MainActivity(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 405
    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity;->mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
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

    .line 478
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x7c

    if-ne p1, p3, :cond_2

    if-nez p2, :cond_0

    const p1, 0x7f1200d4

    .line 481
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/app/thestream/activities/MainActivity;->showSnackBar(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const p1, 0x7f1200da

    .line 483
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/app/thestream/activities/MainActivity;->showSnackBar(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f1200d7

    .line 485
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/app/thestream/activities/MainActivity;->showSnackBar(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0}, Lcom/app/thestream/activities/MainActivity;->inAppUpdate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->exitApp()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->getTheme(Landroid/content/Context;)V

    .line 80
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 81
    new-instance p1, Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-direct {p1, p0}, Lcom/app/thestream/databases/prefs/AdsPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    .line 82
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {p1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0d001f

    .line 83
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/MainActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0d001e

    .line 85
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/MainActivity;->setContentView(I)V

    .line 87
    :goto_0
    invoke-static {p0}, Lcom/app/thestream/utils/Tools;->setNavigation(Landroid/app/Activity;)V

    .line 89
    new-instance p1, Lcom/app/thestream/utils/AdsManager;

    invoke-direct {p1, p0}, Lcom/app/thestream/utils/AdsManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity;->adsManager:Lcom/app/thestream/utils/AdsManager;

    .line 90
    invoke-virtual {p1}, Lcom/app/thestream/utils/AdsManager;->initializeAd()V

    .line 91
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {p1}, Lcom/app/thestream/utils/AdsManager;->updateConsentStatus()V

    .line 92
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->adsManager:Lcom/app/thestream/utils/AdsManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/app/thestream/utils/AdsManager;->loadBannerAd(I)V

    .line 93
    iget-object p1, p0, Lcom/app/thestream/activities/MainActivity;->adsManager:Lcom/app/thestream/utils/AdsManager;

    iget-object v1, p0, Lcom/app/thestream/activities/MainActivity;->adsPref:Lcom/app/thestream/databases/prefs/AdsPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/AdsPref;->getInterstitialAdInterval()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/app/thestream/utils/AdsManager;->loadInterstitialAd(II)V

    .line 95
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->initComponent()V

    .line 96
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/app/thestream/utils/Tools;->notificationOpenHandler(Landroid/content/Context;Landroid/content/Intent;)V

    .line 97
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/app/thestream/utils/Tools;->getCategoryPosition(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/activities/MainActivity;->appUpdateManager:Lcom/google/android/play/core/appupdate/AppUpdateManager;

    .line 101
    invoke-direct {p0}, Lcom/app/thestream/activities/MainActivity;->inAppUpdate()V

    .line 102
    invoke-direct {p0}, Lcom/app/thestream/activities/MainActivity;->inAppReview()V

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

    .line 303
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 421
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 422
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->destroyBannerAd()V

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

    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0243

    if-ne v0, v1, :cond_0

    .line 310
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/app/thestream/activities/ActivitySearch;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/app/thestream/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    invoke-virtual {p0}, Lcom/app/thestream/activities/MainActivity;->destroyBannerAd()V

    const/4 p1, 0x1

    return p1

    .line 315
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 415
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 416
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->adsManager:Lcom/app/thestream/utils/AdsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/app/thestream/utils/AdsManager;->resumeBannerAd(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 298
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public selectCategory()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public showInterstitialAd()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/app/thestream/activities/MainActivity;->adsManager:Lcom/app/thestream/utils/AdsManager;

    invoke-virtual {v0}, Lcom/app/thestream/utils/AdsManager;->showInterstitialAd()V

    return-void
.end method
