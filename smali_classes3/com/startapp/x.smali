.class public Lcom/startapp/x;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/startapp/wb;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/x;->c:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lcom/startapp/wb;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/x;->d:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    invoke-static {v0}, Lcom/startapp/wb;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/x;->e:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    invoke-static {v0}, Lcom/startapp/wb;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/x;->f:Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_4

    invoke-static {v0}, Lcom/startapp/wb;->a([I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/startapp/x;->g:Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x47
        0xd
        -0xa
        0xe
        -0x3
        -0x6
        -0x5
        -0x36
        0x42
        -0xb
        0xd
        -0x5
        -0x4
        0xa
        0x0
        -0xa
        0x6
        -0x1
        -0x40
        0x13
        0x2
        0x0
        0x2
        0xe
        0x0
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x42
        0x3
        0x5
        -0x9
    .end array-data

    :array_2
    .array-data 4
        0x3d
        0xc
        -0xe
        0x11
        0x1
        -0xe
    .end array-data

    :array_3
    .array-data 4
        0x38
        -0x1
        0x2
        0x8
        -0x4
        0xb
        -0x3
        0x6
        -0x7
        -0xa
    .end array-data

    :array_4
    .array-data 4
        0x56
        -0x13
        0x3
        -0xc
        -0x2
        0x13
        -0xb
        0x6
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/startapp/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    iput-object p1, p0, Lcom/startapp/x;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 12

    .line 23
    iget-object v0, p0, Lcom/startapp/x;->a:Landroid/content/Context;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/startapp/x;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/startapp/x;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/startapp/x;->g:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {v4}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Lcom/startapp/x;->d:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v2, v7

    invoke-static {v4}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/startapp/x;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    .line 27
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x1000

    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 29
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 30
    array-length v5, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v1, :cond_3

    .line 32
    aget-object v10, v2, v9

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v11, v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 33
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x10

    if-ge v10, v11, :cond_0

    .line 34
    aput v4, v3, v9

    goto :goto_2

    .line 35
    :cond_0
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v10, v10, v8

    and-int/2addr v10, v4

    if-ne v10, v4, :cond_1

    .line 36
    aput v4, v3, v9

    goto :goto_2

    .line 38
    :cond_1
    aput v7, v3, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 39
    :catchall_0
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_3
    if-ge v6, v1, :cond_5

    .line 41
    aget v2, v3, v6

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 45
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/startapp/x;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/startapp/x;->a:Landroid/content/Context;

    .line 4
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "com_startapp_sdk_aar"

    const-string v6, "integer"

    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "cnt=%d,aar=%d,mds=%d"

    .line 12
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 19
    new-instance v0, Lcom/startapp/i4;

    sget-object v1, Lcom/startapp/j4;->d:Lcom/startapp/j4;

    invoke-direct {v0, v1}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v1, "initialize"

    .line 20
    iput-object v1, v0, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 21
    iput-object p1, v0, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 22
    invoke-virtual {v0}, Lcom/startapp/i4;->a()V

    return-void
.end method
