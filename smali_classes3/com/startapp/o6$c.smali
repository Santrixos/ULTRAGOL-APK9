.class public Lcom/startapp/o6$c;
.super Lcom/startapp/v6;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/o6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/o6;


# direct methods
.method public constructor <init>(Lcom/startapp/o6;Lcom/startapp/l6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    .line 2
    invoke-direct {p0, p2}, Lcom/startapp/v6;-><init>(Lcom/startapp/l6;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    .line 3
    iget-object p2, p2, Lcom/startapp/o6;->K:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    .line 4
    sget-object v0, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->a:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    if-ne p2, v0, :cond_3

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "interstitial"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "mraid.setPlacementType"

    .line 6
    invoke-static {p1, p2, v1, v0}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    .line 8
    iget-object v1, v0, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 9
    iget-object v0, v0, Lcom/startapp/o6;->M:Lcom/startapp/r6;

    .line 10
    invoke-static {v1, p1, v0}, Lcom/startapp/q6;->a(Landroid/content/Context;Landroid/webkit/WebView;Lcom/startapp/r6;)V

    .line 12
    iget-object v0, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    .line 13
    invoke-virtual {v0}, Lcom/startapp/o6;->y()V

    .line 14
    iget-object v0, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    invoke-virtual {v0}, Lcom/startapp/g5;->j()V

    .line 15
    iget-object v0, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    .line 16
    iget-boolean v1, v0, Lcom/startapp/o6;->Q:Z

    if-nez v1, :cond_0

    .line 17
    invoke-virtual {v0}, Lcom/startapp/g5;->w()V

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    sget-object v1, Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;->b:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    .line 22
    iput-object v1, v0, Lcom/startapp/o6;->K:Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;

    .line 23
    invoke-static {v1, p1}, Lcom/startapp/n6;->a(Lcom/startapp/sdk/adsbase/mraid/bridge/MraidState;Landroid/webkit/WebView;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "mraid.fireReadyEvent"

    .line 25
    invoke-static {p1, p2, v1, v0}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    .line 27
    iget-boolean p2, p1, Lcom/startapp/o6;->R:Z

    if-eqz p2, :cond_1

    .line 28
    iget-object p1, p1, Lcom/startapp/o6;->L:Lcom/startapp/o6$d;

    .line 29
    invoke-virtual {p1}, Lcom/startapp/o6$d;->fireViewableChangeEvent()V

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    .line 33
    iget-object p2, p1, Lcom/startapp/o6;->S:Landroid/os/Handler;

    if-nez p2, :cond_2

    goto :goto_0

    .line 37
    :cond_2
    new-instance v0, Lcom/startapp/p6;

    invoke-direct {v0, p1}, Lcom/startapp/p6;-><init>(Lcom/startapp/o6;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/startapp/o6$c;->a:Lcom/startapp/o6;

    .line 39
    iget-object p2, p1, Lcom/startapp/g5;->x:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Lcom/startapp/g5;->a(Landroid/view/View;)V

    :cond_3
    return-void
.end method
