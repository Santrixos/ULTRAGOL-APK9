.class public Lcom/startapp/sdk/ads/splash/SplashMetaData;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static volatile a:Lcom/startapp/sdk/ads/splash/SplashMetaData; = null

.field public static b:Ljava/lang/Object; = null

.field private static final serialVersionUID:J = 0x529003c78fa40a53L


# instance fields
.field private SplashConfig:Lcom/startapp/sdk/ads/splash/SplashConfig;
    .annotation runtime Lcom/startapp/ob;
        complex = true
    .end annotation
.end field

.field private splashMetadataUpdateVersion:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startapp/sdk/ads/splash/SplashMetaData;

    invoke-direct {v0}, Lcom/startapp/sdk/ads/splash/SplashMetaData;-><init>()V

    sput-object v0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->a:Lcom/startapp/sdk/ads/splash/SplashMetaData;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/startapp/sdk/ads/splash/SplashConfig;

    invoke-direct {v0}, Lcom/startapp/sdk/ads/splash/SplashConfig;-><init>()V

    iput-object v0, p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->SplashConfig:Lcom/startapp/sdk/ads/splash/SplashConfig;

    const-string v0, "4.10.5"

    .line 6
    iput-object v0, p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->splashMetadataUpdateVersion:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .line 7
    const-class v0, Lcom/startapp/sdk/ads/splash/SplashMetaData;

    const-string v1, "StartappSplashMetadata"

    invoke-static {p0, v1, v0}, Lcom/startapp/z2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;

    .line 8
    new-instance v0, Lcom/startapp/sdk/ads/splash/SplashMetaData;

    invoke-direct {v0}, Lcom/startapp/sdk/ads/splash/SplashMetaData;-><init>()V

    if-eqz p0, :cond_1

    .line 10
    invoke-static {p0, v0}, Lcom/startapp/wb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 11
    iget-object v1, p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->splashMetadataUpdateVersion:Ljava/lang/String;

    const-string v2, "4.10.5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/startapp/i4;

    sget-object v1, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {v0, v1}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v1, "metadata_null"

    .line 13
    iput-object v1, v0, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {v0}, Lcom/startapp/i4;->a()V

    .line 16
    :cond_0
    sput-object p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->a:Lcom/startapp/sdk/ads/splash/SplashMetaData;

    goto :goto_0

    .line 18
    :cond_1
    sput-object v0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->a:Lcom/startapp/sdk/ads/splash/SplashMetaData;

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/startapp/sdk/ads/splash/SplashMetaData;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "4.10.5"

    .line 3
    iput-object v1, p1, Lcom/startapp/sdk/ads/splash/SplashMetaData;->splashMetadataUpdateVersion:Ljava/lang/String;

    .line 4
    sput-object p1, Lcom/startapp/sdk/ads/splash/SplashMetaData;->a:Lcom/startapp/sdk/ads/splash/SplashMetaData;

    const-string v1, "StartappSplashMetadata"

    .line 5
    invoke-static {p0, v1, p1}, Lcom/startapp/z2;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a()Lcom/startapp/sdk/ads/splash/SplashConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->SplashConfig:Lcom/startapp/sdk/ads/splash/SplashConfig;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/startapp/sdk/ads/splash/SplashMetaData;

    .line 3
    iget-object v2, p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->SplashConfig:Lcom/startapp/sdk/ads/splash/SplashConfig;

    iget-object v3, p1, Lcom/startapp/sdk/ads/splash/SplashMetaData;->SplashConfig:Lcom/startapp/sdk/ads/splash/SplashConfig;

    invoke-static {v2, v3}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->splashMetadataUpdateVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/startapp/sdk/ads/splash/SplashMetaData;->splashMetadataUpdateVersion:Ljava/lang/String;

    .line 4
    invoke-static {v2, p1}, Lcom/startapp/wb;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->SplashConfig:Lcom/startapp/sdk/ads/splash/SplashConfig;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/startapp/sdk/ads/splash/SplashMetaData;->splashMetadataUpdateVersion:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/startapp/wb;->a:Ljava/util/Map;

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
