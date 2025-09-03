.class public Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver$InternalException;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/ThreadFactory;

.field public final c:Lcom/startapp/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/AdvertisingIdResolverMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/locks/Lock;

.field public final e:Ljava/util/concurrent/locks/Condition;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/startapp/t;",
            ">;"
        }
    .end annotation
.end field

.field public volatile g:I

.field public final h:D

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ThreadFactory;Lcom/startapp/d3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Lcom/startapp/d3<",
            "Lcom/startapp/sdk/adsbase/remoteconfig/AdvertisingIdResolverMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->d:Ljava/util/concurrent/locks/Lock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->e:Ljava/util/concurrent/locks/Condition;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->g:I

    .line 13
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->h:D

    .line 23
    iput-object p1, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->a:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->b:Ljava/util/concurrent/ThreadFactory;

    .line 25
    iput-object p3, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->c:Lcom/startapp/d3;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/startapp/t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 115
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "getAdvertisingIdInfo"

    .line 116
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const/4 p0, 0x0

    .line 117
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 123
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "getId"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    const-string v3, "isLimitAdTrackingEnabled"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 130
    new-instance v1, Lcom/startapp/t;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v2, "APP"

    invoke-direct {v1, v0, v2, p0}, Lcom/startapp/t;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1

    .line 131
    :cond_0
    new-instance p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver$InternalException;

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver$InternalException;-><init>(I)V

    throw p0

    .line 132
    :cond_1
    new-instance p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver$InternalException;

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver$InternalException;-><init>(I)V

    throw p0
.end method

.method public static b(Landroid/content/Context;)Lcom/startapp/t;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms"

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    new-instance v2, Lcom/startapp/u;

    invoke-direct {v2}, Lcom/startapp/u;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v4, 0x1

    .line 58
    :try_start_1
    invoke-virtual {p0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    iget-boolean v1, v2, Lcom/startapp/u;->b:Z

    if-nez v1, :cond_3

    .line 63
    iget-object v1, v2, Lcom/startapp/u;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_2

    .line 68
    iput-boolean v4, v2, Lcom/startapp/u;->b:Z

    .line 69
    new-instance v5, Lcom/startapp/t;

    .line 70
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 76
    :try_start_2
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 78
    invoke-interface {v1, v4, v6, v7, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 80
    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    .line 81
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    :try_start_3
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 84
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    if-eqz v8, :cond_1

    const-string v6, "DEVICE"

    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 87
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 92
    :try_start_4
    invoke-virtual {v7, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v7, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x2

    .line 95
    invoke-interface {v1, v0, v7, v9, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 97
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 98
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 100
    :cond_0
    :try_start_5
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 101
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 102
    invoke-direct {v5, v8, v6, v3}, Lcom/startapp/t;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 108
    invoke-static {p0, v2}, Lcom/startapp/a0;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-object v5

    :catchall_0
    move-exception v0

    .line 109
    :try_start_6
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 111
    throw v0

    .line 112
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    .line 113
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    .line 114
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 115
    throw v0

    .line 116
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 117
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 118
    :cond_4
    new-instance v0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver$InternalException;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver$InternalException;-><init>(I)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_0

    :catchall_3
    move-exception v0

    const/4 v2, 0x0

    .line 120
    :goto_0
    invoke-static {p0, v2}, Lcom/startapp/a0;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 121
    throw v0
.end method


# virtual methods
.method public a()Lcom/startapp/t;
    .locals 9

    .line 5
    iget-object v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/t;

    if-nez v0, :cond_a

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-virtual {p0, v2}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->b(I)V

    .line 11
    sget-object v0, Lcom/startapp/t;->d:Lcom/startapp/t;

    return-object v0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    .line 18
    iget-object v5, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->d:Ljava/util/concurrent/locks/Lock;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v3, v4, v6}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_8

    .line 19
    :try_start_1
    iget v5, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->g:I

    if-nez v5, :cond_1

    .line 20
    iget-object v5, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v6, Lcom/startapp/sdk/common/advertisingid/a;

    invoke-direct {v6, p0}, Lcom/startapp/sdk/common/advertisingid/a;-><init>(Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v5

    .line 48
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 51
    iput v2, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->g:I

    .line 52
    :cond_1
    :goto_0
    iget v5, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->g:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    cmp-long v5, v7, v3

    if-lez v5, :cond_2

    .line 55
    invoke-virtual {p0, v6}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->b(I)V

    .line 57
    sget-object v0, Lcom/startapp/t;->d:Lcom/startapp/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    :try_start_2
    iget-object v1, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v0

    .line 77
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->e:Ljava/util/concurrent/locks/Condition;

    sub-long v6, v3, v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/t;

    if-nez v0, :cond_4

    const/4 v0, 0x4

    .line 83
    invoke-virtual {p0, v0}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->b(I)V

    .line 85
    sget-object v0, Lcom/startapp/t;->d:Lcom/startapp/t;

    goto :goto_2

    :cond_4
    const-string v1, "00000000-0000-0000-0000-000000000000"

    .line 87
    iget-object v3, v0, Lcom/startapp/t;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 89
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v3, 0x1f

    if-ge v1, v3, :cond_5

    goto :goto_1

    .line 94
    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->a:Landroid/content/Context;

    const-string v3, "com.google.android.gms.permission.AD_ID"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v1, :cond_6

    goto :goto_1

    :catchall_0
    move-exception v1

    const/16 v2, 0x2000

    .line 96
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->a(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 97
    invoke-static {v1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_7

    const/16 v1, 0x1000

    .line 98
    invoke-virtual {p0, v1}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->b(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 102
    :cond_7
    :goto_2
    :try_start_6
    iget-object v1, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 103
    throw v0

    :cond_8
    const/16 v0, 0x8

    .line 105
    invoke-virtual {p0, v0}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->b(I)V

    .line 107
    sget-object v0, Lcom/startapp/t;->d:Lcom/startapp/t;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    const/16 v1, 0x20

    .line 110
    invoke-virtual {p0, v1}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->a(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 111
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 114
    :cond_9
    sget-object v0, Lcom/startapp/t;->d:Lcom/startapp/t;

    :cond_a
    :goto_3
    return-object v0
.end method

.method public a(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->c:Lcom/startapp/d3;

    invoke-interface {v0}, Lcom/startapp/d3;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/startapp/sdk/adsbase/remoteconfig/AdvertisingIdResolverMetadata;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/AdvertisingIdResolverMetadata;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->h:D

    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/AdvertisingIdResolverMetadata;->b()D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gez v6, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/startapp/sdk/adsbase/remoteconfig/AdvertisingIdResolverMetadata;->a()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 10
    :try_start_1
    iget v1, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->g:I

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->b:Ljava/util/concurrent/ThreadFactory;

    new-instance v2, Lcom/startapp/sdk/common/advertisingid/a;

    invoke-direct {v2, p0}, Lcom/startapp/sdk/common/advertisingid/a;-><init>(Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 42
    iput v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x10

    .line 43
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-static {v1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    if-eqz v0, :cond_3

    .line 48
    :goto_2
    iget-object v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_3
    return-void

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    :cond_4
    throw v1
.end method

.method public final b(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->i:I

    and-int v1, v0, p1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    or-int/2addr v0, p1

    .line 3
    iput v0, p0, Lcom/startapp/sdk/common/advertisingid/AdvertisingIdResolver;->i:I

    .line 4
    new-instance v0, Lcom/startapp/i4;

    sget-object v1, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {v0, v1}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v1, "AIR"

    .line 5
    iput-object v1, v0, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    iput-object p1, v0, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Lcom/startapp/i4;->a()V

    :cond_1
    return-void
.end method
