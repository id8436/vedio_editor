package com.google.gdata.data.photos;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.geo.Box;
import com.google.gdata.data.geo.Point;
import com.google.gdata.data.media.mediarss.MediaCategory;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaCredit;
import com.google.gdata.data.media.mediarss.MediaGroup;
import com.google.gdata.data.media.mediarss.MediaKeywords;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.data.photos.impl.PhotoDataImpl;
import com.google.gdata.util.ServiceException;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/photos/2007#photo")
public class PhotoFeed extends GphotoFeed<PhotoFeed> implements AtomData, PhotoData {
    private final PhotoData delegate;

    public PhotoFeed() {
        getCategories().add(PhotoData.PHOTO_CATEGORY);
        this.delegate = new PhotoDataImpl(this);
    }

    public PhotoFeed(BaseFeed<?, ?> baseFeed) {
        super(baseFeed);
        getCategories().add(PhotoData.PHOTO_CATEGORY);
        this.delegate = new PhotoDataImpl(this);
    }

    @Override // com.google.gdata.data.photos.GphotoFeed, com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        this.delegate.declareExtensions(extensionProfile);
        super.declareExtensions(extensionProfile);
    }

    public List<CommentEntry> getCommentEntries() {
        return super.getEntries(CommentEntry.class);
    }

    public List<TagEntry> getTagEntries() {
        return super.getEntries(TagEntry.class);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getAlbumId() {
        return this.delegate.getAlbumId();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getAlbumAccess() {
        return this.delegate.getAlbumAccess();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumAccess(String str) {
        this.delegate.setAlbumAccess(str);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getVideoStatus() {
        return this.delegate.getVideoStatus();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getChecksum() {
        return this.delegate.getChecksum();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public String getClient() {
        return this.delegate.getClient();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getCommentCount() throws ServiceException {
        return this.delegate.getCommentCount();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Boolean getCommentsEnabled() throws ServiceException {
        return this.delegate.getCommentsEnabled();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public ExifTags getExifTags() {
        return this.delegate.getExifTags();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Date getFeaturedDate() {
        return this.delegate.getFeaturedDate();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getHeight() throws ServiceException {
        return this.delegate.getHeight();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Float getPosition() throws ServiceException {
        return this.delegate.getPosition();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getRotation() throws ServiceException {
        return this.delegate.getRotation();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getSize() throws ServiceException {
        return this.delegate.getSize();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Date getTimestamp() throws ServiceException {
        return this.delegate.getTimestamp();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getVersion() throws ServiceException {
        return this.delegate.getVersion();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getViewCount() {
        return this.delegate.getViewCount();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Long getWidth() throws ServiceException {
        return this.delegate.getWidth();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumId(Long l) {
        this.delegate.setAlbumId(l);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setAlbumId(String str) {
        this.delegate.setAlbumId(str);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setVideoStatus(String str) {
        this.delegate.setVideoStatus(str);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setChecksum(String str) {
        this.delegate.setChecksum(str);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setClient(String str) {
        this.delegate.setClient(str);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setCommentCount(Integer num) {
        this.delegate.setCommentCount(num);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setCommentsEnabled(Boolean bool) {
        this.delegate.setCommentsEnabled(bool);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setExifTags(ExifTags exifTags) {
        this.delegate.setExifTags(exifTags);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setFeaturedDate(Date date) {
        this.delegate.setFeaturedDate(date);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setHeight(Long l) {
        this.delegate.setHeight(l);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setPosition(Float f2) {
        this.delegate.setPosition(f2);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setRotation(Integer num) {
        this.delegate.setRotation(num);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setSize(Long l) {
        this.delegate.setSize(l);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setTimestamp(Date date) {
        this.delegate.setTimestamp(date);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setVersion(Long l) {
        this.delegate.setVersion(l);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setViewCount(Long l) {
        this.delegate.setViewCount(l);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setWidth(Long l) {
        this.delegate.setWidth(l);
    }

    @Override // com.google.gdata.data.geo.PointData
    public void setGeoLocation(Double d2, Double d3) throws IllegalArgumentException {
        this.delegate.setGeoLocation(d2, d3);
    }

    @Override // com.google.gdata.data.geo.PointData
    public void setGeoLocation(Point point) {
        this.delegate.setGeoLocation(point);
    }

    @Override // com.google.gdata.data.geo.PointData
    public Point getGeoLocation() {
        return this.delegate.getGeoLocation();
    }

    @Override // com.google.gdata.data.geo.PointData
    public void clearPoint() {
        this.delegate.clearPoint();
    }

    @Override // com.google.gdata.data.geo.BoxData
    public Box getGeoBoundingBox() {
        return this.delegate.getGeoBoundingBox();
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void setGeoBoundingBox(Point point, Point point2) {
        this.delegate.setGeoBoundingBox(point, point2);
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void setGeoBoundingBox(Box box) {
        this.delegate.setGeoBoundingBox(box);
    }

    @Override // com.google.gdata.data.geo.BoxData
    public void clearGeoBoundingBox() {
        this.delegate.clearGeoBoundingBox();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void addStreamId(String str) {
        this.delegate.addStreamId(str);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public List<String> getStreamIds() {
        return this.delegate.getStreamIds();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public MediaGroup getMediaGroup() {
        return this.delegate.getMediaGroup();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaContent> getMediaContents() {
        return this.delegate.getMediaContents();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaCategory> getMediaCategories() {
        return this.delegate.getMediaCategories();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaCredit> getMediaCredits() {
        return this.delegate.getMediaCredits();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaThumbnail> getMediaThumbnails() {
        return this.delegate.getMediaThumbnails();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public MediaKeywords getMediaKeywords() {
        return this.delegate.getMediaKeywords();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public void setKeywords(MediaKeywords mediaKeywords) {
        this.delegate.setKeywords(mediaKeywords);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Boolean isStarred() {
        return this.delegate.isStarred();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setStarred(Boolean bool) {
        this.delegate.setStarred(bool);
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public Integer getTotalStars() {
        return this.delegate.getTotalStars();
    }

    @Override // com.google.gdata.data.photos.PhotoData
    public void setTotalStars(Integer num) {
        this.delegate.setTotalStars(num);
    }
}
