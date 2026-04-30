package com.google.gdata.data.photos;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.util.ServiceException;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/photos/2007#user")
public class UserEntry extends GphotoEntry<UserEntry> implements AtomData, UserData {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#user");
    public static final String KIND = "http://schemas.google.com/photos/2007#user";

    public UserEntry() {
        getCategories().add(CATEGORY);
    }

    public UserEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.photos.GphotoEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(UserEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(UserEntry.class, GphotoMaxPhotos.class);
            extensionProfile.declare(UserEntry.class, GphotoNickname.class);
            extensionProfile.declare(UserEntry.class, GphotoQuotaLimit.class);
            extensionProfile.declare(UserEntry.class, GphotoQuotaUsed.class);
            extensionProfile.declare(UserEntry.class, GphotoThumbnail.class);
            extensionProfile.declare(UserEntry.class, GphotoUsername.class);
        }
    }

    public GphotoMaxPhotos getMaxPhotosExt() {
        return (GphotoMaxPhotos) getExtension(GphotoMaxPhotos.class);
    }

    public void setMaxPhotosExt(GphotoMaxPhotos gphotoMaxPhotos) {
        if (gphotoMaxPhotos == null) {
            removeExtension(GphotoMaxPhotos.class);
        } else {
            setExtension(gphotoMaxPhotos);
        }
    }

    public boolean hasMaxPhotosExt() {
        return hasExtension(GphotoMaxPhotos.class);
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

    public GphotoQuotaLimit getQuotaLimitExt() {
        return (GphotoQuotaLimit) getExtension(GphotoQuotaLimit.class);
    }

    public void setQuotaLimitExt(GphotoQuotaLimit gphotoQuotaLimit) {
        if (gphotoQuotaLimit == null) {
            removeExtension(GphotoQuotaLimit.class);
        } else {
            setExtension(gphotoQuotaLimit);
        }
    }

    public boolean hasQuotaLimitExt() {
        return hasExtension(GphotoQuotaLimit.class);
    }

    public GphotoQuotaUsed getQuotaUsedExt() {
        return (GphotoQuotaUsed) getExtension(GphotoQuotaUsed.class);
    }

    public void setQuotaUsedExt(GphotoQuotaUsed gphotoQuotaUsed) {
        if (gphotoQuotaUsed == null) {
            removeExtension(GphotoQuotaUsed.class);
        } else {
            setExtension(gphotoQuotaUsed);
        }
    }

    public boolean hasQuotaUsedExt() {
        return hasExtension(GphotoQuotaUsed.class);
    }

    public GphotoThumbnail getThumbnailExt() {
        return (GphotoThumbnail) getExtension(GphotoThumbnail.class);
    }

    public void setThumbnailExt(GphotoThumbnail gphotoThumbnail) {
        if (gphotoThumbnail == null) {
            removeExtension(GphotoThumbnail.class);
        } else {
            setExtension(gphotoThumbnail);
        }
    }

    public boolean hasThumbnailExt() {
        return hasExtension(GphotoThumbnail.class);
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
        return "{UserEntry " + super.toString() + "}";
    }

    public UserFeed getFeed(String... strArr) throws IOException, ServiceException {
        return (UserFeed) getFeed(UserFeed.class, strArr);
    }

    @Override // com.google.gdata.data.photos.UserData
    public Integer getMaxPhotos() {
        GphotoMaxPhotos maxPhotosExt = getMaxPhotosExt();
        if (maxPhotosExt == null) {
            return null;
        }
        return maxPhotosExt.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getNickname() {
        GphotoNickname nicknameExt = getNicknameExt();
        if (nicknameExt == null) {
            return null;
        }
        return nicknameExt.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public Long getQuotaLimit() {
        GphotoQuotaLimit quotaLimitExt = getQuotaLimitExt();
        if (quotaLimitExt == null) {
            return null;
        }
        return quotaLimitExt.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public Long getQuotaUsed() {
        GphotoQuotaUsed quotaUsedExt = getQuotaUsedExt();
        if (quotaUsedExt == null) {
            return null;
        }
        return quotaUsedExt.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getThumbnail() {
        GphotoThumbnail thumbnailExt = getThumbnailExt();
        if (thumbnailExt == null) {
            return null;
        }
        return thumbnailExt.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getUsername() {
        GphotoUsername usernameExt = getUsernameExt();
        if (usernameExt == null) {
            return null;
        }
        return usernameExt.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setMaxPhotos(Integer num) {
        GphotoMaxPhotos gphotoMaxPhotos = null;
        if (num != null) {
            gphotoMaxPhotos = new GphotoMaxPhotos(num);
        }
        setMaxPhotosExt(gphotoMaxPhotos);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setNickname(String str) {
        GphotoNickname gphotoNickname = null;
        if (str != null) {
            gphotoNickname = new GphotoNickname(str);
        }
        setNicknameExt(gphotoNickname);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setQuotaLimit(Long l) {
        GphotoQuotaLimit gphotoQuotaLimit = null;
        if (l != null) {
            gphotoQuotaLimit = new GphotoQuotaLimit(l);
        }
        setQuotaLimitExt(gphotoQuotaLimit);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setQuotaUsed(Long l) {
        GphotoQuotaUsed gphotoQuotaUsed = null;
        if (l != null) {
            gphotoQuotaUsed = new GphotoQuotaUsed(l);
        }
        setQuotaUsedExt(gphotoQuotaUsed);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setThumbnail(String str) {
        GphotoThumbnail gphotoThumbnail = null;
        if (str != null) {
            gphotoThumbnail = new GphotoThumbnail(str);
        }
        setThumbnailExt(gphotoThumbnail);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setUsername(String str) {
        GphotoUsername gphotoUsername = null;
        if (str != null) {
            gphotoUsername = new GphotoUsername(str);
        }
        setUsernameExt(gphotoUsername);
    }
}
