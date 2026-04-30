package com.adobe.premiereclip.mediabrowser;

/* JADX INFO: loaded from: classes2.dex */
public class BucketForDropbox extends Bucket {
    private String mPath;

    public BucketForDropbox(String str, String str2, String str3) {
        super(str, str2);
        this.mPath = str3;
    }

    public String getPath() {
        return this.mPath;
    }
}
