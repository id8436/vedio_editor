package com.adobe.premiereclip.project.sequence;

import com.adobe.premiereclip.project.sequence.Clip;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class AudioTrackGroup {
    private ArrayList<AudioTrack> audioTracks = new ArrayList<>(1);

    public AudioTrackGroup() {
        this.audioTracks.add(new AudioTrack());
    }

    public AudioTrack getAudioTrack() {
        return this.audioTracks.get(0);
    }

    public void addClipToAudioTrack(Clip clip) {
        if (clip.getClipType() == Clip.CLIP_TYPE.AUDIO) {
            this.audioTracks.get(0).addClip(clip);
        }
    }
}
