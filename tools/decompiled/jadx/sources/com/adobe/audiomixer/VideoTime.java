package com.adobe.audiomixer;

/* JADX INFO: loaded from: classes.dex */
public class VideoTime {
    long denominator;
    long numerator;

    public VideoTime() {
        this.numerator = 0L;
        this.denominator = 0L;
        this.numerator = 0L;
        this.denominator = 1000000L;
    }

    public VideoTime(long j, long j2) {
        this.numerator = 0L;
        this.denominator = 0L;
        this.numerator = j;
        this.denominator = j2;
    }

    public long getNumerator() {
        return this.numerator;
    }

    public long getDenominator() {
        return this.denominator;
    }

    public long getTimeInMS() {
        return (long) (((this.numerator * 1000000.0d) / this.denominator) + 0.5d);
    }

    public VideoTime add(VideoTime videoTime) {
        if (videoTime.denominator != 0) {
            this.numerator += (videoTime.numerator * this.denominator) / videoTime.denominator;
        }
        return this;
    }

    public boolean equals(VideoTime videoTime) {
        if (videoTime.denominator == this.denominator && videoTime.numerator == this.numerator) {
            return true;
        }
        return videoTime.denominator != 0 && ((long) (((double) ((((float) videoTime.numerator) / ((float) videoTime.denominator)) * ((float) this.denominator))) + 0.5d)) == this.numerator;
    }

    public void set(VideoTime videoTime) {
        this.numerator = videoTime.numerator;
        this.denominator = videoTime.denominator;
    }

    public static VideoTime createFromMS(long j) {
        return new VideoTime(j, 1000L);
    }

    public long getSampleTime(int i) {
        if (i == this.denominator) {
            return this.numerator;
        }
        if (this.denominator == 0 || i == 0) {
            return 0L;
        }
        return (long) (((this.numerator * ((long) i)) / this.denominator) + 0.5d);
    }

    public static VideoTime add(VideoTime videoTime, VideoTime videoTime2) {
        long j = videoTime.denominator;
        long j2 = videoTime.numerator;
        if (videoTime2.denominator != 0) {
            j2 += (long) ((videoTime2.numerator * (videoTime.denominator / videoTime2.denominator)) + 0.5d);
        }
        return new VideoTime(j2, j);
    }

    public static VideoTime fromMicroSeconds(long j) {
        return new VideoTime(j, 1000000L);
    }
}
