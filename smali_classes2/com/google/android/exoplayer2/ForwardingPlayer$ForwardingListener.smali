.class final Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ForwardingPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForwardingListener"
.end annotation


# instance fields
.field private final forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

.field private final listener:Lcom/google/android/exoplayer2/Player$Listener;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ForwardingPlayer;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p1, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    .line 833
    iput-object p2, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1041
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 1044
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;

    .line 1045
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    iget-object v2, p1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    iget-object p1, p1, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1054
    iget-object v1, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 1

    .line 1003
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioAttributesChanged(Lcom/google/android/exoplayer2/audio/AudioAttributes;)V

    return-void
.end method

.method public onAudioSessionIdChanged(I)V
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method public onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onAvailableCommandsChanged(Lcom/google/android/exoplayer2/Player$Commands;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1018
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V
    .locals 1

    .line 839
    iget-object p1, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->forwardingPlayer:Lcom/google/android/exoplayer2/ForwardingPlayer;

    invoke-interface {p1, v0, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onEvents(Lcom/google/android/exoplayer2/Player;Lcom/google/android/exoplayer2/Player$Events;)V

    return-void
.end method

.method public onIsLoadingChanged(Z)V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 1

    .line 972
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onMaxSeekToPreviousPositionChanged(J)V

    return-void
.end method

.method public onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplayer2/MediaItem;I)V

    return-void
.end method

.method public onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(I)V
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 1

    .line 935
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 1

    .line 940
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplayer2/PlaybackException;)V

    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V
    .locals 1

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPlaylistMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/Player$Listener;->onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player$PositionInfo;Lcom/google/android/exoplayer2/Player$PositionInfo;I)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player$Listener;->onRenderedFirstFrame()V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekBackIncrementChanged(J)V

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekForwardIncrementChanged(J)V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 1

    .line 978
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/Player$Listener;->onSeekProcessed()V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public onSurfaceSizeChanged(II)V
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onTimelineChanged(Lcom/google/android/exoplayer2/Timeline;I)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksChanged(Lcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V

    return-void
.end method

.method public onTracksInfoChanged(Lcom/google/android/exoplayer2/TracksInfo;)V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onTracksInfoChanged(Lcom/google/android/exoplayer2/TracksInfo;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 1

    .line 983
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public onVolumeChanged(F)V
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/google/android/exoplayer2/ForwardingPlayer$ForwardingListener;->listener:Lcom/google/android/exoplayer2/Player$Listener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method
