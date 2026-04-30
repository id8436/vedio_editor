package com.google.gdata.data.photos;

import com.google.gdata.data.Category;

/* JADX INFO: loaded from: classes3.dex */
public interface CommentData extends GphotoData {
    public static final Category COMMENT_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#comment");
    public static final String COMMENT_KIND = "http://schemas.google.com/photos/2007#comment";
    public static final String KIND = "comment";

    String getAlbumId();

    String getPhotoId();

    void setAlbumId(Long l);

    void setAlbumId(String str);

    void setPhotoId(Long l);

    void setPhotoId(String str);
}
