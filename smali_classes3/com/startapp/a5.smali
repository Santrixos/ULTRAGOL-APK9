.class public Lcom/startapp/a5;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/a5$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "insight Core SDK"

.field public static final h:Ljava/lang/String; = "\u00a9 2014 - 2020 umlaut insight GmbH"

.field public static final i:Ljava/lang/String; = "20220530140220"

.field private static j:Lcom/startapp/a5;


# instance fields
.field private a:Lcom/startapp/y4;

.field private b:Lcom/startapp/ua;

.field private c:Lcom/startapp/b5;

.field private d:Landroid/content/Context;

.field private e:Ljava/security/PublicKey;

.field private f:Lcom/startapp/a5$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/a5;->d:Landroid/content/Context;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    iget-object v0, v0, Lcom/startapp/a5;->c:Lcom/startapp/b5;

    invoke-virtual {v0}, Lcom/startapp/b5;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/startapp/ja;->a(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    invoke-static {p0, p1}, Lcom/startapp/a5;->a(Landroid/content/Context;[B)V

    return-void

    .line 8
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Error while opening the raw resource"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;[B)V
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 9
    sget-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/startapp/z4;->a([B)Lcom/startapp/z4;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    new-instance v0, Lcom/startapp/a5;

    invoke-direct {v0, p0}, Lcom/startapp/a5;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    .line 21
    iget-object p0, p1, Lcom/startapp/z4;->a:Ljava/security/PublicKey;

    iput-object p0, v0, Lcom/startapp/a5;->e:Ljava/security/PublicKey;

    .line 22
    iget-object p0, p1, Lcom/startapp/z4;->b:Lcom/startapp/y4;

    iput-object p0, v0, Lcom/startapp/a5;->a:Lcom/startapp/y4;

    .line 24
    invoke-direct {v0}, Lcom/startapp/a5;->g()V

    return-void

    .line 25
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "configuration is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "config is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/startapp/a5$a;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    iput-object p0, v0, Lcom/startapp/a5;->f:Lcom/startapp/a5$a;

    return-void
.end method

.method public static b()Lcom/startapp/y4;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    iget-object v0, v0, Lcom/startapp/a5;->a:Lcom/startapp/y4;

    return-object v0
.end method

.method public static c()Lcom/startapp/b5;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    iget-object v0, v0, Lcom/startapp/a5;->c:Lcom/startapp/b5;

    return-object v0
.end method

.method public static d()Lcom/startapp/a5$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    iget-object v0, v0, Lcom/startapp/a5;->f:Lcom/startapp/a5$a;

    return-object v0
.end method

.method public static e()Ljava/security/PublicKey;
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    iget-object v0, v0, Lcom/startapp/a5;->e:Ljava/security/PublicKey;

    return-object v0
.end method

.method public static declared-synchronized f()Lcom/startapp/ua;
    .locals 2

    const-class v0, Lcom/startapp/a5;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    iget-object v1, v1, Lcom/startapp/a5;->b:Lcom/startapp/ua;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private g()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startapp/ua;

    invoke-direct {v0}, Lcom/startapp/ua;-><init>()V

    iput-object v0, p0, Lcom/startapp/a5;->b:Lcom/startapp/ua;

    .line 3
    new-instance v0, Lcom/startapp/b5;

    iget-object v1, p0, Lcom/startapp/a5;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/startapp/b5;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/startapp/a5;->c:Lcom/startapp/b5;

    return-void
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/a5;->j:Lcom/startapp/a5;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
