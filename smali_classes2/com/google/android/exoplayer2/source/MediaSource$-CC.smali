.class public final synthetic Lcom/google/android/exoplayer2/source/MediaSource$-CC;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x7
    versionHash = "5e5398f0546d1d7afd62641edb14d82894f11ddc41bce363a0c8d0dac82c9c5a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static $default$getInitialTimeline(Lcom/google/android/exoplayer2/source/MediaSource;)Lcom/google/android/exoplayer2/Timeline;
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$isSingleWindow(Lcom/google/android/exoplayer2/source/MediaSource;)Z
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSource;

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static $default$prepareSource(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/source/MediaSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    sget-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-void
.end method
