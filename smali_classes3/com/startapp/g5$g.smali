.class public Lcom/startapp/g5$g;
.super Landroid/webkit/WebViewClient;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/g5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/g5;


# direct methods
.method public constructor <init>(Lcom/startapp/g5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    invoke-virtual {v0, p1}, Lcom/startapp/g5;->a(Landroid/webkit/WebView;)V

    .line 2
    iget-object v0, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 3
    iget-object v3, v0, Lcom/startapp/f3;->h:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 5
    iget-object v0, v0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    const-string v3, "gClientInterface.setMode"

    .line 6
    invoke-static {v0, v1, v3, v2}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "externalLinks"

    aput-object v3, v2, v4

    .line 8
    iget-object v0, v0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    const-string v3, "enableScheme"

    .line 9
    invoke-static {v0, v1, v3, v2}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    invoke-virtual {v0}, Lcom/startapp/g5;->r()V

    const/4 v0, 0x0

    .line 11
    invoke-static {p2, v0}, Lcom/startapp/sdk/adsbase/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "dParam"

    .line 13
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object p2, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    invoke-virtual {p2}, Lcom/startapp/g5;->s()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/startapp/a6;->a(Landroid/content/Context;)Lcom/startapp/a6;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v0}, Lcom/startapp/a6;->a(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/startapp/wb;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    iget-boolean p1, p1, Lcom/startapp/g5;->C:Z

    if-nez p1, :cond_2

    .line 6
    new-instance p1, Lcom/startapp/i4;

    sget-object v0, Lcom/startapp/j4;->e:Lcom/startapp/j4;

    invoke-direct {p1, v0}, Lcom/startapp/i4;-><init>(Lcom/startapp/j4;)V

    const-string v0, "fake_click"

    .line 7
    iput-object v0, p1, Lcom/startapp/i4;->d:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    .line 9
    invoke-virtual {v0}, Lcom/startapp/f3;->a()Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p1, Lcom/startapp/i4;->g:Ljava/lang/String;

    const-string v0, "jsTag="

    .line 11
    invoke-static {v0}, Lcom/startapp/b1;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    iget-boolean v1, v1, Lcom/startapp/g5;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    iput-object v0, p1, Lcom/startapp/i4;->e:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Lcom/startapp/i4;->a()V

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/startapp/g5$g;->a:Lcom/startapp/g5;

    iget-boolean v0, p1, Lcom/startapp/g5;->F:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/startapp/g5;->C:Z

    if-nez v0, :cond_3

    return v1

    .line 22
    :cond_3
    invoke-virtual {p1, p2, v1}, Lcom/startapp/g5;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method
