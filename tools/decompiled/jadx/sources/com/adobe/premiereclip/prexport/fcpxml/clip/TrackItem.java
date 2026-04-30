package com.adobe.premiereclip.prexport.fcpxml.clip;

import com.adobe.premiereclip.prexport.fcpxml.Xmlable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class TrackItem extends Xmlable {
    protected long mDuration;
    protected long mTrackDuration;
    protected long mStart = 0;
    protected long mEnd = 0;
    protected int mTrackIndex = 0;
    protected int mClipIndex = 0;

    public TrackItem(long j, long j2) {
        this.mDuration = j;
        this.mTrackDuration = j2;
    }

    public long getStart() {
        return this.mStart;
    }

    public void setStart(long j) {
        this.mStart = j;
    }

    public void adjustStart(long j) {
        this.mStart += j;
    }

    public long getEnd() {
        return this.mEnd;
    }

    public void setEnd(long j) {
        this.mEnd = j;
    }

    public void adjustEnd(long j) {
        this.mEnd += j;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public void setDuration(long j) {
        this.mDuration = j;
    }

    public long getTrackDuration() {
        return this.mTrackDuration;
    }

    public void setTrackDuration(long j) {
        this.mTrackDuration = j;
    }

    public void adjustTrackDuration(long j) {
        this.mTrackDuration += j;
    }

    public int getTrackIndex() {
        return this.mTrackIndex;
    }

    public void setTrackIndex(int i) {
        this.mTrackIndex = i;
    }

    public int getClipIndex() {
        return this.mClipIndex;
    }

    public void setClipIndex(int i) {
        this.mClipIndex = i;
    }
}
