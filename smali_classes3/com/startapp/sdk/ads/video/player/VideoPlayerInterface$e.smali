.class public Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;
.super Ljava/lang/Object;
.source "Sta"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;->a:Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$VideoPlayerErrorType;

    .line 3
    iput-object p2, p0, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/startapp/sdk/ads/video/player/VideoPlayerInterface$e;->c:I

    return-void
.end method
