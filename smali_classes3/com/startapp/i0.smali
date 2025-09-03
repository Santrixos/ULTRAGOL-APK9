.class public Lcom/startapp/i0;
.super Ljava/lang/Object;
.source "Sta"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/startapp/networkTest/enums/AppCategoryTypes;
    .locals 1

    .line 27
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->j:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->f:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    goto :goto_0

    .line 53
    :pswitch_1
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->d:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    goto :goto_0

    .line 54
    :pswitch_2
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->e:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    goto :goto_0

    .line 55
    :pswitch_3
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->g:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    goto :goto_0

    .line 56
    :pswitch_4
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->c:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    goto :goto_0

    .line 57
    :pswitch_5
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->h:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    goto :goto_0

    .line 58
    :pswitch_6
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->a:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    goto :goto_0

    .line 61
    :pswitch_7
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->b:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    goto :goto_0

    .line 82
    :pswitch_8
    sget-object v0, Lcom/startapp/networkTest/enums/AppCategoryTypes;->i:Lcom/startapp/networkTest/enums/AppCategoryTypes;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;IIIIZ)Z
    .locals 2

    .line 4
    invoke-static {p0}, Lcom/startapp/i0;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 11
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 12
    new-instance p1, Lcom/startapp/i0$a;

    invoke-direct {p1, p0}, Lcom/startapp/i0$a;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 18
    new-instance p1, Lcom/startapp/i0$b;

    invoke-direct {p1, p5, p0}, Lcom/startapp/i0$b;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {v0, p4, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "android:get_usage_stats"

    invoke-virtual {v0, v3, v2, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x18808000

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 8
    invoke-static {p0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_0
    return v1
.end method
