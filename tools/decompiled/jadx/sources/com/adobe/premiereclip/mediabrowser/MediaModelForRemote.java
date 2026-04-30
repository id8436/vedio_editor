package com.adobe.premiereclip.mediabrowser;

/* JADX INFO: loaded from: classes2.dex */
public class MediaModelForRemote extends MediaModel {
    private String mThumbnailUrl;
    private String mTitle;
    private String mUrl;

    public MediaModelForRemote(String str, String str2, int i, long j, long j2, Bucket bucket, double d2, double d3, long j3, String str3, String str4) {
        super(str, str2, i, j, j2, bucket, d2, d3, j3);
        this.mTitle = str3;
        this.mUrl = str4;
        this.mThumbnailUrl = null;
    }

    public MediaModelForRemote(String str, String str2, int i, long j, long j2, Bucket bucket, double d2, double d3, long j3, String str3, String str4, String str5) {
        super(str, str2, i, j, j2, bucket, d2, d3, j3);
        this.mTitle = str3;
        this.mUrl = str4;
        this.mThumbnailUrl = str5;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public String getThumbnailUrl() {
        return this.mThumbnailUrl;
    }

    public String getTitle() {
        return this.mTitle;
    }
}
