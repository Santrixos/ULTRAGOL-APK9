.class public Lcom/startapp/nd;
.super Ljava/lang/Object;
.source "Sta"


# static fields
.field private static final h:Ljava/lang/String; = "nd"

.field private static final i:Z = false

.field public static final j:I = -0x1


# instance fields
.field private a:Lcom/startapp/networkTest/enums/WifiStates;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/startapp/nd;->c:Z

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/startapp/nd;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/startapp/nd;->d:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/startapp/nd;->b:Landroid/net/ConnectivityManager;

    .line 17
    sget-object p1, Lcom/startapp/networkTest/enums/WifiStates;->a:Lcom/startapp/networkTest/enums/WifiStates;

    iput-object p1, p0, Lcom/startapp/nd;->a:Lcom/startapp/networkTest/enums/WifiStates;

    .line 18
    invoke-direct {p0}, Lcom/startapp/nd;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/startapp/nd$a;->a:[I

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->WIFIINFO_BSSID_RECORDTYPE()Lcom/startapp/networkTest/enums/AnonymizationLevel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string p1, ""

    return-object p1

    .line 16
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "xx:xx:xx"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "xx:xx:xx:xx:xx:xx"

    :cond_3
    return-object p1
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object v0, Lcom/startapp/nd$a;->a:[I

    invoke-static {}, Lcom/startapp/a5;->b()Lcom/startapp/y4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/startapp/y4;->WIFIINFO_SSID_RECORDTYPE()Lcom/startapp/networkTest/enums/AnonymizationLevel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private b()[I
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 11
    fill-array-data v1, :array_0

    .line 13
    iget-boolean v2, p0, Lcom/startapp/nd;->f:Z

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "/proc/net/wireless"

    .line 16
    invoke-static {v2}, Lcom/startapp/v9;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 18
    array-length v3, v2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 19
    iput-boolean v4, p0, Lcom/startapp/nd;->f:Z

    return-object v1

    .line 21
    :cond_1
    array-length v3, v2

    if-le v3, v0, :cond_3

    const/4 v3, 0x2

    .line 23
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 24
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/startapp/la;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 25
    array-length v6, v5

    const/4 v7, 0x4

    if-le v6, v7, :cond_2

    const/4 v6, 0x0

    .line 26
    aget-object v7, v5, v6

    const-string v8, "wlan0:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 27
    aget-object v2, v5, v0

    const-string v3, "."

    const-string v7, ""

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    .line 28
    aget-object v5, v5, v8

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-array v0, v0, [I

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method


# virtual methods
.method public c()Lcom/startapp/networkTest/data/WifiInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/startapp/networkTest/data/WifiInfo;

    invoke-direct {v0}, Lcom/startapp/networkTest/data/WifiInfo;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/startapp/networkTest/data/WifiInfo;->MissingPermission:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/startapp/nd;->d:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    invoke-static {v1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/nd;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/startapp/nd;->c()Lcom/startapp/networkTest/data/WifiInfo;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/startapp/nd;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    return-wide v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/startapp/nd;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapp/eb;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/nd;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/startapp/nd;->c()Lcom/startapp/networkTest/data/WifiInfo;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/startapp/nd;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/startapp/nd;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapp/eb;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_3
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
