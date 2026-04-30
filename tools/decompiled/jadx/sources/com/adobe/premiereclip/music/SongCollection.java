package com.adobe.premiereclip.music;

/* JADX INFO: loaded from: classes2.dex */
public class SongCollection {
    private String collectionId;
    private String collectionName;
    private String songCount;

    public SongCollection(String str, String str2, String str3) {
        this.songCount = str3;
        this.collectionName = str2;
        this.collectionId = str;
    }

    public String getSongCount() {
        return this.songCount;
    }

    public void setSongCount(String str) {
        this.songCount = str;
    }

    public String getCollectionName() {
        return this.collectionName;
    }

    public void setCollectionName(String str) {
        this.collectionName = str;
    }

    public String getCollectionId() {
        return this.collectionId;
    }

    public void setCollectionId(String str) {
        this.collectionId = str;
    }
}
