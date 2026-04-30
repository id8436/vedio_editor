package com.google.gdata.data.photos;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.geo.Box;
import com.google.gdata.data.geo.Point;
import com.google.gdata.data.geo.impl.BoxDataImpl;
import com.google.gdata.data.geo.impl.GeoRssBox;
import com.google.gdata.data.geo.impl.GeoRssPoint;
import com.google.gdata.data.geo.impl.GeoRssWhere;
import com.google.gdata.data.geo.impl.GmlEnvelope;
import com.google.gdata.data.geo.impl.GmlPoint;
import com.google.gdata.data.geo.impl.PointDataImpl;
import com.google.gdata.data.geo.impl.W3CPoint;
import com.google.gdata.data.media.mediarss.MediaCategory;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaCredit;
import com.google.gdata.data.media.mediarss.MediaGroup;
import com.google.gdata.data.media.mediarss.MediaKeywords;
import com.google.gdata.data.media.mediarss.MediaRssNamespace;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.common.xml.XmlNamespace;
import java.io.IOException;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/photos/2007#album")
public class AlbumEntry extends GphotoEntry<AlbumEntry> implements AlbumData, AtomData {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#album");
    public static final String KIND = "http://schemas.google.com/photos/2007#album";

    public AlbumEntry() {
        getCategories().add(CATEGORY);
    }

    public AlbumEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.photos.GphotoEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(AlbumEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(AlbumEntry.class, GphotoAccess.class);
            extensionProfile.declare(AlbumEntry.class, GphotoBytesUsed.class);
            extensionProfile.declare(AlbumEntry.class, GphotoCommentCount.class);
            extensionProfile.declare(AlbumEntry.class, new ExtensionDescription(GphotoCommentsEnabled.class, new XmlNamespace(Namespaces.PHOTOS_ALIAS, Namespaces.PHOTOS), "commentingEnabled", false, false, false));
            extensionProfile.declare(AlbumEntry.class, GphotoTimestamp.class);
            extensionProfile.declare(AlbumEntry.class, new ExtensionDescription(W3CPoint.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.W3C_GEO_ALIAS, com.google.gdata.data.geo.Namespaces.W3C_GEO), "Point", false, false, false));
            new W3CPoint().declareExtensions(extensionProfile);
            extensionProfile.declare(AlbumEntry.class, new ExtensionDescription(GeoRssBox.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GEO_RSS_ALIAS, com.google.gdata.data.geo.Namespaces.GEO_RSS), "box", false, false, false));
            extensionProfile.declare(AlbumEntry.class, new ExtensionDescription(GeoRssPoint.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GEO_RSS_ALIAS, com.google.gdata.data.geo.Namespaces.GEO_RSS), "point", false, false, false));
            extensionProfile.declare(AlbumEntry.class, new ExtensionDescription(GeoRssWhere.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GEO_RSS_ALIAS, com.google.gdata.data.geo.Namespaces.GEO_RSS), "where", false, false, false));
            new GeoRssWhere().declareExtensions(extensionProfile);
            extensionProfile.declare(AlbumEntry.class, new ExtensionDescription(GmlEnvelope.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GML_ALIAS, com.google.gdata.data.geo.Namespaces.GML), "Envelope", false, false, false));
            new GmlEnvelope().declareExtensions(extensionProfile);
            extensionProfile.declare(AlbumEntry.class, new ExtensionDescription(GmlPoint.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GML_ALIAS, com.google.gdata.data.geo.Namespaces.GML), "Point", false, false, false));
            new GmlPoint().declareExtensions(extensionProfile);
            extensionProfile.declare(AlbumEntry.class, GphotoLocation.class);
            extensionProfile.declare(AlbumEntry.class, new ExtensionDescription(MediaGroup.class, new XmlNamespace("media", MediaRssNamespace.URI), "group", false, false, false));
            new MediaGroup().declareExtensions(extensionProfile);
            extensionProfile.declare(AlbumEntry.class, GphotoName.class);
            extensionProfile.declare(AlbumEntry.class, GphotoNickname.class);
            extensionProfile.declare(AlbumEntry.class, GphotoPhotosLeft.class);
            extensionProfile.declare(AlbumEntry.class, GphotoPhotosUsed.class);
            extensionProfile.declare(AlbumEntry.class, GphotoUsername.class);
        }
    }

    public GphotoAccess getAccessExt() {
        return (GphotoAccess) getExtension(GphotoAccess.class);
    }

    public void setAccessExt(GphotoAccess gphotoAccess) {
        if (gphotoAccess == null) {
            removeExtension(GphotoAccess.class);
        } else {
            setExtension(gphotoAccess);
        }
    }

    public boolean hasAccessExt() {
        return hasExtension(GphotoAccess.class);
    }

    public GphotoBytesUsed getBytesUsedExt() {
        return (GphotoBytesUsed) getExtension(GphotoBytesUsed.class);
    }

    public void setBytesUsedExt(GphotoBytesUsed gphotoBytesUsed) {
        if (gphotoBytesUsed == null) {
            removeExtension(GphotoBytesUsed.class);
        } else {
            setExtension(gphotoBytesUsed);
        }
    }

    public boolean hasBytesUsedExt() {
        return hasExtension(GphotoBytesUsed.class);
    }

    public GphotoCommentCount getCommentCountExt() {
        return (GphotoCommentCount) getExtension(GphotoCommentCount.class);
    }

    public void setCommentCountExt(GphotoCommentCount gphotoCommentCount) {
        if (gphotoCommentCount == null) {
            removeExtension(GphotoCommentCount.class);
        } else {
            setExtension(gphotoCommentCount);
        }
    }

    public boolean hasCommentCountExt() {
        return hasExtension(GphotoCommentCount.class);
    }

    public GphotoCommentsEnabled getCommentsEnabledExt() {
        return (GphotoCommentsEnabled) getExtension(GphotoCommentsEnabled.class);
    }

    public void setCommentsEnabledExt(GphotoCommentsEnabled gphotoCommentsEnabled) {
        if (gphotoCommentsEnabled == null) {
            removeExtension(GphotoCommentsEnabled.class);
        } else {
            setExtension(gphotoCommentsEnabled);
        }
    }

    public boolean hasCommentsEnabledExt() {
        return hasExtension(GphotoCommentsEnabled.class);
    }

    public GphotoTimestamp getDateExt() {
        return (GphotoTimestamp) getExtension(GphotoTimestamp.class);
    }

    public void setDateExt(GphotoTimestamp gphotoTimestamp) {
        if (gphotoTimestamp == null) {
            removeExtension(GphotoTimestamp.class);
        } else {
            setExtension(gphotoTimestamp);
        }
    }

    public boolean hasDateExt() {
        return hasExtension(GphotoTimestamp.class);
    }

    public W3CPoint getGeoPoint() {
        return (W3CPoint) getExtension(W3CPoint.class);
    }

    public void setGeoPoint(W3CPoint w3CPoint) {
        if (w3CPoint == null) {
            removeExtension(W3CPoint.class);
        } else {
            setExtension(w3CPoint);
        }
    }

    public boolean hasGeoPoint() {
        return hasExtension(W3CPoint.class);
    }

    public GeoRssBox getGeoRssBox() {
        return (GeoRssBox) getExtension(GeoRssBox.class);
    }

    public void setGeoRssBox(GeoRssBox geoRssBox) {
        if (geoRssBox == null) {
            removeExtension(GeoRssBox.class);
        } else {
            setExtension(geoRssBox);
        }
    }

    public boolean hasGeoRssBox() {
        return hasExtension(GeoRssBox.class);
    }

    public GeoRssPoint getGeoRssPoint() {
        return (GeoRssPoint) getExtension(GeoRssPoint.class);
    }

    public void setGeoRssPoint(GeoRssPoint geoRssPoint) {
        if (geoRssPoint == null) {
            removeExtension(GeoRssPoint.class);
        } else {
            setExtension(geoRssPoint);
        }
    }

    public boolean hasGeoRssPoint() {
        return hasExtension(GeoRssPoint.class);
    }

    public GeoRssWhere getGeoRssWhere() {
        return (GeoRssWhere) getExtension(GeoRssWhere.class);
    }

    public void setGeoRssWhere(GeoRssWhere geoRssWhere) {
        if (geoRssWhere == null) {
            removeExtension(GeoRssWhere.class);
        } else {
            setExtension(geoRssWhere);
        }
    }

    public boolean hasGeoRssWhere() {
        return hasExtension(GeoRssWhere.class);
    }

    public GmlEnvelope getGmlEnvelope() {
        return (GmlEnvelope) getExtension(GmlEnvelope.class);
    }

    public void setGmlEnvelope(GmlEnvelope gmlEnvelope) {
        if (gmlEnvelope == null) {
            removeExtension(GmlEnvelope.class);
        } else {
            setExtension(gmlEnvelope);
        }
    }

    public boolean hasGmlEnvelope() {
        return hasExtension(GmlEnvelope.class);
    }

    public GmlPoint getGmlPoint() {
        return (GmlPoint) getExtension(GmlPoint.class);
    }

    public void setGmlPoint(GmlPoint gmlPoint) {
        if (gmlPoint == null) {
            removeExtension(GmlPoint.class);
        } else {
            setExtension(gmlPoint);
        }
    }

    public boolean hasGmlPoint() {
        return hasExtension(GmlPoint.class);
    }

    public GphotoLocation getLocationExt() {
        return (GphotoLocation) getExtension(GphotoLocation.class);
    }

    public void setLocationExt(GphotoLocation gphotoLocation) {
        if (gphotoLocation == null) {
            removeExtension(GphotoLocation.class);
        } else {
            setExtension(gphotoLocation);
        }
    }

    public boolean hasLocationExt() {
        return hasExtension(GphotoLocation.class);
    }

    @Override // com.google.gdata.data.photos.MediaData
    public MediaGroup getMediaGroup() {
        return (MediaGroup) getExtension(MediaGroup.class);
    }

    public void setMediaGroup(MediaGroup mediaGroup) {
        if (mediaGroup == null) {
            removeExtension(MediaGroup.class);
        } else {
            setExtension(mediaGroup);
        }
    }

    public boolean hasMediaGroup() {
        return hasExtension(MediaGroup.class);
    }

    public GphotoName getNameExt() {
        return (GphotoName) getExtension(GphotoName.class);
    }

    public void setNameExt(GphotoName gphotoName) {
        if (gphotoName == null) {
            removeExtension(GphotoName.class);
        } else {
            setExtension(gphotoName);
        }
    }

    public boolean hasNameExt() {
        return hasExtension(GphotoName.class);
    }

    public GphotoNickname getNicknameExt() {
        return (GphotoNickname) getExtension(GphotoNickname.class);
    }

    public void setNicknameExt(GphotoNickname gphotoNickname) {
        if (gphotoNickname == null) {
            removeExtension(GphotoNickname.class);
        } else {
            setExtension(gphotoNickname);
        }
    }

    public boolean hasNicknameExt() {
        return hasExtension(GphotoNickname.class);
    }

    public GphotoPhotosLeft getPhotosLeftExt() {
        return (GphotoPhotosLeft) getExtension(GphotoPhotosLeft.class);
    }

    public void setPhotosLeftExt(GphotoPhotosLeft gphotoPhotosLeft) {
        if (gphotoPhotosLeft == null) {
            removeExtension(GphotoPhotosLeft.class);
        } else {
            setExtension(gphotoPhotosLeft);
        }
    }

    public boolean hasPhotosLeftExt() {
        return hasExtension(GphotoPhotosLeft.class);
    }

    public GphotoPhotosUsed getPhotosUsedExt() {
        return (GphotoPhotosUsed) getExtension(GphotoPhotosUsed.class);
    }

    public void setPhotosUsedExt(GphotoPhotosUsed gphotoPhotosUsed) {
        if (gphotoPhotosUsed == null) {
            removeExtension(GphotoPhotosUsed.class);
        } else {
            setExtension(gphotoPhotosUsed);
        }
    }

    public boolean hasPhotosUsedExt() {
        return hasExtension(GphotoPhotosUsed.class);
    }

    public GphotoUsername getUsernameExt() {
        return (GphotoUsername) getExtension(GphotoUsername.class);
    }

    public void setUsernameExt(GphotoUsername gphotoUsername) {
        if (gphotoUsername == null) {
            removeExtension(GphotoUsername.class);
        } else {
            setExtension(gphotoUsername);
        }
    }

    public boolean hasUsernameExt() {
        return hasExtension(GphotoUsername.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{AlbumEntry " + super.toString() + "}";
    }

    public AlbumFeed getFeed(String... strArr) throws IOException, ServiceException {
        return (AlbumFeed) getFeed(AlbumFeed.class, strArr);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getAccess() {
        GphotoAccess accessExt = getAccessExt();
        if (accessExt == null) {
            return null;
        }
        return accessExt.getValue().toLowerCase();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Long getBytesUsed() {
        GphotoBytesUsed bytesUsedExt = getBytesUsedExt();
        if (bytesUsedExt == null) {
            return null;
        }
        return bytesUsedExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getCommentCount() {
        GphotoCommentCount commentCountExt = getCommentCountExt();
        if (commentCountExt == null) {
            return null;
        }
        return commentCountExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Boolean getCommentsEnabled() {
        GphotoCommentsEnabled commentsEnabledExt = getCommentsEnabledExt();
        if (commentsEnabledExt == null) {
            return null;
        }
        return commentsEnabledExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Date getDate() {
        GphotoTimestamp dateExt = getDateExt();
        if (dateExt == null) {
            return null;
        }
        return new Date(dateExt.getValue().longValue());
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getLocation() {
        GphotoLocation locationExt = getLocationExt();
        if (locationExt == null) {
            return null;
        }
        return locationExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getName() {
        GphotoName nameExt = getNameExt();
        if (nameExt == null) {
            return null;
        }
        return nameExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getNickname() {
        GphotoNickname nicknameExt = getNicknameExt();
        if (nicknameExt == null) {
            return null;
        }
        return nicknameExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getPhotosLeft() {
        GphotoPhotosLeft photosLeftExt = getPhotosLeftExt();
        if (photosLeftExt == null) {
            return null;
        }
        return photosLeftExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getPhotosUsed() {
        GphotoPhotosUsed photosUsedExt = getPhotosUsedExt();
        if (photosUsedExt == null) {
            return null;
        }
        return photosUsedExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getUsername() {
        GphotoUsername usernameExt = getUsernameExt();
        if (usernameExt == null) {
            return null;
        }
        return usernameExt.getValue();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setAccess(String str) {
        GphotoAccess gphotoAccess = null;
        if (str != null) {
            gphotoAccess = new GphotoAccess(str);
        }
        setAccessExt(gphotoAccess);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setBytesUsed(Long l) {
        GphotoBytesUsed gphotoBytesUsed = null;
        if (l != null) {
            gphotoBytesUsed = new GphotoBytesUsed(l);
        }
        setBytesUsedExt(gphotoBytesUsed);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setCommentCount(Integer num) {
        GphotoCommentCount gphotoCommentCount = null;
        if (num != null) {
            gphotoCommentCount = new GphotoCommentCount(num);
        }
        setCommentCountExt(gphotoCommentCount);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setCommentsEnabled(Boolean bool) {
        GphotoCommentsEnabled gphotoCommentsEnabled = null;
        if (bool != null) {
            gphotoCommentsEnabled = new GphotoCommentsEnabled(bool);
        }
        setCommentsEnabledExt(gphotoCommentsEnabled);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setDate(Date date) {
        GphotoTimestamp gphotoTimestamp = null;
        if (date != null) {
            gphotoTimestamp = new GphotoTimestamp(date);
        }
        setDateExt(gphotoTimestamp);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setLocation(String str) {
        GphotoLocation gphotoLocation = null;
        if (str != null) {
            gphotoLocation = new GphotoLocation(str);
        }
        setLocationExt(gphotoLocation);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setName(String str) {
        GphotoName gphotoName = null;
        if (str != null) {
            gphotoName = new GphotoName(str);
        }
        setNameExt(gphotoName);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setNickname(String str) {
        GphotoNickname gphotoNickname = null;
        if (str != null) {
            gphotoNickname = new GphotoNickname(str);
        }
        setNicknameExt(gphotoNickname);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setPhotosLeft(Integer num) {
        GphotoPhotosLeft gphotoPhotosLeft = null;
        if (num != null) {
            gphotoPhotosLeft = new GphotoPhotosLeft(num);
        }
        setPhotosLeftExt(gphotoPhotosLeft);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setPhotosUsed(Integer num) {
        GphotoPhotosUsed gphotoPhotosUsed = null;
        if (num != null) {
            gphotoPhotosUsed = new GphotoPhotosUsed(num);
        }
        setPhotosUsedExt(gphotoPhotosUsed);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setUsername(String str) {
        GphotoUsername gphotoUsername = null;
        if (str != null) {
            gphotoUsername = new GphotoUsername(str);
        }
        setUsernameExt(gphotoUsername);
    }

    @Override // com.google.gdata.data.geo.PointData
    public Point getGeoLocation() {
        return PointDataImpl.getPoint(this);
    }

    @Override // com.google.gdata.data.geo.PointData
    public void setGeoLocation(Double d2, Double d3) {
        setGeoLocation(new GeoRssWhere(d2, d3));
    }

    @Override // com.google.gdata.data.geo.PointData
    public void setGeoLocation(Point point) {
        PointDataImpl.setPoint(this, point);
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void setGeoBoundingBox(Point point, Point point2) {
        setGeoBoundingBox(new GeoRssWhere(point, point2));
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void setGeoBoundingBox(Box box) {
        BoxDataImpl.setBox(this, box);
    }

    @Override // com.google.gdata.data.geo.BoxData
    public Box getGeoBoundingBox() {
        return BoxDataImpl.getBox(this);
    }

    @Override // com.google.gdata.data.geo.PointData
    public void clearPoint() {
        PointDataImpl.clearPoint(this);
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void clearGeoBoundingBox() {
        BoxDataImpl.clearBox(this);
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaCategory> getMediaCategories() {
        MediaGroup mediaGroup = getMediaGroup();
        return mediaGroup == null ? Collections.emptyList() : mediaGroup.getCategories();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaContent> getMediaContents() {
        MediaGroup mediaGroup = getMediaGroup();
        return mediaGroup == null ? Collections.emptyList() : mediaGroup.getContents();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaCredit> getMediaCredits() {
        MediaGroup mediaGroup = getMediaGroup();
        return mediaGroup == null ? Collections.emptyList() : mediaGroup.getCredits();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public MediaKeywords getMediaKeywords() {
        MediaGroup mediaGroup = getMediaGroup();
        if (mediaGroup == null) {
            return null;
        }
        return mediaGroup.getKeywords();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaThumbnail> getMediaThumbnails() {
        MediaGroup mediaGroup = getMediaGroup();
        return mediaGroup == null ? Collections.emptyList() : mediaGroup.getThumbnails();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public void setKeywords(MediaKeywords mediaKeywords) {
        MediaGroup mediaGroup = getMediaGroup();
        if (mediaGroup == null) {
            mediaGroup = new MediaGroup();
            setMediaGroup(mediaGroup);
        }
        mediaGroup.setKeywords(mediaKeywords);
    }
}
