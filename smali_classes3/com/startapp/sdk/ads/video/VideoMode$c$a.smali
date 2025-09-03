.class public Lcom/startapp/sdk/ads/video/VideoMode$c$a;
.super Ljava/lang/Object;
.source "Sta"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapp/sdk/ads/video/VideoMode$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/startapp/sdk/ads/video/VideoMode$c;


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/video/VideoMode$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/VideoMode$c$a;->a:Lcom/startapp/sdk/ads/video/VideoMode$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$c$a;->a:Lcom/startapp/sdk/ads/video/VideoMode$c;

    iget-object v0, v0, Lcom/startapp/sdk/ads/video/VideoMode$c;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {v0}, Lcom/startapp/sdk/ads/video/VideoMode;->Q()V

    .line 2
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$c$a;->a:Lcom/startapp/sdk/ads/video/VideoMode$c;

    iget-object v0, v0, Lcom/startapp/sdk/ads/video/VideoMode$c;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lcom/startapp/sdk/ads/video/VideoMode$c$a;->a:Lcom/startapp/sdk/ads/video/VideoMode$c;

    iget-object v0, v0, Lcom/startapp/sdk/ads/video/VideoMode$c;->a:Lcom/startapp/sdk/ads/video/VideoMode;

    new-instance v1, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;

    sget-object v2, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;->c:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;

    const-string v3, "Buffering timeout reached"

    iget v4, v0, Lcom/startapp/sdk/ads/video/VideoMode;->Q:I

    invoke-direct {v1, v2, v3, v4}, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;-><init>(Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/ads/video/VideoMode;->a(Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/startapp/i4;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
