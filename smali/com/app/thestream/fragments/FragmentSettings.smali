.class public Lcom/app/thestream/fragments/FragmentSettings;
.super Landroidx/fragment/app/Fragment;
.source "FragmentSettings.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field root_view:Landroid/view/View;

.field sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

.field switch_theme:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field txt_current_category_list:Landroid/widget/TextView;

.field txt_current_player_mode:Landroid/widget/TextView;

.field txt_current_video_list:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private changeCategoryListViewType()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda0;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private changePlayerMode()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda13;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private changeVideoListViewType()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda6;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initComponent()V
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a02c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_video_list:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_video_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120131

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_video_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120132

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 71
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_video_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120133

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v3, 0x7f0a02bf

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_category_list:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_category_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120136

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 78
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_category_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120134

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 80
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_category_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120135

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a02c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_player_mode:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getPlayerMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    .line 85
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_player_mode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 86
    :cond_6
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getPlayerMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 87
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_player_mode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12011c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentSettings;->onThemeChanged()V

    .line 91
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentSettings;->changeVideoListViewType()V

    .line 92
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentSettings;->changeCategoryListViewType()V

    .line 93
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentSettings;->changePlayerMode()V

    .line 95
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda9;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a00c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda10;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda11;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a00bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda12;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$aboutDialog$13(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 206
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private onThemeChanged()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a0284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    iput-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->switch_theme:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 103
    iget-object v1, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v1}, Lcom/app/thestream/databases/prefs/SharedPref;->getIsDarkTheme()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    .line 104
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->switch_theme:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda1;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    const v1, 0x7f0a00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda2;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public aboutDialog()V
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0039

    const/4 v2, 0x0

    .line 198
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 199
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a02be

    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f12013b

    invoke-virtual {p0, v4}, Lcom/app/thestream/fragments/FragmentSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "1.0.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 205
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 206
    new-instance v0, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda5;-><init>()V

    const v2, 0x7f12010e

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$changeCategoryListViewType$10$com-app-thestream-fragments-FragmentSettings(Landroid/view/View;)V
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 151
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getCategoryViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120147

    .line 153
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda7;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    .line 154
    invoke-virtual {v1, p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$changeCategoryListViewType$9$com-app-thestream-fragments-FragmentSettings(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0, p2}, Lcom/app/thestream/databases/prefs/SharedPref;->updateCategoryViewType(I)V

    if-nez p2, :cond_0

    .line 158
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_category_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 160
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_category_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 162
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_category_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_2
    :goto_0
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    const-class v1, Lcom/app/thestream/activities/MainActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 166
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "category_position"

    .line 167
    invoke-virtual {p2, v0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, p2}, Lcom/app/thestream/fragments/FragmentSettings;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$changePlayerMode$11$com-app-thestream-fragments-FragmentSettings(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0, p2}, Lcom/app/thestream/databases/prefs/SharedPref;->updatePlayerMode(I)V

    if-nez p2, :cond_0

    .line 186
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_player_mode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 188
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_player_mode:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$changePlayerMode$12$com-app-thestream-fragments-FragmentSettings(Landroid/view/View;)V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getPlayerMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12014a

    .line 182
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda3;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    .line 183
    invoke-virtual {v1, p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$changeVideoListViewType$7$com-app-thestream-fragments-FragmentSettings(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0, p2}, Lcom/app/thestream/databases/prefs/SharedPref;->updateChannelViewType(I)V

    if-nez p2, :cond_0

    .line 132
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_video_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 134
    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentSettings;->txt_current_video_list:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_1
    :goto_0
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    const-class v1, Lcom/app/thestream/activities/MainActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 138
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, p2}, Lcom/app/thestream/fragments/FragmentSettings;->startActivity(Landroid/content/Intent;)V

    .line 141
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method synthetic lambda$changeVideoListViewType$8$com-app-thestream-fragments-FragmentSettings(Landroid/view/View;)V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getChannelViewType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 126
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120148

    .line 127
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda4;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    .line 128
    invoke-virtual {v1, p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$initComponent$0$com-app-thestream-fragments-FragmentSettings(Landroid/view/View;)V
    .locals 2

    .line 95
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    const-class v1, Lcom/app/thestream/activities/ActivityPrivacyPolicy;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$initComponent$1$com-app-thestream-fragments-FragmentSettings(Landroid/view/View;)V
    .locals 2

    .line 96
    new-instance p1, Landroid/content/Intent;

    const-string v0, "http://play.google.com/store/apps/details?id=com.mexicotv.futbolenvivoabierta"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$initComponent$2$com-app-thestream-fragments-FragmentSettings(Landroid/view/View;)V
    .locals 2

    .line 97
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-virtual {v0}, Lcom/app/thestream/databases/prefs/SharedPref;->getMoreAppsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/app/thestream/fragments/FragmentSettings;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$initComponent$3$com-app-thestream-fragments-FragmentSettings(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/app/thestream/fragments/FragmentSettings;->aboutDialog()V

    return-void
.end method

.method synthetic lambda$onThemeChanged$4$com-app-thestream-fragments-FragmentSettings(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/app/thestream/databases/prefs/SharedPref;->setIsDarkTheme(Ljava/lang/Boolean;)V

    .line 106
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method synthetic lambda$onThemeChanged$5$com-app-thestream-fragments-FragmentSettings()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method synthetic lambda$onThemeChanged$6$com-app-thestream-fragments-FragmentSettings(Landroid/view/View;)V
    .locals 3

    .line 110
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->switch_theme:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {p1}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/app/thestream/databases/prefs/SharedPref;->setIsDarkTheme(Ljava/lang/Boolean;)V

    .line 112
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->switch_theme:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/app/thestream/databases/prefs/SharedPref;->setIsDarkTheme(Ljava/lang/Boolean;)V

    .line 115
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->switch_theme:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    invoke-virtual {p1, v0}, Lcom/google/android/material/switchmaterial/SwitchMaterial;->setChecked(Z)V

    .line 117
    :goto_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/app/thestream/fragments/FragmentSettings$$ExternalSyntheticLambda8;-><init>(Lcom/app/thestream/fragments/FragmentSettings;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 49
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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

    const p3, 0x7f0d0058

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    .line 56
    new-instance p1, Lcom/app/thestream/databases/prefs/SharedPref;

    iget-object p2, p0, Lcom/app/thestream/fragments/FragmentSettings;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/app/thestream/databases/prefs/SharedPref;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->sharedPref:Lcom/app/thestream/databases/prefs/SharedPref;

    .line 58
    invoke-direct {p0}, Lcom/app/thestream/fragments/FragmentSettings;->initComponent()V

    .line 60
    iget-object p1, p0, Lcom/app/thestream/fragments/FragmentSettings;->root_view:Landroid/view/View;

    return-object p1
.end method
