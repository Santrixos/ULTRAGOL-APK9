.class public final Lcom/startapp/sdk/cachedservice/BackgroundService;
.super Landroid/app/Service;
.source "Sta"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 4

    .line 1
    sget v0, Lcom/startapp/a0;->a:I

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 13
    :catchall_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :goto_0
    if-ge v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 14
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/startapp/sdk/cachedservice/BackgroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_4

    .line 20
    sget-object p1, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 21
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    .line 23
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Lcom/startapp/wb;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 29
    :cond_3
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 30
    :cond_4
    sget-object p1, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 31
    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    .line 33
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Lcom/startapp/wb;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 39
    :cond_5
    invoke-static {p0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x3

    return p1
.end method
