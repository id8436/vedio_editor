package com.google.gdata.data.photos;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.photos.impl.UserDataImpl;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/photos/2007#user")
public class UserFeed extends GphotoFeed<UserFeed> implements AtomData, UserData {
    private final UserData delegate;

    public UserFeed() {
        getCategories().add(UserData.USER_CATEGORY);
        this.delegate = new UserDataImpl(this);
    }

    public UserFeed(BaseFeed<?, ?> baseFeed) {
        super(baseFeed);
        getCategories().add(UserData.USER_CATEGORY);
        this.delegate = new UserDataImpl(this);
    }

    @Override // com.google.gdata.data.photos.GphotoFeed, com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        this.delegate.declareExtensions(extensionProfile);
        super.declareExtensions(extensionProfile);
    }

    public List<AlbumEntry> getAlbumEntries() {
        return super.getEntries(AlbumEntry.class);
    }

    public List<TagEntry> getTagEntries() {
        return super.getEntries(TagEntry.class);
    }

    @Override // com.google.gdata.data.photos.UserData
    public Integer getMaxPhotos() {
        return this.delegate.getMaxPhotos();
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getNickname() {
        return this.delegate.getNickname();
    }

    @Override // com.google.gdata.data.photos.UserData
    public Long getQuotaLimit() {
        return this.delegate.getQuotaLimit();
    }

    @Override // com.google.gdata.data.photos.UserData
    public Long getQuotaUsed() {
        return this.delegate.getQuotaUsed();
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getThumbnail() {
        return this.delegate.getThumbnail();
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getUsername() {
        return this.delegate.getUsername();
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setMaxPhotos(Integer num) {
        this.delegate.setMaxPhotos(num);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setNickname(String str) {
        this.delegate.setNickname(str);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setQuotaLimit(Long l) {
        this.delegate.setQuotaLimit(l);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setQuotaUsed(Long l) {
        this.delegate.setQuotaUsed(l);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setThumbnail(String str) {
        this.delegate.setThumbnail(str);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setUsername(String str) {
        this.delegate.setUsername(str);
    }
}
