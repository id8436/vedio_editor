package com.adobe.mobile;

import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaState {
    public boolean ad;
    public boolean clicked;
    public boolean complete;
    public boolean eventFirstTime;
    protected int eventType;
    public double length;
    public String mediaEvent;
    public int milestone;
    public String name;
    public double offset;
    public int offsetMilestone;
    public Date openTime;
    public double percent;
    public String playerName;
    public String segment;
    public double segmentLength;
    public int segmentNum;
    public double timePlayed;
    private double timePlayedSinceTrack;
    private long timestamp;

    protected MediaState(String str, double d2, String str2, long j) {
        this.openTime = new Date();
        this.complete = false;
        this.clicked = false;
        this.name = str;
        this.length = d2;
        this.playerName = str2;
        this.timestamp = StaticMethods.getTimeSince1970();
        this.segment = "";
        this.segmentNum = 0;
        this.segmentLength = 0.0d;
        this.openTime.setTime(j);
    }

    protected MediaState(MediaState mediaState) {
        this.openTime = new Date();
        this.complete = false;
        this.clicked = false;
        this.name = mediaState.name;
        this.length = mediaState.length;
        this.playerName = mediaState.playerName;
        this.mediaEvent = mediaState.mediaEvent;
        this.eventFirstTime = mediaState.eventFirstTime;
        this.openTime = mediaState.openTime;
        this.offset = mediaState.offset;
        this.percent = mediaState.percent;
        this.timePlayed = mediaState.timePlayed;
        this.milestone = mediaState.milestone;
        this.offsetMilestone = mediaState.offsetMilestone;
        this.segmentNum = mediaState.segmentNum;
        this.segment = mediaState.segment;
        this.segmentLength = mediaState.segmentLength;
        this.complete = mediaState.complete;
        this.eventType = mediaState.eventType;
        this.timestamp = mediaState.timestamp;
        this.timePlayedSinceTrack = mediaState.timePlayedSinceTrack;
        this.clicked = mediaState.clicked;
        this.ad = mediaState.ad;
    }

    protected int getEventType() {
        return this.eventType;
    }

    protected void setEventType(int i) {
        String str;
        this.eventType = i;
        switch (this.eventType) {
            case 1:
                str = "PLAY";
                break;
            case 2:
                str = "STOP";
                break;
            case 3:
                str = "MONITOR";
                break;
            case 4:
                str = "TRACK";
                break;
            case 5:
                str = "COMPLETE";
                break;
            case 6:
                str = "CLICK";
                break;
            default:
                str = "CLOSE";
                break;
        }
        this.mediaEvent = str;
    }

    protected void setOffset(double d2) {
        this.offset = d2;
        if (this.length > 0.0d) {
            if (d2 >= this.length) {
                d2 = this.length;
            }
            this.offset = d2;
        }
        if (this.offset < 0.0d) {
            this.offset = 0.0d;
        }
        generatePercent();
        checkComplete();
    }

    private void generatePercent() {
        if (this.length != -1.0d) {
            this.percent = (this.offset / this.length) * 100.0d;
            this.percent = this.percent < 100.0d ? this.percent : 100.0d;
        }
    }

    private void checkComplete() {
        if (this.length == -1.0d) {
            this.complete = false;
        } else if (this.percent >= 100.0d) {
            this.complete = true;
        }
    }

    protected double getTimestamp() {
        return this.timestamp;
    }

    protected double getTimePlayedSinceTrack() {
        return this.timePlayedSinceTrack;
    }

    protected void setTimePlayedSinceTrack(double d2) {
        this.timePlayedSinceTrack = d2;
    }

    protected double getTimePlayed() {
        return this.timePlayed;
    }

    protected void setTimePlayed(double d2) {
        this.timePlayed = d2;
    }
}
