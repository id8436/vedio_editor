package com.google.gdata.data.photos.impl;

import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.photos.CommentData;
import com.google.gdata.data.photos.GphotoAlbumId;
import com.google.gdata.data.photos.GphotoPhotoId;

/* JADX INFO: loaded from: classes3.dex */
public class CommentDataImpl extends GphotoDataImpl implements CommentData {
    public CommentDataImpl(ExtensionPoint extensionPoint) {
        super(extensionPoint);
    }

    @Override // com.google.gdata.data.photos.impl.GphotoDataImpl, com.google.gdata.data.photos.Extensible
    public void declareExtensions(ExtensionProfile extensionProfile) {
        declare(extensionProfile, GphotoAlbumId.getDefaultDescription(false, false));
        declare(extensionProfile, GphotoPhotoId.getDefaultDescription(false, false));
    }

    @Override // com.google.gdata.data.photos.CommentData
    public String getAlbumId() {
        return getSimpleValue(GphotoAlbumId.class);
    }

    @Override // com.google.gdata.data.photos.CommentData
    public void setAlbumId(Long l) {
        if (l != null) {
            setExtension(new GphotoAlbumId(l.toString()));
        } else {
            removeExtension(GphotoAlbumId.class);
        }
    }

    @Override // com.google.gdata.data.photos.CommentData
    public void setAlbumId(String str) {
        if (str != null) {
            setExtension(new GphotoAlbumId(str));
        } else {
            removeExtension(GphotoAlbumId.class);
        }
    }

    @Override // com.google.gdata.data.photos.CommentData
    public String getPhotoId() {
        return getSimpleValue(GphotoPhotoId.class);
    }

    @Override // com.google.gdata.data.photos.CommentData
    public void setPhotoId(Long l) {
        if (l != null) {
            setExtension(new GphotoPhotoId(l.toString()));
        } else {
            removeExtension(GphotoPhotoId.class);
        }
    }

    @Override // com.google.gdata.data.photos.CommentData
    public void setPhotoId(String str) {
        if (str != null) {
            setExtension(new GphotoPhotoId(str));
        } else {
            removeExtension(GphotoPhotoId.class);
        }
    }
}
