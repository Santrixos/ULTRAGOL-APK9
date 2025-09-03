.class public Lcom/startapp/bd;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startapp/sdk/ads/video/VideoMode;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/video/VideoMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/bd;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startapp/bd;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->K:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, v0, Lcom/startapp/g5;->E:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/startapp/g5;->E:I

    .line 3
    iget-object v0, v0, Lcom/startapp/sdk/ads/video/VideoMode;->L:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/startapp/bd;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iput-boolean v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->T:Z

    .line 5
    iput v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->Q:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 8
    iget-object v4, v0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    const-string v5, "videoApi.setVideoCurrentPosition"

    .line 9
    invoke-static {v4, v2, v5, v3}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 11
    iget-object v0, v0, Lcom/startapp/g5;->v:Landroid/webkit/WebView;

    const-string v1, "videoApi.setSkipTimer"

    .line 12
    invoke-static {v0, v2, v1, v3}, Lcom/startapp/wb;->a(Landroid/webkit/WebView;ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/startapp/bd;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/video/VideoMode;->L()V

    return-void
.end method
