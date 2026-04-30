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
import com.google.gdata.data.photos.ExifTags;
import com.google.gdata.data.photos.GphotoAccess;
import com.google.gdata.data.photos.GphotoAlbumId;
import com.google.gdata.data.photos.GphotoChecksum;
import com.google.gdata.data.photos.GphotoClient;
import com.google.gdata.data.photos.GphotoCommentCount;
import com.google.gdata.data.photos.GphotoCommentsEnabled;
import com.google.gdata.data.photos.GphotoFeaturedDate;
import com.google.gdata.data.photos.GphotoHeight;
import com.google.gdata.data.photos.GphotoPosition;
import com.google.gdata.data.photos.GphotoRotation;
import com.google.gdata.data.photos.GphotoSize;
import com.google.gdata.data.photos.GphotoStarred;
import com.google.gdata.data.photos.GphotoStreamId;
import com.google.gdata.data.photos.GphotoTimestamp;
import com.google.gdata.data.photos.GphotoVersion;
import com.google.gdata.data.photos.GphotoVideoStatus;
import com.google.gdata.data.photos.GphotoViewCount;
import com.google.gdata.data.photos.GphotoWidth;
import com.google.gdata.data.photos.PhotoData;
import com.google.gdata.data.photos.pheed.PheedImageUrl;
import com.google.gdata.data.photos.pheed.PheedThumbnail;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PhotoDataImpl extends GphotoDataImpl implements PhotoData {
    private final BoxDataImpl boundingBoxData;
    private final MediaDataImpl mediaData;
    private final PointDataImpl pointData;

    public PhotoDataImpl(ExtensionPoint extensionPoint) {
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
        declare(extensionProfile, GphotoVersion.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoPosition.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoWidth.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoHeight.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoRotation.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoSize.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoAlbumId.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoAccess.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoClient.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoChecksum.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoTimestamp.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoStreamId.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoVideoStatus.getDefaultDescription(false, false));
        declare(extensionProfile, ExifTags.getDefaultDescription());
        new ExifTags().declareExtensions(extensionProfile);
        declare(extensionProfile, GphotoCommentsEnabled.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoCommentCount.getDefaultDescription(false, false));
        this.pointData.declareExtensions(extensionProfile);
        this.boundingBoxData.declareExtensions(extensionProfile);
        this.mediaData.declareExtensions(extensionProfile);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getVersion() {
        GphotoVersion gphotoVersion = (GphotoVersion) getExtension(GphotoVersion.class);
        if (gphotoVersion == null) {
            return null;
        }
        return gphotoVersion.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setVersion(Long l) {
        if (l != null) {
            setExtension(new GphotoVersion(l));
        } else {
            removeExtension(GphotoVersion.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Float getPosition() {
        GphotoPosition gphotoPosition = (GphotoPosition) getExtension(GphotoPosition.class);
        if (gphotoPosition == null) {
            return null;
        }
        return gphotoPosition.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setPosition(Float f2) {
        if (f2 != null) {
            setExtension(new GphotoPosition(f2));
        } else {
            removeExtension(GphotoPosition.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getAlbumId() {
        return getSimpleValue(GphotoAlbumId.class);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumId(String str) {
        if (str != null) {
            setExtension(new GphotoAlbumId(str));
        } else {
            removeExtension(GphotoAlbumId.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumId(Long l) {
        if (l != null) {
            setExtension(new GphotoAlbumId(l.toString()));
        } else {
            removeExtension(GphotoAlbumId.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getAlbumAccess() {
        GphotoAccess gphotoAccess = (GphotoAccess) getExtension(GphotoAccess.class);
        if (gphotoAccess == null) {
            return null;
        }
        return gphotoAccess.getValue().toLowerCase();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumAccess(String str) {
        if (str != null) {
            setExtension(new GphotoAccess(str));
        } else {
            removeExtension(GphotoAccess.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getVideoStatus() {
        return getSimpleValue(GphotoVideoStatus.class);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setVideoStatus(String str) {
        if (str != null) {
            setExtension(new GphotoVideoStatus(str));
        } else {
            removeExtension(GphotoVideoStatus.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getWidth() {
        GphotoWidth gphotoWidth = (GphotoWidth) getExtension(GphotoWidth.class);
        if (gphotoWidth == null) {
            return null;
        }
        return gphotoWidth.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setWidth(Long l) {
        if (l != null) {
            setExtension(new GphotoWidth(l));
        } else {
            removeExtension(GphotoWidth.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getHeight() {
        GphotoHeight gphotoHeight = (GphotoHeight) getExtension(GphotoHeight.class);
        if (gphotoHeight == null) {
            return null;
        }
        return gphotoHeight.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setHeight(Long l) {
        if (l != null) {
            setExtension(new GphotoHeight(l));
        } else {
            removeExtension(GphotoHeight.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getRotation() {
        GphotoRotation gphotoRotation = (GphotoRotation) getExtension(GphotoRotation.class);
        if (gphotoRotation == null) {
            return null;
        }
        return gphotoRotation.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setRotation(Integer num) {
        if (num != null) {
            setExtension(new GphotoRotation(num));
        } else {
            removeExtension(GphotoRotation.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getSize() {
        GphotoSize gphotoSize = (GphotoSize) getExtension(GphotoSize.class);
        if (gphotoSize == null) {
            return null;
        }
        return gphotoSize.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setSize(Long l) {
        if (l != null) {
            setExtension(new GphotoSize(l));
        } else {
            removeExtension(GphotoSize.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getClient() {
        return getSimpleValue(GphotoClient.class);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setClient(String str) {
        if (str != null) {
            setExtension(new GphotoClient(str));
        } else {
            removeExtension(GphotoClient.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getChecksum() {
        return getSimpleValue(GphotoChecksum.class);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setChecksum(String str) {
        if (str != null) {
            setExtension(new GphotoChecksum(str));
        } else {
            removeExtension(GphotoChecksum.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Date getTimestamp() {
        GphotoTimestamp gphotoTimestamp = (GphotoTimestamp) getExtension(GphotoTimestamp.class);
        if (gphotoTimestamp == null) {
            return null;
        }
        return new Date(gphotoTimestamp.getValue().longValue());
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setTimestamp(Date date) {
        if (date != null) {
            setExtension(new GphotoTimestamp(date));
        } else {
            removeExtension(GphotoTimestamp.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public ExifTags getExifTags() {
        return (ExifTags) getExtension(ExifTags.class);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setExifTags(ExifTags exifTags) {
        if (exifTags != null) {
            setExtension(exifTags);
        } else {
            removeExtension(ExifTags.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Boolean getCommentsEnabled() {
        GphotoCommentsEnabled gphotoCommentsEnabled = (GphotoCommentsEnabled) getExtension(GphotoCommentsEnabled.class);
        if (gphotoCommentsEnabled == null) {
            return null;
        }
        return gphotoCommentsEnabled.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setCommentsEnabled(Boolean bool) {
        if (bool != null) {
            setExtension(new GphotoCommentsEnabled(bool));
        } else {
            removeExtension(GphotoCommentsEnabled.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getCommentCount() {
        GphotoCommentCount gphotoCommentCount = (GphotoCommentCount) getExtension(GphotoCommentCount.class);
        if (gphotoCommentCount == null) {
            return null;
        }
        return gphotoCommentCount.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setCommentCount(Integer num) {
        if (num != null) {
            setExtension(new GphotoCommentCount(num));
        } else {
            removeExtension(GphotoCommentCount.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public List<String> getStreamIds() {
        List repeatingExtension = getRepeatingExtension(GphotoStreamId.class);
        ArrayList arrayList = new ArrayList(repeatingExtension.size());
        Iterator it = repeatingExtension.iterator();
        while (it.hasNext()) {
            arrayList.add(((GphotoStreamId) it.next()).getValue());
        }
        return arrayList;
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void addStreamId(String str) {
        addRepeatingExtension(new GphotoStreamId(str));
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getViewCount() {
        GphotoViewCount gphotoViewCount = (GphotoViewCount) getExtension(GphotoViewCount.class);
        if (gphotoViewCount == null) {
            return null;
        }
        return gphotoViewCount.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setViewCount(Long l) {
        if (l != null) {
            setExtension(new GphotoViewCount(l));
        } else {
            removeExtension(GphotoViewCount.class);
        }
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Date getFeaturedDate() {
        GphotoFeaturedDate gphotoFeaturedDate = (GphotoFeaturedDate) getExtension(GphotoFeaturedDate.class);
        if (gphotoFeaturedDate == null) {
            return null;
        }
        return new Date(gphotoFeaturedDate.getValue().longValue());
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setFeaturedDate(Date date) {
        if (date != null) {
            setExtension(new GphotoFeaturedDate(date));
        } else {
            removeExtension(GphotoFeaturedDate.class);
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

    @Override // com.google.gdata.data.photos.PhotoData
    public Boolean isStarred() {
        GphotoStarred gphotoStarred = (GphotoStarred) getExtension(GphotoStarred.class);
        if (gphotoStarred == null) {
            return null;
        }
        return gphotoStarred.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setStarred(Boolean bool) {
        GphotoStarred gphotoStarred = (GphotoStarred) getExtension(GphotoStarred.class);
        if (gphotoStarred == null) {
            gphotoStarred = new GphotoStarred();
            setExtension(gphotoStarred);
        }
        gphotoStarred.setValue(bool);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getTotalStars() {
        GphotoStarred gphotoStarred = (GphotoStarred) getExtension(GphotoStarred.class);
        if (gphotoStarred == null) {
            return null;
        }
        return gphotoStarred.getTotal();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setTotalStars(Integer num) {
        GphotoStarred gphotoStarred = (GphotoStarred) getExtension(GphotoStarred.class);
        if (gphotoStarred == null) {
            gphotoStarred = new GphotoStarred();
            setExtension(gphotoStarred);
        }
        gphotoStarred.setTotal(num);
    }
}
