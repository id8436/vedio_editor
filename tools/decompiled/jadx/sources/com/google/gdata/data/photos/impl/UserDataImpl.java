package com.google.gdata.data.photos.impl;

import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.photos.GphotoMaxPhotos;
import com.google.gdata.data.photos.GphotoNickname;
import com.google.gdata.data.photos.GphotoQuotaLimit;
import com.google.gdata.data.photos.GphotoQuotaUsed;
import com.google.gdata.data.photos.GphotoThumbnail;
import com.google.gdata.data.photos.GphotoUsername;
import com.google.gdata.data.photos.UserData;

/* JADX INFO: loaded from: classes3.dex */
public class UserDataImpl extends GphotoDataImpl implements UserData {
    public UserDataImpl(ExtensionPoint extensionPoint) {
        super(extensionPoint);
    }

    @Override // com.google.gdata.data.photos.impl.GphotoDataImpl, com.google.gdata.data.photos.Extensible
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        declare(extensionProfile, GphotoUsername.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoNickname.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoThumbnail.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoQuotaUsed.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoQuotaLimit.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoMaxPhotos.getDefaultDescription(false, false));
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getUsername() {
        return getSimpleValue(GphotoUsername.class);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setUsername(String str) {
        if (str != null) {
            setExtension(new GphotoUsername(str));
        } else {
            removeExtension(GphotoUsername.class);
        }
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getNickname() {
        return getSimpleValue(GphotoNickname.class);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setNickname(String str) {
        if (str != null) {
            setExtension(new GphotoNickname(str));
        } else {
            removeExtension(GphotoNickname.class);
        }
    }

    @Override // com.google.gdata.data.photos.UserData
    public String getThumbnail() {
        return getSimpleValue(GphotoThumbnail.class);
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setThumbnail(String str) {
        if (str != null) {
            setExtension(new GphotoThumbnail(str));
        } else {
            removeExtension(GphotoThumbnail.class);
        }
    }

    @Override // com.google.gdata.data.photos.UserData
    public Long getQuotaUsed() {
        GphotoQuotaUsed gphotoQuotaUsed = (GphotoQuotaUsed) getExtension(GphotoQuotaUsed.class);
        if (gphotoQuotaUsed == null) {
            return null;
        }
        return gphotoQuotaUsed.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setQuotaUsed(Long l) {
        if (l != null) {
            setExtension(new GphotoQuotaUsed(l));
        } else {
            removeExtension(GphotoQuotaUsed.class);
        }
    }

    @Override // com.google.gdata.data.photos.UserData
    public Long getQuotaLimit() {
        GphotoQuotaLimit gphotoQuotaLimit = (GphotoQuotaLimit) getExtension(GphotoQuotaLimit.class);
        if (gphotoQuotaLimit == null) {
            return null;
        }
        return gphotoQuotaLimit.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setQuotaLimit(Long l) {
        if (l != null) {
            setExtension(new GphotoQuotaLimit(l));
        } else {
            removeExtension(GphotoQuotaLimit.class);
        }
    }

    @Override // com.google.gdata.data.photos.UserData
    public Integer getMaxPhotos() {
        GphotoMaxPhotos gphotoMaxPhotos = (GphotoMaxPhotos) getExtension(GphotoMaxPhotos.class);
        if (gphotoMaxPhotos == null) {
            return null;
        }
        return gphotoMaxPhotos.getValue();
    }

    @Override // com.google.gdata.data.photos.UserData
    public void setMaxPhotos(Integer num) {
        if (num != null) {
            setExtension(new GphotoMaxPhotos(num));
        } else {
            removeExtension(GphotoMaxPhotos.class);
        }
    }
}
