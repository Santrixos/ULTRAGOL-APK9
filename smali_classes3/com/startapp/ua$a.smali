.class public Lcom/startapp/ua$a;
.super Landroid/os/AsyncTask;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/ua;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/ua;


# direct methods
.method public constructor <init>(Lcom/startapp/ua;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/startapp/ua;->a()Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    invoke-static {p1}, Lcom/startapp/ua;->a(Lcom/startapp/ua;)Lcom/startapp/ba;

    move-result-object p1

    const-string v0, "0.de.pool.ntp.org"

    const/16 v1, 0x2710

    invoke-virtual {p1, v0, v1}, Lcom/startapp/ba;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    invoke-static {p1}, Lcom/startapp/ua;->a(Lcom/startapp/ua;)Lcom/startapp/ba;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/ba;->a()J

    move-result-wide v0

    const-wide v2, 0x15399388bd2L

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const-wide v2, 0x327942a2d80L

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/startapp/ua;->a(Lcom/startapp/ua;J)J

    .line 6
    iget-object p1, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    invoke-static {p1, v0, v1}, Lcom/startapp/ua;->b(Lcom/startapp/ua;J)J

    .line 7
    invoke-static {}, Lcom/startapp/ua;->a()Ljava/lang/String;

    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    invoke-static {v0}, Lcom/startapp/ua;->b(Lcom/startapp/ua;)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/startapp/ua;->b(Lcom/startapp/ua;Z)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/startapp/ua;->a()Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/startapp/ua;->c(Lcom/startapp/ua;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/startapp/x2;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/Void;)V
    .locals 1

    .line 17
    iget-object p1, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/startapp/ua;->a(Lcom/startapp/ua;Z)Z

    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/ua$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/startapp/ua$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startapp/ua$a;->a:Lcom/startapp/ua;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/startapp/ua;->a(Lcom/startapp/ua;Z)Z

    return-void
.end method
