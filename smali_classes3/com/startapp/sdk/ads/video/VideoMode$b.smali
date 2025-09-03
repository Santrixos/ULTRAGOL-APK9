.class public Lcom/startapp/sdk/ads/video/VideoMode$b;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/ads/video/VideoMode;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/sdk/ads/video/VideoMode;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/video/VideoMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object v0, v0, Lcom/startapp/sdk/ads/video/VideoMode;->K:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;

    .line 3
    iget-object v0, v0, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->g:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/ads/video/VideoMode;->f(I)V

    .line 5
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/ads/video/VideoMode;->e(I)V

    .line 6
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    .line 7
    iget v1, v0, Lcom/startapp/g5;->E:I

    if-nez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/video/VideoMode;->I()V

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.startapp.android.ShowDisplayBroadcastListener"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "dParam"

    .line 10
    iget-object v2, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    .line 11
    invoke-virtual {v2}, Lcom/startapp/f3;->a()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    .line 14
    iget-object v1, v1, Lcom/startapp/f3;->b:Landroid/app/Activity;

    .line 15
    invoke-static {v1}, Lcom/startapp/a6;->a(Landroid/content/Context;)Lcom/startapp/a6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/startapp/a6;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-boolean v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->X:Z

    if-nez v1, :cond_1

    .line 18
    iget-object v0, v0, Lcom/startapp/sdk/ads/video/VideoMode;->l0:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 24
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$b;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/video/VideoMode;->b()V

    :cond_1
    :goto_0
    return-void
.end method
