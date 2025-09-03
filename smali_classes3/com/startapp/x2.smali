.class public Lcom/startapp/x2;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/x2$b;,
        Lcom/startapp/x2$a;
    }
.end annotation


# static fields
.field private static a:Lcom/startapp/x2$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Ljava/lang/StackTraceElement;
    .locals 5

    const/4 v0, 0x0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 3
    :cond_0
    invoke-static {}, Lcom/startapp/x2$b;->a()[Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    const-class v2, Lcom/startapp/x2$b;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 8
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_3

    .line 9
    aget-object v4, v1, v0

    if-nez v4, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p0

    if-ge v0, v3, :cond_3

    .line 20
    aget-object p0, v1, v0

    return-object p0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lcom/startapp/x2$a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startapp/x2;->a:Lcom/startapp/x2$a;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, v0, v1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;ZZ)V
    .locals 0

    return-void
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0, v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;ZZ)V

    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startapp/x2;->a:Lcom/startapp/x2$a;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v0, p0}, Lcom/startapp/x2$a;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-static {p0, v0, v0}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;ZZ)V

    :catchall_0
    :goto_0
    return-void
.end method
