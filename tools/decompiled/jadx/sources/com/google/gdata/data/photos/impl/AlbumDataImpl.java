package com.google.gdata.data.photos.impl;

import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.geo.Box;
import com.google.gdata.data.geo.Point;
import com.google.gdata.data.geo.impl.BoxDataImpl;
import com.google.gdata.data.geo.impl.PointDataImpl;
import com.google.gdata.data.media.mediarss.MediaCategory;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaCredit;
import com.google.gdata.data.media.mediarss.MediaGroup;
import com.google.gdata.data.media.mediarss.MediaKeywords;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.data.photos.AlbumData;
import com.google.gdata.data.photos.GphotoAccess;
import com.google.gdata.data.photos.GphotoBytesUsed;
import com.google.gdata.data.photos.GphotoCommentCount;
import com.google.gdata.data.photos.GphotoCommentsEnabled;
import com.google.gdata.data.photos.GphotoLocation;
import com.google.gdata.data.photos.GphotoName;
import com.google.gdata.data.photos.GphotoNickname;
import com.google.gdata.data.photos.GphotoPhotosLeft;
import com.google.gdata.data.photos.GphotoPhotosUsed;
import com.google.gdata.data.photos.GphotoTimestamp;
import com.google.gdata.data.photos.GphotoUsername;
import com.google.gdata.data.photos.pheed.PheedImageUrl;
import com.google.gdata.data.photos.pheed.PheedThumbnail;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AlbumDataImpl extends GphotoDataImpl implements AlbumData {
    private final BoxDataImpl boundingBoxData;
    private final MediaDataImpl mediaData;
    private final PointDataImpl pointData;

    public AlbumDataImpl(ExtensionPoint extensionPoint) {
        super(extensionPoint);
        this.pointData = new PointDataImpl(extensionPoint);
        this.boundingBoxData = new BoxDataImpl(extensionPoint);
        this.mediaData = new MediaDataImpl(extensionPoint);
    }

    @Override // com.google.gdata.data.photos.impl.GphotoDataImpl, com.google.gdata.data.photos.Extensible
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        declare(extensionProfile, PheedThumbnail.getDefaultDescription());
        declare(extensionProfile, PheedImageUrl.getDefaultDescription());
        declare(extensionProfile, GphotoName.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoLocation.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoTimestamp.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoAccess.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoPhotosUsed.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoPhotosLeft.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoBytesUsed.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoUsername.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoNickname.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoCommentsEnabled.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoCommentCount.getDefaultDescription(false, false));
        this.pointData.declareExtensions(extensionProfile);
        this.boundingBoxData.declareExtensions(extensionProfile);
        this.mediaData.declareExtensions(extensionProfile);
    }

    @Deprecated
    public String getThumbnail() {
        return getSimpleValue(PheedThumbnail.class);
    }

    @Deprecated
    public void setThumbnail(String str) {
        if (str != null) {
            setExtension(new PheedThumbnail(str));
        } else {
            removeExtension(PheedThumbnail.class);
        }
    }

    @Deprecated
    public String getImageUrl() {
        return getSimpleValue(PheedImageUrl.class);
    }

    @Deprecated
    public void setImageUrl(String str) {
        if (str != null) {
            setExtension(new PheedImageUrl(str));
        } else {
            removeExtension(PheedImageUrl.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getName() {
        return getSimpleValue(GphotoName.class);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setName(String str) {
        if (str != null) {
            setExtension(new GphotoName(str));
        } else {
            removeExtension(GphotoName.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getLocation() {
        return getSimpleValue(GphotoLocation.class);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setLocation(String str) {
        if (str != null) {
            setExtension(new GphotoLocation(str));
        } else {
            removeExtension(GphotoLocation.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Date getDate() {
        GphotoTimestamp gphotoTimestamp = (GphotoTimestamp) getExtension(GphotoTimestamp.class);
        if (gphotoTimestamp == null) {
            return null;
        }
        return new Date(gphotoTimestamp.getValue().longValue());
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setDate(Date date) {
        if (date != null) {
            setExtension(new GphotoTimestamp(date));
        } else {
            removeExtension(GphotoTimestamp.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getAccess() {
        GphotoAccess gphotoAccess = (GphotoAccess) getExtension(GphotoAccess.class);
        if (gphotoAccess == null) {
            return null;
        }
        return gphotoAccess.getValue().toLowerCase();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setAccess(String str) {
        if (str != null) {
            setExtension(new GphotoAccess(str));
        } else {
            removeExtension(GphotoAccess.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getPhotosUsed() {
        GphotoPhotosUsed gphotoPhotosUsed = (GphotoPhotosUsed) getExtension(GphotoPhotosUsed.class);
        if (gphotoPhotosUsed == null) {
            return null;
        }
        return gphotoPhotosUsed.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setPhotosUsed(Integer num) {
        if (num != null) {
            setExtension(new GphotoPhotosUsed(num));
        } else {
            removeExtension(GphotoPhotosUsed.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getPhotosLeft() {
        GphotoPhotosLeft gphotoPhotosLeft = (GphotoPhotosLeft) getExtension(GphotoPhotosLeft.class);
        if (gphotoPhotosLeft == null) {
            return null;
        }
        return gphotoPhotosLeft.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setPhotosLeft(Integer num) {
        if (num != null) {
            setExtension(new GphotoPhotosLeft(num));
        } else {
            removeExtension(GphotoPhotosLeft.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Long getBytesUsed() {
        GphotoBytesUsed gphotoBytesUsed = (GphotoBytesUsed) getExtension(GphotoBytesUsed.class);
        if (gphotoBytesUsed == null) {
            return null;
        }
        return gphotoBytesUsed.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setBytesUsed(Long l) {
        if (l != null) {
            setExtension(new GphotoBytesUsed(l));
        } else {
            removeExtension(GphotoBytesUsed.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getUsername() {
        return getSimpleValue(GphotoUsername.class);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setUsername(String str) {
        if (str != null) {
            setExtension(new GphotoUsername(str));
        } else {
            removeExtension(GphotoUsername.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getNickname() {
        return getSimpleValue(GphotoNickname.class);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setNickname(String str) {
        if (str != null) {
            setExtension(new GphotoNickname(str));
        } else {
            removeExtension(GphotoNickname.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Boolean getCommentsEnabled() {
        GphotoCommentsEnabled gphotoCommentsEnabled = (GphotoCommentsEnabled) getExtension(GphotoCommentsEnabled.class);
        if (gphotoCommentsEnabled == null) {
            return null;
        }
        return gphotoCommentsEnabled.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setCommentsEnabled(Boolean bool) {
        if (bool != null) {
            setExtension(new GphotoCommentsEnabled(bool));
        } else {
            removeExtension(GphotoCommentsEnabled.class);
        }
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getCommentCount() {
        GphotoCommentCount gphotoCommentCount = (GphotoCommentCount) getExtension(GphotoCommentCount.class);
        if (gphotoCommentCount == null) {
            return null;
        }
        return gphotoCommentCount.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setCommentCount(Integer num) {
        if (num != null) {
            setExtension(new GphotoCommentCount(num));
        } else {
            removeExtension(GphotoCommentCount.class);
        }
    }

    @Override // com.google.gdata.data.geo.PointData
    public void setGeoLocation(Double d2, Double d3) {
        this.pointData.setGeoLocation(d2, d3);
    }

    @Override // com.google.gdata.data.geo.PointData
    public void setGeoLocation(Point point) {
        this.pointData.setGeoLocation(point);
    }

    @Override // com.google.gdata.data.geo.PointData
    public Point getGeoLocation() {
        return this.pointData.getGeoLocation();
    }

    @Override // com.google.gdata.data.geo.BoxData
    public Box getGeoBoundingBox() {
        return this.boundingBoxData.getGeoBoundingBox();
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void setGeoBoundingBox(Point point, Point point2) {
        this.boundingBoxData.setGeoBoundingBox(point, point2);
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void setGeoBoundingBox(Box box) {
        this.boundingBoxData.setGeoBoundingBox(box);
    }

    @Override // com.google.gdata.data.geo.PointData
    public void clearPoint() {
        this.pointData.clearPoint();
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void clearGeoBoundingBox() {
        this.boundingBoxData.clearGeoBoundingBox();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public MediaGroup getMediaGroup() {
        return this.mediaData.getMediaGroup();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaContent> getMediaContents() {
        return this.mediaData.getMediaContents();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaCategory> getMediaCategories() {
        return this.mediaData.getMediaCategories();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaCredit> getMediaCredits() {
        return this.mediaData.getMediaCredits();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaThumbnail> getMediaThumbnails() {
        return this.mediaData.getMediaThumbnails();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public MediaKeywords getMediaKeywords() {
        return this.mediaData.getMediaKeywords();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public void setKeywords(MediaKeywords mediaKeywords) {
        this.mediaData.setKeywords(mediaKeywords);
    }
}
