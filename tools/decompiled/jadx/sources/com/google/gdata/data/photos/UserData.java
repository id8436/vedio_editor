package com.google.gdata.data.photos;

import com.google.gdata.data.Category;

/* JADX INFO: loaded from: classes3.dex */
public interface UserData extends GphotoData {
    public static final String KIND = "user";
    public static final Category USER_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#user");
    public static final String USER_KIND = "http://schemas.google.com/photos/2007#user";

    Integer getMaxPhotos();

    String getNickname();

    Long getQuotaLimit();

    Long getQuotaUsed();

    String getThumbnail();

    String getUsername();

    void setMaxPhotos(Integer num);

    void setNickname(String str);

    void setQuotaLimit(Long l);

    void setQuotaUsed(Long l);

    void setThumbnail(String str);

    void setUsername(String str);
}
