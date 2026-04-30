package com.adobe.creativesdk.foundation.internal.comments.models;

/* JADX INFO: loaded from: classes.dex */
public class AdobeAssetCommentData {
    private String avatarURL;
    private String commentURL;
    private String content;
    private String resourceURL;
    private long timeStamp;
    private String userName;

    public AdobeAssetCommentData(String str, String str2, long j, String str3, String str4, String str5) {
        this.userName = str;
        this.content = str2;
        this.avatarURL = str3;
        this.commentURL = str4;
        this.resourceURL = str5;
        this.timeStamp = j;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getComment() {
        return this.content;
    }

    public String getAvatarURL() {
        return this.avatarURL;
    }

    public String getCommentURL() {
        return this.commentURL;
    }

    public String getResourceURL() {
        return this.resourceURL;
    }

    public long getTimeStamp() {
        return this.timeStamp;
    }
}
