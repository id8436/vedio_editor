package com.google.gdata.data.photos;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.geo.Box;
import com.google.gdata.data.geo.Point;
import com.google.gdata.data.media.MediaSource;
import com.google.gdata.data.media.mediarss.MediaCategory;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaCredit;
import com.google.gdata.data.media.mediarss.MediaGroup;
import com.google.gdata.data.media.mediarss.MediaKeywords;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.data.photos.impl.AlbumDataImpl;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/photos/2007#album")
public class AlbumFeed extends GphotoFeed<AlbumFeed> implements AlbumData, AtomData {
    private final AlbumData delegate;

    public AlbumFeed() {
        getCategories().add(AlbumData.ALBUM_CATEGORY);
        this.delegate = new AlbumDataImpl(this);
    }

    public AlbumFeed(BaseFeed<?, ?> baseFeed) {
        super(baseFeed);
        getCategories().add(AlbumData.ALBUM_CATEGORY);
        this.delegate = new AlbumDataImpl(this);
    }

    @Override // com.google.gdata.data.photos.GphotoFeed, com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        this.delegate.declareExtensions(extensionProfile);
        super.declareExtensions(extensionProfile);
    }

    public PhotoEntry insertPhoto(MediaSource mediaSource) throws IOException, ServiceException {
        return (PhotoEntry) super.insert(mediaSource, PhotoEntry.class);
    }

    public List<PhotoEntry> getPhotoEntries() {
        return getEntries(PhotoEntry.class);
    }

    public List<TagEntry> getTagEntries() {
        return getEntries(TagEntry.class);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getAccess() {
        return this.delegate.getAccess();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Long getBytesUsed() throws ServiceException {
        return this.delegate.getBytesUsed();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getCommentCount() throws ServiceException {
        return this.delegate.getCommentCount();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Boolean getCommentsEnabled() throws ServiceException {
        return this.delegate.getCommentsEnabled();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Date getDate() throws ServiceException {
        return this.delegate.getDate();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getLocation() {
        return this.delegate.getLocation();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getName() {
        return this.delegate.getName();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getNickname() {
        return this.delegate.getNickname();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getPhotosLeft() throws ServiceException {
        return this.delegate.getPhotosLeft();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public Integer getPhotosUsed() throws ServiceException {
        return this.delegate.getPhotosUsed();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public String getUsername() {
        return this.delegate.getUsername();
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setAccess(String str) {
        this.delegate.setAccess(str);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setBytesUsed(Long l) {
        this.delegate.setBytesUsed(l);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setCommentCount(Integer num) {
        this.delegate.setCommentCount(num);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setCommentsEnabled(Boolean bool) {
        this.delegate.setCommentsEnabled(bool);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setDate(Date date) {
        this.delegate.setDate(date);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setLocation(String str) {
        this.delegate.setLocation(str);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setName(String str) {
        this.delegate.setName(str);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setNickname(String str) {
        this.delegate.setNickname(str);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setPhotosLeft(Integer num) {
        this.delegate.setPhotosLeft(num);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setPhotosUsed(Integer num) {
        this.delegate.setPhotosUsed(num);
    }

    @Override // com.google.gdata.data.photos.AlbumData
    public void setUsername(String str) {
        this.delegate.setUsername(str);
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
    public void clearGeoBoundingBox() {
        this.delegate.clearGeoBoundingBox();
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
}
