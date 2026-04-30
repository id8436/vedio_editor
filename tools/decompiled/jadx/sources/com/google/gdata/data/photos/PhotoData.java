package com.google.gdata.data.photos;

import com.google.gdata.data.Category;
import com.google.gdata.data.geo.BoxData;
import com.google.gdata.data.geo.PointData;
import com.google.gdata.util.ServiceException;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface PhotoData extends BoxData, PointData, GphotoData, MediaData {
    public static final String KIND = "photo";
    public static final Category PHOTO_CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#photo");
    public static final String PHOTO_KIND = "http://schemas.google.com/photos/2007#photo";

    void addStreamId(String str);

    String getAlbumAccess();

    String getAlbumId();

    String getChecksum();

    String getClient();

    Integer getCommentCount() throws ServiceException;

    Boolean getCommentsEnabled() throws ServiceException;

    ExifTags getExifTags();

    Date getFeaturedDate();

    Long getHeight() throws ServiceException;

    Float getPosition() throws ServiceException;

    Integer getRotation() throws ServiceException;

    Long getSize() throws ServiceException;

    List<String> getStreamIds();

    Date getTimestamp() throws ServiceException;

    Integer getTotalStars();

    Long getVersion() throws ServiceException;

    String getVideoStatus();

    Long getViewCount();

    Long getWidth() throws ServiceException;

    Boolean isStarred();

    void setAlbumAccess(String str);

    void setAlbumId(Long l);

    void setAlbumId(String str);

    void setChecksum(String str);

    void setClient(String str);

    void setCommentCount(Integer num);

    void setCommentsEnabled(Boolean bool);

    void setExifTags(ExifTags exifTags);

    void setFeaturedDate(Date date);

    void setHeight(Long l);

    void setPosition(Float f2);

    void setRotation(Integer num);

    void setSize(Long l);

    void setStarred(Boolean bool);

    void setTimestamp(Date date);

    void setTotalStars(Integer num);

    void setVersion(Long l);

    void setVideoStatus(String str);

    void setViewCount(Long l);

    void setWidth(Long l);
}
