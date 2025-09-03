.class public Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;
.super Lcom/startapp/sdk/ads/video/player/a;
.source "Sta"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;,
        Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorType;
    }
.end annotation


# instance fields
.field public f:Landroid/media/MediaPlayer;

.field public final g:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startapp/sdk/ads/video/player/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->g:Landroid/widget/VideoView;

    .line 3
    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 4
    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/player/a;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->g:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    .line 6
    iget-object p1, p0, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->f:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_0
    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startapp/sdk/ads/video/player/a;->d:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$b;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/startapp/sdk/ads/video/i;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/video/i;->a()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/player/a;->c:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/player/a;->c:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$c;

    const/16 v2, 0x64

    if-ne p2, v2, :cond_1

    .line 4
    sget-object p2, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorType;->b:Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorType;

    goto :goto_1

    .line 6
    :cond_1
    sget-object p2, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorType;->a:Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorType;

    .line 7
    :goto_1
    sget-object v2, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorType;->b:Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorType;

    if-ne p2, v2, :cond_2

    sget-object p2, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;->b:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;

    goto :goto_2

    .line 8
    :cond_2
    sget-object p2, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;->a:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;

    :goto_2
    const/16 v2, -0x3f2

    if-eq p3, v2, :cond_5

    const/16 v2, -0x3ef

    if-eq p3, v2, :cond_4

    const/16 v2, -0x6e

    if-eq p3, v2, :cond_3

    .line 9
    sget-object p3, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;->a:Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;

    goto :goto_3

    .line 10
    :cond_3
    sget-object p3, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;->d:Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;

    goto :goto_3

    .line 11
    :cond_4
    sget-object p3, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;->b:Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;

    goto :goto_3

    .line 13
    :cond_5
    sget-object p3, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;->c:Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$MediaErrorExtra;

    .line 14
    :goto_3
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    .line 15
    new-instance v2, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;

    invoke-direct {v2, p2, p3, p1}, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;-><init>(Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;Ljava/lang/String;I)V

    .line 16
    check-cast v0, Lcom/startapp/ed;

    .line 17
    iget-object p2, v0, Lcom/startapp/ed;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object v3, p2, Lcom/startapp/sdk/ads/video/VideoMode;->K:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface;

    const/4 v4, 0x1

    if-nez v3, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    iput-boolean v1, p2, Lcom/startapp/sdk/ads/video/VideoMode;->f0:Z

    .line 24
    iget-boolean v1, p2, Lcom/startapp/sdk/ads/video/VideoMode;->e0:Z

    if-eqz v1, :cond_7

    iget v1, p2, Lcom/startapp/sdk/ads/video/VideoMode;->i0:I

    iget p2, p2, Lcom/startapp/sdk/ads/video/VideoMode;->j0:I

    if-gt v1, p2, :cond_7

    if-lez p1, :cond_7

    const-string p1, "MEDIA_ERROR_IO"

    .line 25
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, v0, Lcom/startapp/ed;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget p2, p1, Lcom/startapp/sdk/ads/video/VideoMode;->i0:I

    add-int/2addr p2, v4

    iput p2, p1, Lcom/startapp/sdk/ads/video/VideoMode;->i0:I

    .line 28
    invoke-virtual {p1}, Lcom/startapp/sdk/ads/video/VideoMode;->N()V

    .line 29
    iget-object p1, v0, Lcom/startapp/ed;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object p2, p1, Lcom/startapp/sdk/ads/video/VideoMode;->K:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/video/VideoMode;->y()Lcom/startapp/sdk/ads/video/VideoAdDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/video/VideoAdDetails;->c()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;

    invoke-virtual {p2, p1}, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->a(Ljava/lang/String;)V

    .line 30
    iget-object p1, v0, Lcom/startapp/ed;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    iget-object p1, p1, Lcom/startapp/sdk/ads/video/VideoMode;->K:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface;

    .line 31
    iget p2, v2, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;->c:I

    .line 32
    check-cast p1, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;

    .line 33
    iget-object p1, p1, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->g:Landroid/widget/VideoView;

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->seekTo(I)V

    goto :goto_4

    .line 34
    :cond_7
    iget-object p1, v0, Lcom/startapp/ed;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {p1, v2}, Lcom/startapp/sdk/ads/video/VideoMode;->a(Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;)V

    :goto_4
    return v4

    :cond_8
    return v1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->f:Landroid/media/MediaPlayer;

    .line 2
    iget-object p1, p0, Lcom/startapp/sdk/ads/video/player/a;->b:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$d;

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Lcom/startapp/cd;

    .line 4
    iget-object v0, p1, Lcom/startapp/cd;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->f0:Z

    .line 5
    iget-boolean v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->U:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/startapp/sdk/ads/video/VideoMode;->V:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/video/VideoMode;->B()V

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/startapp/cd;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/video/VideoMode;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p1, Lcom/startapp/cd;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {p1}, Lcom/startapp/sdk/ads/video/VideoMode;->P()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/startapp/sdk/ads/video/player/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/sdk/adsbase/a;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;->f:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    .line 11
    new-instance v0, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$a;

    invoke-direct {v0, p0}, Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer$a;-><init>(Lcom/startapp/sdk/ads/video/player/NativeVideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/startapp/sdk/ads/video/player/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/startapp/sdk/adsbase/a;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 20
    sget-object p1, Lcom/startapp/sdk/ads/video/d$b;->a:Lcom/startapp/sdk/ads/video/d;

    iget-object v0, p0, Lcom/startapp/sdk/ads/video/player/a;->e:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$a;

    .line 21
    iput-object v0, p1, Lcom/startapp/sdk/ads/video/d;->b:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$a;

    :cond_3
    :goto_0
    return-void
.end method
