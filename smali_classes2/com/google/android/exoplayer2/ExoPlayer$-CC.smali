.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayer$-CC;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


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
.method public static bridge synthetic $default$getPlayerError(Lcom/google/android/exoplayer2/ExoPlayer;)Lcom/google/android/exoplayer2/PlaybackException;
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplayer2/ExoPlayer;

    .line 147
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->getPlayerError()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method
