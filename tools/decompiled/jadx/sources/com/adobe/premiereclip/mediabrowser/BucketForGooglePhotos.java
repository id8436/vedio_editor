package com.adobe.premiereclip.mediabrowser;

import com.google.gdata.data.photos.AlbumEntry;

/* JADX INFO: loaded from: classes2.dex */
public class BucketForGooglePhotos extends Bucket {
    AlbumEntry mAlbumEntry;

    public BucketForGooglePhotos(String str, String str2, AlbumEntry albumEntry) {
        super(str, str2);
        this.mAlbumEntry = albumEntry;
    }

    public AlbumEntry getAlbumEntry() {
        return this.mAlbumEntry;
    }

    public void deleteAllItems() {
        getThumbnailItems().clear();
        getItems().clear();
    }
}
