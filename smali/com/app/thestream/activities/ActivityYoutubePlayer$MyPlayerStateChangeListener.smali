.class final Lcom/app/thestream/activities/ActivityYoutubePlayer$MyPlayerStateChangeListener;
.super Ljava/lang/Object;
.source "ActivityYoutubePlayer.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/app/thestream/activities/ActivityYoutubePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyPlayerStateChangeListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/app/thestream/activities/ActivityYoutubePlayer$1;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/app/thestream/activities/ActivityYoutubePlayer$MyPlayerStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdStarted()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorReason"
        }
    .end annotation

    return-void
.end method

.method public onLoaded(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public onLoading()V
    .locals 0

    return-void
.end method

.method public onVideoEnded()V
    .locals 0

    return-void
.end method

.method public onVideoStarted()V
    .locals 0

    return-void
.end method
