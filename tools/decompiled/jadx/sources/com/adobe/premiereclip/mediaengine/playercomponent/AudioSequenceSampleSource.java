package com.adobe.premiereclip.mediaengine.playercomponent;

import android.content.Context;
import android.util.Log;
import com.adobe.audiomixer.IAudioSequence;
import com.adobe.audiomixer.VideoTime;
import com.adobe.customextractor.Util.Media.MimeTypes;
import com.adobe.premiereclip.mediaengine.playercomponent.AudioSourcePrefetcher;
import com.adobe.premiereclip.project.sequence.Clip;
import com.adobe.premiereclip.project.sequence.Sequence;
import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.TrackInfo;
import com.google.android.exoplayer.util.Assertions;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AudioSequenceSampleSource implements SampleSource {
    private static final int TRACK_STATE_DISABLED = 0;
    private static final int TRACK_STATE_ENABLED = 1;
    private static final int TRACK_STATE_FORMAT_SENT = 2;
    private AudioSourcePrefetcher audioPrefetcher;
    private IAudioSequence audioSequence;
    private int clipPlaybackIndex = -1;
    private Context context;
    private long currentSampleTime;
    private boolean enableBackgroundMusic;
    private boolean pendingDiscontinuities;
    private boolean prepared;
    private Sequence sequence;
    private TrackInfo trackInfo;
    private int trackState;

    public AudioSequenceSampleSource(Context context, Sequence sequence) {
        this.context = context;
        resetSequence(sequence, -1);
        this.enableBackgroundMusic = true;
        this.prepared = false;
    }

    public synchronized void resetSequence(Sequence sequence, int i) {
        this.sequence = sequence;
        this.clipPlaybackIndex = i;
        if (this.clipPlaybackIndex != -1) {
            sequence = new Sequence();
            sequence.setLook(this.sequence.getLook());
            sequence.setPhotoMotion(this.sequence.photoMotionApplied());
            sequence.addClip(this.sequence.getClips().get(i));
            ArrayList<Clip> clips = this.sequence.getAudioTrackGroup().getAudioTrack().getClips();
            if (clips != null && clips.size() > 0) {
                sequence.getAudioTrackGroup().addClipToAudioTrack(this.sequence.getAudioTrackGroup().getAudioTrack().getClips().get(0));
            }
            sequence.setSampleRate(this.sequence.getSampleRate());
            sequence.setChannel(this.sequence.getChannel());
            sequence.setAudioDuckApplied(this.sequence.getAudioDuckApplied());
        }
        if (this.audioPrefetcher != null) {
            this.audioPrefetcher.stop();
            this.audioPrefetcher = null;
        }
        this.audioSequence = Sequence.convertSequenceToAudioSequence(this.context, sequence, sequence.getSampleRate(), sequence.getChannel());
        enableBackgroundMusic(this.clipPlaybackIndex == -1);
        this.audioPrefetcher = new AudioSourcePrefetcher(this.audioSequence);
        this.prepared = false;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public synchronized boolean prepare() throws IOException {
        boolean z;
        if (this.prepared) {
            z = true;
        } else if (this.audioSequence == null) {
            z = false;
        } else {
            this.prepared = this.audioSequence.prepare();
            this.audioPrefetcher.start();
            this.trackInfo = new TrackInfo(MimeTypes.AUDIO_RAW, this.audioSequence.getDuration().getTimeInMS());
            this.currentSampleTime = 0L;
            z = this.prepared;
        }
        return z;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public int getTrackCount() {
        return this.trackInfo != null ? 1 : 0;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public TrackInfo getTrackInfo(int i) {
        try {
            prepare();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        Assertions.checkState(this.prepared);
        Assertions.checkArgument(i == 0);
        Assertions.checkState(this.trackInfo != null);
        return this.trackInfo;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void enable(int i, long j) {
        Assertions.checkArgument(i == 0);
        this.trackState = 1;
        long jMayBeConvertToClipTime = mayBeConvertToClipTime(j);
        seekToUsInternal(jMayBeConvertToClipTime, jMayBeConvertToClipTime != 0);
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void disable(int i) {
        Assertions.checkArgument(i == 0);
        Log.i("clip", "Track state: " + Integer.toString(this.trackState));
        this.trackState = 0;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public boolean continueBuffering(long j) throws IOException {
        if (this.audioPrefetcher != null) {
            return this.audioPrefetcher.hasData();
        }
        return false;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public synchronized int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder, boolean z) throws IOException {
        int i2;
        prepare();
        Assertions.checkArgument(i == 0);
        Assertions.checkState(this.prepared);
        Assertions.checkState(this.trackState != 0);
        if (this.pendingDiscontinuities) {
            this.pendingDiscontinuities = false;
            i2 = -5;
        } else if (z) {
            i2 = -2;
        } else if (this.trackState != 2) {
            mediaFormatHolder.format = MediaFormat.createAudioFormat(MimeTypes.AUDIO_RAW, this.audioSequence.getBufferSize(), this.audioSequence.getChannels(), this.audioSequence.getSampleRate(), null);
            this.trackState = 2;
            i2 = -4;
        } else {
            if (sampleHolder.data.position() != 0) {
                Log.i("audiomixer", "Initial position: " + Integer.toString(sampleHolder.data.position()));
            }
            this.audioSequence.getChannels();
            int sampleRate = this.audioSequence.getSampleRate();
            AudioSourcePrefetcher.AudioData nextAudioData = this.audioPrefetcher.getNextAudioData();
            if (nextAudioData == null) {
                i2 = -2;
            } else if (nextAudioData.getNumberOfSamples() == 0) {
                i2 = -1;
            } else {
                sampleHolder.size = sampleHolder.data.position() + (((int) nextAudioData.getNumberOfSamples()) * 2 * this.audioSequence.getChannels());
                sampleHolder.data.put(nextAudioData.getAudioBuffer());
                sampleHolder.flags = 1;
                this.currentSampleTime = nextAudioData.getStartSampleNumber() + nextAudioData.getNumberOfSamples();
                if (nextAudioData.getNumberOfSamples() > 0) {
                    this.currentSampleTime = nextAudioData.getStartSampleNumber();
                }
                sampleHolder.timeUs = (long) (((this.currentSampleTime * 1000000.0d) / ((double) sampleRate)) + 0.5d);
                i2 = -3;
            }
        }
        return i2;
    }

    private long mayBeConvertToClipTime(long j) {
        if (this.clipPlaybackIndex != -1) {
            long jClipTimeFromSequenceTime = this.sequence.clipTimeFromSequenceTime(this.clipPlaybackIndex, j);
            if (jClipTimeFromSequenceTime < 0) {
                return 0L;
            }
            return jClipTimeFromSequenceTime;
        }
        return j;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public void seekToUs(long j) {
        Assertions.checkState(this.prepared);
        seekToUsInternal(mayBeConvertToClipTime(j), false);
    }

    @Override // com.google.android.exoplayer.SampleSource
    public long getBufferedPositionUs() {
        Assertions.checkState(this.prepared);
        return new VideoTime(this.currentSampleTime, (long) this.audioSequence.getSampleRate()).getTimeInMS() >= this.audioSequence.getDuration().getTimeInMS() ? -3L : -1L;
    }

    @Override // com.google.android.exoplayer.SampleSource
    public synchronized void release() {
        if (this.audioPrefetcher != null) {
            this.audioPrefetcher.stop();
            this.audioPrefetcher = null;
        }
        if (this.audioSequence != null) {
            this.audioSequence.release();
            this.audioSequence = null;
        }
    }

    public void enableBackgroundMusic(boolean z) {
        this.enableBackgroundMusic = z;
        if (this.audioSequence != null) {
            this.audioSequence.setBackgroundMusicMute(!z);
        }
    }

    private synchronized void seekToUsInternal(long j, boolean z) {
        int sampleRate = this.audioSequence.getSampleRate();
        long j2 = (long) ((((double) (this.currentSampleTime / sampleRate)) * 1000000.0d) + 0.5d);
        if (z || j2 != j) {
            this.currentSampleTime = (long) ((((double) sampleRate) * (j / 1000000.0d)) + 0.5d);
            this.audioPrefetcher.seek(this.currentSampleTime);
            if (this.trackState != 0) {
                this.pendingDiscontinuities = true;
            }
        }
    }
}
