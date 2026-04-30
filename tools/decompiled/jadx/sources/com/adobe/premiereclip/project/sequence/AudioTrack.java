package com.adobe.premiereclip.project.sequence;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AudioTrack extends Track {
    private static final float DEFAULT_SYNC_PACE = 0.4f;
    private boolean audioDuckApplied;
    private float audioSyncPace = DEFAULT_SYNC_PACE;
    private boolean snapToBeatApplied;

    public void replaceAudioClip(AudioClip audioClip) {
        removeAllClips();
        addClip(audioClip);
    }

    public boolean isSnapToBeatApplied() {
        return this.snapToBeatApplied;
    }

    public void setSnapToBeatApplied(boolean z) {
        this.snapToBeatApplied = z;
    }

    public boolean isAudioDuckApplied() {
        return this.audioDuckApplied;
    }

    public void setAudioDuckApplied(boolean z) {
        this.audioDuckApplied = z;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public long getTrackDurationUS() {
        return 0L;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public ArrayList<Playable> getClipsAtTrackTimeUs(long j) {
        return null;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public long trackStartTimeOfClip(int i) {
        return 0L;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public long trackTimeFromClipTime(int i, long j) {
        return 0L;
    }

    @Override // com.adobe.premiereclip.project.sequence.Track
    public long clipTimeFromTrackTime(int i, long j) {
        return 0L;
    }

    public float getAudioSyncPace() {
        return this.audioSyncPace;
    }

    public void setAudioSyncPace(float f2) {
        this.audioSyncPace = f2;
    }
}
