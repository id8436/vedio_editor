package com.adobe.premiereclip.mediabrowser;

/* JADX INFO: loaded from: classes2.dex */
public class ThumbnailData {
    private Bucket mBucket;
    private String mId;
    private MediaModel mModel;
    private int mViewType;

    private ThumbnailData(int i, Bucket bucket, MediaModel mediaModel) {
        this.mViewType = i;
        this.mBucket = bucket;
        this.mModel = mediaModel;
    }

    public ThumbnailData(Bucket bucket) {
        this(0, bucket, null);
    }

    public ThumbnailData(String str, int i) {
        this(i, null, null);
        this.mId = str + "no_media";
    }

    public ThumbnailData(MediaModel mediaModel) {
        this(1, null, mediaModel);
    }

    public String getId() {
        return this.mId;
    }

    public int getViewType() {
        return this.mViewType;
    }

    public MediaModel getMediaModel() {
        return this.mModel;
    }

    public Bucket getBucket() {
        return this.mBucket;
    }
}
