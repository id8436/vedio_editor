package com.adobe.premiereclip.mediaengine;

import android.content.Context;
import android.os.Handler;
import android.util.Log;
import com.adobe.premiereclip.mediaengine.playercomponent.AudioSequenceSampleSource;
import com.adobe.premiereclip.mediaengine.playercomponent.VideoPlayerRenderer;
import com.adobe.premiereclip.mediaengine.renderers.SequenceRenderer;
import com.adobe.premiereclip.metrics.Metrics;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.Playable;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.google.android.exoplayer.ExoPlayer;
import com.google.android.exoplayer.MediaCodecAudioTrackRenderer;
import com.google.android.exoplayer.TrackRenderer;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class SequencePlayer implements VideoPlayerRenderer.Listener {
    private boolean _trackPlayMetricsOnStop;
    private boolean _trackSequencePlayFull;
    private AudioSequenceSampleSource audioSequenceSampleSource;
    private boolean clipPlayback;
    private CurrentClip currentClip;
    private ExoPlayer exoPlayer;
    private boolean initialized;
    private ListenerWrapper listenerWrapper;
    private PLAYER_STATE playerState;
    private Sequence sequence;
    private VideoPlayerRenderer videoPlayerRenderer;

    public interface Listener {
        void foundUnavailableClip(int i);

        void onLoadingCompleted();

        void onLoadingStarted();

        void onPaused();

        void onReleased();

        void setClipTime(float f2, boolean z);

        void setCurrentClip(int i);

        void setSequenceTime(long j);

        void setTrimBar(float f2, float f3);
    }

    public enum PLAYER_STATE {
        LOADING,
        PAUSED,
        PLAYING_CLIP,
        PLAYING_SEQUENCE
    }

    class CurrentClip {
        private int clipIndex;
        private boolean isEnded;

        public CurrentClip(int i, boolean z) {
            this.clipIndex = i;
            this.isEnded = z;
        }
    }

    public class ClipSaveState {
        public int clipIndex;
        public long clipOffset;
        public boolean isEnded;

        public ClipSaveState(int i, long j, boolean z) {
            this.clipIndex = i;
            this.clipOffset = j;
            this.isEnded = z;
        }
    }

    class ListenerWrapper {
        private Handler handler;
        private Listener listener;

        private ListenerWrapper() {
        }

        public void setSequenceTime(final long j) {
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.setSequenceTime(j);
                }
            });
        }

        public void setClipTime(final float f2, final boolean z) {
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.setClipTime(f2, z);
                }
            });
        }

        public void updateTrimBars(final float f2, final float f3) {
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.3
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.setTrimBar(f2, f3);
                }
            });
        }

        public void setCurrentClip(final int i) {
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.4
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.setCurrentClip(i);
                }
            });
        }

        public void onPaused() {
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.5
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.onPaused();
                }
            });
        }

        public void foundUnavailableClip(final int i) {
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.6
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.foundUnavailableClip(i);
                }
            });
        }

        public void onLoadingStarted() {
            SequencePlayer.this.playerState = PLAYER_STATE.LOADING;
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.7
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.onLoadingStarted();
                }
            });
        }

        public void onLoadingCompleted() {
            PLAYER_STATE player_state;
            SequencePlayer sequencePlayer = SequencePlayer.this;
            if (SequencePlayer.this.isPaused()) {
                player_state = PLAYER_STATE.PAUSED;
            } else {
                player_state = SequencePlayer.this.clipPlayback ? PLAYER_STATE.PLAYING_CLIP : PLAYER_STATE.PLAYING_SEQUENCE;
            }
            sequencePlayer.playerState = player_state;
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.8
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.onLoadingCompleted();
                }
            });
        }

        public void onReleased() {
            this.handler.post(new Runnable() { // from class: com.adobe.premiereclip.mediaengine.SequencePlayer.ListenerWrapper.9
                @Override // java.lang.Runnable
                public void run() {
                    ListenerWrapper.this.listener.onReleased();
                }
            });
        }
    }

    public void init(Context context, SequenceRenderer sequenceRenderer, ClipSaveState clipSaveState) {
        this.clipPlayback = false;
        this._trackPlayMetricsOnStop = false;
        this._trackSequencePlayFull = false;
        this.playerState = PLAYER_STATE.LOADING;
        this.sequence = sequenceRenderer.getSequence();
        this.videoPlayerRenderer = new VideoPlayerRenderer(sequenceRenderer, this);
        this.audioSequenceSampleSource = new AudioSequenceSampleSource(context, this.sequence);
        TrackRenderer[] trackRendererArr = {this.videoPlayerRenderer, new MediaCodecAudioTrackRenderer(this.audioSequenceSampleSource)};
        this.exoPlayer = ExoPlayer.Factory.newInstance(2, 1000, ExoPlayer.Factory.DEFAULT_MIN_REBUFFER_MS);
        this.exoPlayer.prepare(trackRendererArr);
        this.initialized = true;
        long jSequenceTimeFromClipTime = 0;
        this.currentClip = new CurrentClip(-1, false);
        if (clipSaveState.clipIndex != -1 && clipSaveState.clipIndex < this.sequence.getClips().size()) {
            jSequenceTimeFromClipTime = this.sequence.sequenceTimeFromClipTime(clipSaveState.clipIndex, clipSaveState.clipOffset);
            setActiveClip(clipSaveState.clipIndex);
            setClipTimeNormalized(clipSaveState.clipIndex, clipSaveState.clipOffset, true);
            this.currentClip.isEnded = clipSaveState.isEnded;
        } else {
            setActiveClip(0);
        }
        setClipPlayback(true);
        seekToSequenceTime(jSequenceTimeFromClipTime);
    }

    private boolean isClipEndedLessPrecision(int i, long j) {
        return Math.abs(j - this.sequence.getClips().get(i).getEndTimeUsWithSpeed()) < 100000;
    }

    private void setClipTimeNormalized(int i, long j, boolean z) {
        if (this.listenerWrapper != null) {
            this.listenerWrapper.setClipTime((j * this.sequence.getClips().get(i).getSpeed()) / r0.getAssetReference().getDurationUs(), z || this.playerState != PLAYER_STATE.PAUSED);
        }
    }

    public PLAYER_STATE getPlayerState() {
        return this.playerState;
    }

    public void setClipPlayback(boolean z) {
        int i;
        if (this.exoPlayer != null && this.initialized) {
            ExoPlayer exoPlayer = this.exoPlayer;
            VideoPlayerRenderer videoPlayerRenderer = this.videoPlayerRenderer;
            if (z) {
                i = this.currentClip.clipIndex;
            } else {
                i = -1;
            }
            exoPlayer.sendMessage(videoPlayerRenderer, 1, Integer.valueOf(i));
            if (this.clipPlayback != z) {
                this.clipPlayback = z;
                reinitAudio(z);
            }
        }
    }

    public void setScrubbing(boolean z) {
        if (this.videoPlayerRenderer != null) {
            this.videoPlayerRenderer.setScrubbing(z);
        }
    }

    public void playClip() {
        if (this.exoPlayer != null && this.initialized) {
            this.playerState = PLAYER_STATE.PLAYING_CLIP;
            setClipPlayback(true);
            if (this.currentClip.isEnded) {
                seekToClipTime(this.currentClip.clipIndex, this.sequence.getClips().get(this.currentClip.clipIndex).getStartTimeUsWithSpeed());
            }
            this._trackPlayMetricsOnStop = true;
            setPlaybackState(true);
        }
    }

    private void setPlaybackState(boolean z) {
        this.exoPlayer.sendMessage(this.videoPlayerRenderer, 2, Boolean.valueOf(z));
        this.exoPlayer.setPlayWhenReady(z);
    }

    public void playSequence() {
        if (this.exoPlayer != null && this.initialized) {
            this.playerState = PLAYER_STATE.PLAYING_SEQUENCE;
            this._trackSequencePlayFull = getCurrentPlayTimeUs() == 0;
            if (this.currentClip.clipIndex >= this.sequence.getLastAvailClipIndex() && this.currentClip.isEnded) {
                this.currentClip.isEnded = false;
                seekToSequenceTime(0L);
                this._trackSequencePlayFull = true;
            }
            setClipPlayback(false);
            this._trackPlayMetricsOnStop = true;
            setPlaybackState(true);
        }
    }

    public void resetClips() {
        if (this.exoPlayer != null && this.initialized) {
            if (this.listenerWrapper != null) {
                this.listenerWrapper.onLoadingStarted();
            }
            this.exoPlayer.sendMessage(this.videoPlayerRenderer, 0, null);
        }
    }

    public long getCurrentPlayTimeUs() {
        if (this.exoPlayer == null || !this.initialized) {
            return -1L;
        }
        return this.exoPlayer.getCurrentPosition() * 1000;
    }

    public void seekCurrentClipToOffset(float f2) {
        long endTimeUsWithSpeed;
        if (this.exoPlayer != null && this.initialized && this.currentClip.clipIndex != -1) {
            this.videoPlayerRenderer.setPendingSeek();
            if (this.listenerWrapper != null) {
                this.listenerWrapper.onLoadingStarted();
            }
            Clip clip = this.sequence.getClips().get(this.currentClip.clipIndex);
            long speed = (long) ((f2 / clip.getSpeed()) * clip.getAssetReference().getDurationUs());
            this.currentClip.isEnded = isClipEndedLessPrecision(this.currentClip.clipIndex, speed);
            Log.i("endedissue", "Current clip: " + this.currentClip.clipIndex + " offset: " + speed + " orioffset: " + f2 + " ended: " + this.currentClip.isEnded + "ended time: " + clip.getEndTimeUsWithSpeed());
            if (speed < clip.getStartTimeUsWithSpeed()) {
                endTimeUsWithSpeed = clip.getStartTimeUsWithSpeed();
            } else {
                endTimeUsWithSpeed = speed >= clip.getEndTimeUsWithSpeed() ? clip.getEndTimeUsWithSpeed() - 1000 : speed;
            }
            seekToSequenceTime(this.sequence.sequenceTimeFromClipTime(this.currentClip.clipIndex, endTimeUsWithSpeed));
        }
    }

    public void selectClip(int i, boolean z) {
        if (this.exoPlayer != null && this.initialized) {
            if (this.currentClip.clipIndex != i) {
                this.videoPlayerRenderer.setPendingSeek();
                if (this.listenerWrapper != null) {
                    this.listenerWrapper.onLoadingStarted();
                }
                long jSequenceStartTimeOfClip = this.sequence.sequenceStartTimeOfClip(i);
                setActiveClip(i, z);
                setClipPlayback(true);
                seekToSequenceTime(jSequenceStartTimeOfClip);
                return;
            }
            this.exoPlayer.sendMessage(this.videoPlayerRenderer, 3, null);
            setActiveClip(i, z);
        }
    }

    public void reinitAudio(boolean z) {
        int i;
        if (this.exoPlayer != null && this.initialized && this.audioSequenceSampleSource != null) {
            AudioSequenceSampleSource audioSequenceSampleSource = this.audioSequenceSampleSource;
            Sequence sequence = this.sequence;
            if (z && this.currentClip != null) {
                i = this.currentClip.clipIndex;
            } else {
                i = -1;
            }
            audioSequenceSampleSource.resetSequence(sequence, i);
            try {
                this.audioSequenceSampleSource.prepare();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.exoPlayer.setRendererEnabled(1, false);
            this.exoPlayer.setRendererEnabled(1, true);
        }
    }

    public void pause() {
        if (this.exoPlayer != null && this.initialized && this.exoPlayer.getPlayWhenReady()) {
            setPlaybackState(false);
        }
        if (this._trackPlayMetricsOnStop) {
            Metrics.sharedInstance().didPlaySequenceWithDuration(this.sequence.getSequenceDurationInSeconds(), this.sequence.numAudioClips(), this.sequence.numVideoClips(), Boolean.valueOf(this._trackSequencePlayFull));
        }
        this._trackPlayMetricsOnStop = false;
        this._trackSequencePlayFull = false;
        this.playerState = PLAYER_STATE.PAUSED;
    }

    private void pauseInternal() {
        pause();
        if (this.listenerWrapper != null) {
            this.listenerWrapper.onPaused();
        }
    }

    public void seekToClipTime(int i, long j) {
        if (this.exoPlayer != null && this.initialized) {
            this.videoPlayerRenderer.setPendingSeek();
            if (this.listenerWrapper != null) {
                this.listenerWrapper.onLoadingStarted();
            }
            long jSequenceTimeFromClipTime = this.sequence.sequenceTimeFromClipTime(i, j);
            setActiveClip(i);
            setClipPlayback(true);
            seekToSequenceTime(jSequenceTimeFromClipTime);
        }
    }

    public long getCurrentClipOffset() {
        long currentPlayTimeUs = getCurrentPlayTimeUs();
        ArrayList<Playable> clipsAtSequenceTimeUs = this.sequence.getClipsAtSequenceTimeUs(currentPlayTimeUs);
        if (clipsAtSequenceTimeUs.size() <= 0 || this.currentClip.clipIndex != clipsAtSequenceTimeUs.get(clipsAtSequenceTimeUs.size() - 1).clipIndex) {
            if (this.currentClip.clipIndex != -1 && this.currentClip.clipIndex < this.sequence.getClips().size()) {
                Clip clip = this.sequence.getClips().get(this.currentClip.clipIndex);
                if (currentPlayTimeUs < this.sequence.sequenceStartTimeOfClip(this.currentClip.clipIndex)) {
                    return clip.getStartTimeUsWithSpeed();
                }
                return clip.getEndTimeUsWithSpeed();
            }
            return 0L;
        }
        return clipsAtSequenceTimeUs.get(clipsAtSequenceTimeUs.size() - 1).clipOffsetUs;
    }

    public void seekToSequenceTime(long j) {
        if (this.exoPlayer == null || !this.initialized) {
            Log.i("VideoRend", "exoplayer null");
            return;
        }
        this.videoPlayerRenderer.setPendingSeek();
        if (this.listenerWrapper != null) {
            this.listenerWrapper.onLoadingStarted();
        }
        long j2 = j / 1000;
        if (j % 1000 != 0) {
            j2++;
        }
        this.exoPlayer.seekTo(j2);
    }

    public ClipSaveState release() {
        if (this.exoPlayer == null || !this.initialized) {
            this.listenerWrapper.onReleased();
            return new ClipSaveState(-1, 0L, false);
        }
        ClipSaveState clipSaveState = getClipSaveState();
        this.exoPlayer.release();
        this.initialized = false;
        return clipSaveState;
    }

    public ClipSaveState getClipSaveState() {
        ClipSaveState clipSaveState = new ClipSaveState(this.currentClip.clipIndex, 0L, this.currentClip.isEnded);
        if (this.currentClip.isEnded && this.currentClip.clipIndex < this.sequence.getClips().size()) {
            clipSaveState.clipOffset = this.sequence.getClips().get(this.currentClip.clipIndex).getEndTimeUsWithSpeed();
        } else {
            clipSaveState.clipOffset = getCurrentClipOffset();
        }
        return clipSaveState;
    }

    public boolean isPaused() {
        return (this.exoPlayer != null && this.initialized && this.exoPlayer.getPlayWhenReady()) ? false : true;
    }

    public void setListener(Listener listener) {
        if (listener != null) {
            this.listenerWrapper = new ListenerWrapper();
            this.listenerWrapper.listener = listener;
            this.listenerWrapper.handler = new Handler();
        }
    }

    private void setActiveClip(int i) {
        setActiveClip(i, false);
    }

    private void setActiveClip(int i, boolean z) {
        if (this.currentClip.clipIndex != i || z) {
            if (this.listenerWrapper != null) {
                this.listenerWrapper.setCurrentClip(i);
            }
            this.currentClip.clipIndex = i;
            this.currentClip.isEnded = !this.sequence.getClips().get(i).isAvailable();
            setTrimBarsForClip(i);
        }
    }

    private void setTrimBarsForClip(int i) {
        Clip clip = this.sequence.getClips().get(i);
        float startTimeUs = clip.getStartTimeUs() / clip.getAssetReference().getDurationUs();
        float endTimeUs = clip.getEndTimeUs() / clip.getAssetReference().getDurationUs();
        if (this.listenerWrapper != null) {
            this.listenerWrapper.updateTrimBars(startTimeUs, endTimeUs);
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.playercomponent.VideoPlayerRenderer.Listener
    public void onTimeUpdate(long j) {
        if (this.listenerWrapper != null) {
            this.listenerWrapper.setSequenceTime(j);
            ArrayList<Playable> clipsAtSequenceTimeUs = this.sequence.getClipsAtSequenceTimeUs(j);
            if (clipsAtSequenceTimeUs.size() > 0) {
                this.currentClip.isEnded = false;
                if (!this.clipPlayback) {
                    Playable playable = clipsAtSequenceTimeUs.get(clipsAtSequenceTimeUs.size() - 1);
                    setActiveClip(playable.clipIndex);
                    if (!this.sequence.getClips().get(this.currentClip.clipIndex).isAvailable()) {
                        this.listenerWrapper.foundUnavailableClip(this.currentClip.clipIndex);
                    }
                    if (this.currentClip.clipIndex > 0 && !this.sequence.getClips().get(this.currentClip.clipIndex - 1).isAvailable()) {
                        this.listenerWrapper.foundUnavailableClip(this.currentClip.clipIndex - 1);
                    }
                    setClipTimeNormalized(playable.clipIndex, playable.clipOffsetUs, false);
                } else {
                    for (Playable playable2 : clipsAtSequenceTimeUs) {
                        if (playable2.clipIndex == this.currentClip.clipIndex) {
                            setClipTimeNormalized(playable2.clipIndex, playable2.clipOffsetUs, false);
                            this.currentClip.isEnded = isClipEndedLessPrecision(playable2.clipIndex, playable2.clipOffsetUs);
                            this.listenerWrapper.onLoadingCompleted();
                            return;
                        }
                    }
                    pauseInternal();
                    Log.i("VideoDecoder", "current clip: isended");
                    this.currentClip.isEnded = true;
                }
            } else if (this.currentClip.clipIndex != -1 && this.currentClip.clipIndex < this.sequence.getClips().size()) {
                setClipTimeNormalized(this.currentClip.clipIndex, this.sequence.getClips().get(this.currentClip.clipIndex).getEndTimeUsWithSpeed(), false);
            } else {
                this.listenerWrapper.setClipTime(1.0f, true);
            }
            this.listenerWrapper.onLoadingCompleted();
        }
    }

    @Override // com.adobe.premiereclip.mediaengine.playercomponent.VideoPlayerRenderer.Listener
    public void onEnded() {
        if (this._trackPlayMetricsOnStop) {
            Metrics.sharedInstance().didPlaySequenceWithDuration(this.sequence.getSequenceDurationInSeconds(), this.sequence.numAudioClips(), this.sequence.numVideoClips(), Boolean.valueOf(this._trackSequencePlayFull));
        }
        this._trackPlayMetricsOnStop = false;
        this._trackSequencePlayFull = false;
        pauseInternal();
        this.currentClip.isEnded = true;
    }

    @Override // com.adobe.premiereclip.mediaengine.playercomponent.VideoPlayerRenderer.Listener
    public void onReleased() {
        if (this._trackPlayMetricsOnStop) {
            Metrics.sharedInstance().didPlaySequenceWithDuration(this.sequence.getSequenceDurationInSeconds(), this.sequence.numAudioClips(), this.sequence.numVideoClips(), Boolean.valueOf(this._trackSequencePlayFull));
        }
        this._trackPlayMetricsOnStop = false;
        this._trackSequencePlayFull = false;
        this.listenerWrapper.onReleased();
    }
}
