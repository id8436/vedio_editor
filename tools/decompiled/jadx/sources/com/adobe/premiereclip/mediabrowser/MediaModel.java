package com.adobe.premiereclip.mediabrowser;

/* JADX INFO: loaded from: classes2.dex */
public class MediaModel {
    public static final int MEDIA_TYPE_ALL = 0;
    public static final int MEDIA_TYPE_IMAGE = 1;
    public static final int MEDIA_TYPE_PNG = 2;
    public static final int MEDIA_TYPE_VIDEO = 3;
    private long mDate;
    private long mDuration;
    private String mId;
    private double mLatitude;
    private double mLongitude;
    private int mMediaType;
    private Bucket mParentBucket;
    private String mPath;
    private boolean mSelected = false;
    private long mSize;

    public MediaModel(String str, String str2, int i, long j, long j2, Bucket bucket, double d2, double d3, long j3) {
        this.mPath = null;
        this.mId = str;
        this.mPath = str2;
        this.mMediaType = i;
        this.mDuration = j;
        this.mSize = j2;
        this.mParentBucket = bucket;
        this.mLatitude = d2;
        this.mLongitude = d3;
        this.mDate = j3;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public boolean isMediaSelected() {
        return this.mSelected;
    }

    public void setMediaSelected(boolean z) {
        this.mSelected = z;
    }

    public int getMediaType() {
        return this.mMediaType;
    }

    public String getPath() {
        return this.mPath;
    }

    public void setPath(String str) {
        this.mPath = str;
    }

    public String getId() {
        return this.mId;
    }

    public long getSize() {
        return this.mSize;
    }

    public Bucket getParentBucket() {
        return this.mParentBucket;
    }

    public void setParentBucket(Bucket bucket) {
        this.mParentBucket = bucket;
    }

    public long getDate() {
        return this.mDate;
    }

    public double getLatitude() {
        return this.mLatitude;
    }

    public void setLatitude(double d2) {
        this.mLatitude = d2;
    }

    public double getLongitude() {
        return this.mLongitude;
    }

    public void setLongitude(double d2) {
        this.mLongitude = d2;
    }
}
