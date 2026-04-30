package com.google.gdata.data.photos;

import com.google.gdata.data.Category;
import com.google.gdata.data.geo.BoxData;
import com.google.gdata.data.geo.PointData;
import com.google.gdata.util.ServiceException;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public interface AlbumData extends BoxData, PointData, GphotoData, MediaData {
    public static final Category ALBUM_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#album");
    public static final String ALBUM_KIND = "http://schemas.google.com/photos/2007#album";
    public static final String KIND = "album";

    String getAccess();

    Long getBytesUsed() throws ServiceException;

    Integer getCommentCount() throws ServiceException;

    Boolean getCommentsEnabled() throws ServiceException;

    Date getDate() throws ServiceException;

    String getLocation();

    String getName();

    String getNickname();

    Integer getPhotosLeft() throws ServiceException;

    Integer getPhotosUsed() throws ServiceException;

    String getUsername();

    void setAccess(String str);

    void setBytesUsed(Long l);

    void setCommentCount(Integer num);

    void setCommentsEnabled(Boolean bool);

    void setDate(Date date);

    void setLocation(String str);

    void setName(String str);

    void setNickname(String str);

    void setPhotosLeft(Integer num);

    void setPhotosUsed(Integer num);

    void setUsername(String str);
}
