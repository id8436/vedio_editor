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
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/photos/2007#photo")
public class PhotoEntry extends GphotoEntry<PhotoEntry> implements AtomData, PhotoData {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#photo");
    public static final String KIND = "http://schemas.google.com/photos/2007#photo";

    public PhotoEntry() {
        getCategories().add(CATEGORY);
    }

    public PhotoEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.photos.GphotoEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(PhotoEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(PhotoEntry.class, GphotoAccess.class);
            extensionProfile.declare(PhotoEntry.class, GphotoAlbumId.class);
            extensionProfile.declare(PhotoEntry.class, GphotoChecksum.class);
            extensionProfile.declare(PhotoEntry.class, GphotoClient.class);
            extensionProfile.declare(PhotoEntry.class, GphotoCommentCount.class);
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(GphotoCommentsEnabled.class, new XmlNamespace(Namespaces.PHOTOS_ALIAS, Namespaces.PHOTOS), "commentingEnabled", false, false, false));
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(ExifTags.class, new XmlNamespace(Namespaces.EXIF_ALIAS, Namespaces.EXIF), "tags", false, false, false));
            new ExifTags().declareExtensions(extensionProfile);
            extensionProfile.declare(PhotoEntry.class, GphotoFeaturedDate.class);
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(W3CPoint.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.W3C_GEO_ALIAS, com.google.gdata.data.geo.Namespaces.W3C_GEO), "Point", false, false, false));
            new W3CPoint().declareExtensions(extensionProfile);
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(GeoRssBox.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GEO_RSS_ALIAS, com.google.gdata.data.geo.Namespaces.GEO_RSS), "box", false, false, false));
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(GeoRssPoint.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GEO_RSS_ALIAS, com.google.gdata.data.geo.Namespaces.GEO_RSS), "point", false, false, false));
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(GeoRssWhere.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GEO_RSS_ALIAS, com.google.gdata.data.geo.Namespaces.GEO_RSS), "where", false, false, false));
            new GeoRssWhere().declareExtensions(extensionProfile);
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(GmlEnvelope.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GML_ALIAS, com.google.gdata.data.geo.Namespaces.GML), "Envelope", false, false, false));
            new GmlEnvelope().declareExtensions(extensionProfile);
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(GmlPoint.class, new XmlNamespace(com.google.gdata.data.geo.Namespaces.GML_ALIAS, com.google.gdata.data.geo.Namespaces.GML), "Point", false, false, false));
            new GmlPoint().declareExtensions(extensionProfile);
            extensionProfile.declare(PhotoEntry.class, GphotoHeight.class);
            extensionProfile.declare(PhotoEntry.class, GphotoImageVersion.class);
            extensionProfile.declare(PhotoEntry.class, new ExtensionDescription(MediaGroup.class, new XmlNamespace("media", MediaRssNamespace.URI), "group", false, false, false));
            new MediaGroup().declareExtensions(extensionProfile);
            extensionProfile.declare(PhotoEntry.class, GphotoOriginalVideo.class);
            extensionProfile.declare(PhotoEntry.class, GphotoPosition.class);
            extensionProfile.declare(PhotoEntry.class, GphotoRotation.class);
            extensionProfile.declare(PhotoEntry.class, GphotoSize.class);
            extensionProfile.declare(PhotoEntry.class, GphotoStarred.class);
            extensionProfile.declare(PhotoEntry.class, GphotoStreamId.getDefaultDescription(false, true));
            extensionProfile.declare(PhotoEntry.class, GphotoTimestamp.class);
            extensionProfile.declare(PhotoEntry.class, GphotoVersion.class);
            extensionProfile.declare(PhotoEntry.class, GphotoVideoStatus.class);
            extensionProfile.declare(PhotoEntry.class, GphotoViewCount.class);
            extensionProfile.declare(PhotoEntry.class, GphotoWidth.class);
        }
    }

    public GphotoAccess getAlbumAccessExt() {
        return (GphotoAccess) getExtension(GphotoAccess.class);
    }

    public void setAlbumAccessExt(GphotoAccess gphotoAccess) {
        if (gphotoAccess == null) {
            removeExtension(GphotoAccess.class);
        } else {
            setExtension(gphotoAccess);
        }
    }

    public boolean hasAlbumAccessExt() {
        return hasExtension(GphotoAccess.class);
    }

    public GphotoAlbumId getAlbumIdExt() {
        return (GphotoAlbumId) getExtension(GphotoAlbumId.class);
    }

    public void setAlbumIdExt(GphotoAlbumId gphotoAlbumId) {
        if (gphotoAlbumId == null) {
            removeExtension(GphotoAlbumId.class);
        } else {
            setExtension(gphotoAlbumId);
        }
    }

    public boolean hasAlbumIdExt() {
        return hasExtension(GphotoAlbumId.class);
    }

    public GphotoChecksum getChecksumExt() {
        return (GphotoChecksum) getExtension(GphotoChecksum.class);
    }

    public void setChecksumExt(GphotoChecksum gphotoChecksum) {
        if (gphotoChecksum == null) {
            removeExtension(GphotoChecksum.class);
        } else {
            setExtension(gphotoChecksum);
        }
    }

    public boolean hasChecksumExt() {
        return hasExtension(GphotoChecksum.class);
    }

    public GphotoClient getClientExt() {
        return (GphotoClient) getExtension(GphotoClient.class);
    }

    public void setClientExt(GphotoClient gphotoClient) {
        if (gphotoClient == null) {
            removeExtension(GphotoClient.class);
        } else {
            setExtension(gphotoClient);
        }
    }

    public boolean hasClientExt() {
        return hasExtension(GphotoClient.class);
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

    @Override // com.google.gdata.data.photos.PhotoData
    public ExifTags getExifTags() {
        return (ExifTags) getExtension(ExifTags.class);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setExifTags(ExifTags exifTags) {
        if (exifTags == null) {
            removeExtension(ExifTags.class);
        } else {
            setExtension(exifTags);
        }
    }

    public boolean hasExifTags() {
        return hasExtension(ExifTags.class);
    }

    public GphotoFeaturedDate getFeaturedDateExt() {
        return (GphotoFeaturedDate) getExtension(GphotoFeaturedDate.class);
    }

    public void setFeaturedDateExt(GphotoFeaturedDate gphotoFeaturedDate) {
        if (gphotoFeaturedDate == null) {
            removeExtension(GphotoFeaturedDate.class);
        } else {
            setExtension(gphotoFeaturedDate);
        }
    }

    public boolean hasFeaturedDateExt() {
        return hasExtension(GphotoFeaturedDate.class);
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

    public GphotoHeight getHeightExt() {
        return (GphotoHeight) getExtension(GphotoHeight.class);
    }

    public void setHeightExt(GphotoHeight gphotoHeight) {
        if (gphotoHeight == null) {
            removeExtension(GphotoHeight.class);
        } else {
            setExtension(gphotoHeight);
        }
    }

    public boolean hasHeightExt() {
        return hasExtension(GphotoHeight.class);
    }

    public GphotoImageVersion getImageVersionExt() {
        return (GphotoImageVersion) getExtension(GphotoImageVersion.class);
    }

    public void setImageVersionExt(GphotoImageVersion gphotoImageVersion) {
        if (gphotoImageVersion == null) {
            removeExtension(GphotoImageVersion.class);
        } else {
            setExtension(gphotoImageVersion);
        }
    }

    public boolean hasImageVersionExt() {
        return hasExtension(GphotoImageVersion.class);
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

    public GphotoOriginalVideo getOriginalVideo() {
        return (GphotoOriginalVideo) getExtension(GphotoOriginalVideo.class);
    }

    public void setOriginalVideo(GphotoOriginalVideo gphotoOriginalVideo) {
        if (gphotoOriginalVideo == null) {
            removeExtension(GphotoOriginalVideo.class);
        } else {
            setExtension(gphotoOriginalVideo);
        }
    }

    public boolean hasOriginalVideo() {
        return hasExtension(GphotoOriginalVideo.class);
    }

    public GphotoPosition getPositionExt() {
        return (GphotoPosition) getExtension(GphotoPosition.class);
    }

    public void setPositionExt(GphotoPosition gphotoPosition) {
        if (gphotoPosition == null) {
            removeExtension(GphotoPosition.class);
        } else {
            setExtension(gphotoPosition);
        }
    }

    public boolean hasPositionExt() {
        return hasExtension(GphotoPosition.class);
    }

    public GphotoRotation getRotationExt() {
        return (GphotoRotation) getExtension(GphotoRotation.class);
    }

    public void setRotationExt(GphotoRotation gphotoRotation) {
        if (gphotoRotation == null) {
            removeExtension(GphotoRotation.class);
        } else {
            setExtension(gphotoRotation);
        }
    }

    public boolean hasRotationExt() {
        return hasExtension(GphotoRotation.class);
    }

    public GphotoSize getSizeExt() {
        return (GphotoSize) getExtension(GphotoSize.class);
    }

    public void setSizeExt(GphotoSize gphotoSize) {
        if (gphotoSize == null) {
            removeExtension(GphotoSize.class);
        } else {
            setExtension(gphotoSize);
        }
    }

    public boolean hasSizeExt() {
        return hasExtension(GphotoSize.class);
    }

    public GphotoStarred getStarredExt() {
        return (GphotoStarred) getExtension(GphotoStarred.class);
    }

    public void setStarredExt(GphotoStarred gphotoStarred) {
        if (gphotoStarred == null) {
            removeExtension(GphotoStarred.class);
        } else {
            setExtension(gphotoStarred);
        }
    }

    public boolean hasStarredExt() {
        return hasExtension(GphotoStarred.class);
    }

    public List<GphotoStreamId> getStreamIdsExt() {
        return getRepeatingExtension(GphotoStreamId.class);
    }

    public void addStreamIdsExt(GphotoStreamId gphotoStreamId) {
        getStreamIdsExt().add(gphotoStreamId);
    }

    public boolean hasStreamIdsExt() {
        return hasRepeatingExtension(GphotoStreamId.class);
    }

    public GphotoTimestamp getTimestampExt() {
        return (GphotoTimestamp) getExtension(GphotoTimestamp.class);
    }

    public void setTimestampExt(GphotoTimestamp gphotoTimestamp) {
        if (gphotoTimestamp == null) {
            removeExtension(GphotoTimestamp.class);
        } else {
            setExtension(gphotoTimestamp);
        }
    }

    public boolean hasTimestampExt() {
        return hasExtension(GphotoTimestamp.class);
    }

    public GphotoVersion getVersionExt() {
        return (GphotoVersion) getExtension(GphotoVersion.class);
    }

    public void setVersionExt(GphotoVersion gphotoVersion) {
        if (gphotoVersion == null) {
            removeExtension(GphotoVersion.class);
        } else {
            setExtension(gphotoVersion);
        }
    }

    public boolean hasVersionExt() {
        return hasExtension(GphotoVersion.class);
    }

    public GphotoVideoStatus getVideoStatusExt() {
        return (GphotoVideoStatus) getExtension(GphotoVideoStatus.class);
    }

    public void setVideoStatusExt(GphotoVideoStatus gphotoVideoStatus) {
        if (gphotoVideoStatus == null) {
            removeExtension(GphotoVideoStatus.class);
        } else {
            setExtension(gphotoVideoStatus);
        }
    }

    public boolean hasVideoStatusExt() {
        return hasExtension(GphotoVideoStatus.class);
    }

    public GphotoViewCount getViewCountExt() {
        return (GphotoViewCount) getExtension(GphotoViewCount.class);
    }

    public void setViewCountExt(GphotoViewCount gphotoViewCount) {
        if (gphotoViewCount == null) {
            removeExtension(GphotoViewCount.class);
        } else {
            setExtension(gphotoViewCount);
        }
    }

    public boolean hasViewCountExt() {
        return hasExtension(GphotoViewCount.class);
    }

    public GphotoWidth getWidthExt() {
        return (GphotoWidth) getExtension(GphotoWidth.class);
    }

    public void setWidthExt(GphotoWidth gphotoWidth) {
        if (gphotoWidth == null) {
            removeExtension(GphotoWidth.class);
        } else {
            setExtension(gphotoWidth);
        }
    }

    public boolean hasWidthExt() {
        return hasExtension(GphotoWidth.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{PhotoEntry " + super.toString() + "}";
    }

    public PhotoFeed getFeed(String... strArr) throws IOException, ServiceException {
        return (PhotoFeed) getFeed(PhotoFeed.class, strArr);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getAlbumId() {
        GphotoAlbumId albumIdExt = getAlbumIdExt();
        if (albumIdExt == null) {
            return null;
        }
        return albumIdExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getAlbumAccess() {
        GphotoAccess albumAccessExt = getAlbumAccessExt();
        if (albumAccessExt == null) {
            return null;
        }
        return albumAccessExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getVideoStatus() {
        GphotoVideoStatus videoStatusExt = getVideoStatusExt();
        if (videoStatusExt == null) {
            return null;
        }
        return videoStatusExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getChecksum() {
        GphotoChecksum checksumExt = getChecksumExt();
        if (checksumExt == null) {
            return null;
        }
        return checksumExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getClient() {
        GphotoClient clientExt = getClientExt();
        if (clientExt == null) {
            return null;
        }
        return clientExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getCommentCount() throws ServiceException {
        GphotoCommentCount commentCountExt = getCommentCountExt();
        if (commentCountExt == null) {
            return null;
        }
        return commentCountExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Boolean getCommentsEnabled() throws ServiceException {
        GphotoCommentsEnabled commentsEnabledExt = getCommentsEnabledExt();
        if (commentsEnabledExt == null) {
            return null;
        }
        return commentsEnabledExt.getValue();
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
    public Long getHeight() throws ServiceException {
        GphotoHeight heightExt = getHeightExt();
        if (heightExt == null) {
            return null;
        }
        return heightExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Float getPosition() throws ServiceException {
        GphotoPosition positionExt = getPositionExt();
        if (positionExt == null) {
            return null;
        }
        return positionExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getRotation() throws ServiceException {
        GphotoRotation rotationExt = getRotationExt();
        if (rotationExt == null) {
            return null;
        }
        return rotationExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getSize() throws ServiceException {
        GphotoSize sizeExt = getSizeExt();
        if (sizeExt == null) {
            return null;
        }
        return sizeExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Date getTimestamp() throws ServiceException {
        GphotoTimestamp timestampExt = getTimestampExt();
        if (timestampExt == null) {
            return null;
        }
        return new Date(timestampExt.getValue().longValue());
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getVersion() throws ServiceException {
        GphotoVersion versionExt = getVersionExt();
        if (versionExt == null) {
            return null;
        }
        return versionExt.getValue();
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
    public Long getWidth() throws ServiceException {
        GphotoWidth widthExt = getWidthExt();
        if (widthExt == null) {
            return null;
        }
        return widthExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumId(Long l) {
        GphotoAlbumId gphotoAlbumIdFrom = null;
        if (l != null) {
            gphotoAlbumIdFrom = GphotoAlbumId.from(l);
        }
        setAlbumIdExt(gphotoAlbumIdFrom);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumId(String str) {
        GphotoAlbumId gphotoAlbumId = null;
        if (str != null) {
            gphotoAlbumId = new GphotoAlbumId(str);
        }
        setAlbumIdExt(gphotoAlbumId);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumAccess(String str) {
        GphotoAccess gphotoAccess = null;
        if (str != null) {
            gphotoAccess = new GphotoAccess(str);
        }
        setAlbumAccessExt(gphotoAccess);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setVideoStatus(String str) {
        GphotoVideoStatus gphotoVideoStatus = null;
        if (str != null) {
            gphotoVideoStatus = new GphotoVideoStatus(str);
        }
        setVideoStatusExt(gphotoVideoStatus);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setChecksum(String str) {
        GphotoChecksum gphotoChecksum = null;
        if (str != null) {
            gphotoChecksum = new GphotoChecksum(str);
        }
        setChecksumExt(gphotoChecksum);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setClient(String str) {
        GphotoClient gphotoClient = null;
        if (str != null) {
            gphotoClient = new GphotoClient(str);
        }
        setClientExt(gphotoClient);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setCommentCount(Integer num) {
        GphotoCommentCount gphotoCommentCount = null;
        if (num != null) {
            gphotoCommentCount = new GphotoCommentCount(num);
        }
        setCommentCountExt(gphotoCommentCount);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setCommentsEnabled(Boolean bool) {
        GphotoCommentsEnabled gphotoCommentsEnabled = null;
        if (bool != null) {
            gphotoCommentsEnabled = new GphotoCommentsEnabled(bool);
        }
        setCommentsEnabledExt(gphotoCommentsEnabled);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setFeaturedDate(Date date) {
        GphotoFeaturedDate gphotoFeaturedDate = null;
        if (date != null) {
            gphotoFeaturedDate = new GphotoFeaturedDate(date);
        }
        setFeaturedDateExt(gphotoFeaturedDate);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setHeight(Long l) {
        GphotoHeight gphotoHeight = null;
        if (l != null) {
            gphotoHeight = new GphotoHeight(l);
        }
        setHeightExt(gphotoHeight);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setPosition(Float f2) {
        GphotoPosition gphotoPosition = null;
        if (f2 != null) {
            gphotoPosition = new GphotoPosition(f2);
        }
        setPositionExt(gphotoPosition);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setRotation(Integer num) {
        GphotoRotation gphotoRotation = null;
        if (num != null) {
            gphotoRotation = new GphotoRotation(num);
        }
        setRotationExt(gphotoRotation);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setSize(Long l) {
        GphotoSize gphotoSize = null;
        if (l != null) {
            gphotoSize = new GphotoSize(l);
        }
        setSizeExt(gphotoSize);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setTimestamp(Date date) {
        GphotoTimestamp gphotoTimestamp = null;
        if (date != null) {
            gphotoTimestamp = new GphotoTimestamp(date);
        }
        setTimestampExt(gphotoTimestamp);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setVersion(Long l) {
        GphotoVersion gphotoVersion = null;
        if (l != null) {
            gphotoVersion = new GphotoVersion(l);
        }
        setVersionExt(gphotoVersion);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setViewCount(Long l) {
        GphotoViewCount gphotoViewCount = null;
        if (l != null) {
            gphotoViewCount = new GphotoViewCount(l);
        }
        setViewCountExt(gphotoViewCount);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setWidth(Long l) {
        GphotoWidth gphotoWidth = null;
        if (l != null) {
            gphotoWidth = new GphotoWidth(l);
        }
        setWidthExt(gphotoWidth);
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

    @Override // com.google.gdata.data.photos.PhotoData
    public void addStreamId(String str) {
        addStreamIdsExt(new GphotoStreamId(str));
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public List<String> getStreamIds() {
        List<GphotoStreamId> streamIdsExt = getStreamIdsExt();
        ArrayList arrayList = new ArrayList();
        Iterator<GphotoStreamId> it = streamIdsExt.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().getValue());
        }
        return arrayList;
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

    @Override // com.google.gdata.data.photos.PhotoData
    public Boolean isStarred() {
        GphotoStarred starredExt = getStarredExt();
        if (starredExt == null) {
            return null;
        }
        return starredExt.getValue();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setStarred(Boolean bool) {
        GphotoStarred starredExt = getStarredExt();
        if (starredExt == null) {
            starredExt = new GphotoStarred();
            setStarredExt(starredExt);
        }
        starredExt.setValue(bool);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getTotalStars() {
        GphotoStarred starredExt = getStarredExt();
        if (starredExt == null) {
            return null;
        }
        return starredExt.getTotal();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setTotalStars(Integer num) {
        GphotoStarred starredExt = getStarredExt();
        if (starredExt == null) {
            starredExt = new GphotoStarred();
            setStarredExt(starredExt);
        }
        starredExt.setTotal(num);
    }
}
