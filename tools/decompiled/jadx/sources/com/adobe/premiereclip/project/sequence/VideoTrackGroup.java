package com.adobe.premiereclip.project.sequence;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class VideoTrackGroup {
    private ArrayList<VideoTrack> videoTracks = new ArrayList<>(2);

    public VideoTrackGroup() {
        VideoTrack videoTrack = new VideoTrack();
        VideoTrack videoTrack2 = new VideoTrack();
        videoTrack2.setOverlay();
        this.videoTracks.add(videoTrack);
        this.videoTracks.add(videoTrack2);
    }

    public VideoTrack getVideoTrack(int i) {
        if (i < this.videoTracks.size()) {
            return this.videoTracks.get(i);
        }
        return null;
    }

    public int getWidth() {
        return getMainVideoTrack().getWidth();
    }

    public int getHeight() {
        return getMainVideoTrack().getHeight();
    }

    public void setSize(int i, int i2) {
        for (VideoTrack videoTrack : this.videoTracks) {
            videoTrack.setWidth(i);
            videoTrack.setHeight(i2);
        }
    }

    public void addClipToVideoTrack(Clip clip) {
        this.videoTracks.get(0).addClip(clip);
    }

    public void addClipToVideoTrackAtIndex(Clip clip, int i) {
        this.videoTracks.get(0).addClipAtIndex(clip, i);
    }

    public void addClipToOverlayTrack(Clip clip) {
        this.videoTracks.get(1).addClip(clip);
    }

    public VideoTrack getMainVideoTrack() {
        return this.videoTracks.get(0);
    }

    public VideoTrack getOverlayTrack() {
        return this.videoTracks.get(1);
    }

    public long getTrackGroupDurationUs() {
        long jMax = 0;
        Iterator<VideoTrack> it = this.videoTracks.iterator();
        while (true) {
            long j = jMax;
            if (it.hasNext()) {
                jMax = Math.max(j, it.next().getTrackDurationUS());
            } else {
                return j;
            }
        }
    }
}
