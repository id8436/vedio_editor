package com.google.gdata.data.photos;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term("http://schemas.google.com/photos/2007#comment")
public class CommentEntry extends GphotoEntry<CommentEntry> implements AtomData, CommentData {
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", "http://schemas.google.com/photos/2007#comment");
    public static final String KIND = "http://schemas.google.com/photos/2007#comment";

    public CommentEntry() {
        getCategories().add(CATEGORY);
    }

    public CommentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.photos.GphotoEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(CommentEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(CommentEntry.class, GphotoAlbumId.class);
            extensionProfile.declare(CommentEntry.class, CommentAuthor.getDefaultDescription(false, true));
            new CommentAuthor().declareExtensions(extensionProfile);
            extensionProfile.declare(CommentEntry.class, GphotoPhotoId.class);
        }
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

    public GphotoPhotoId getPhotoIdExt() {
        return (GphotoPhotoId) getExtension(GphotoPhotoId.class);
    }

    public void setPhotoIdExt(GphotoPhotoId gphotoPhotoId) {
        if (gphotoPhotoId == null) {
            removeExtension(GphotoPhotoId.class);
        } else {
            setExtension(gphotoPhotoId);
        }
    }

    public boolean hasPhotoIdExt() {
        return hasExtension(GphotoPhotoId.class);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{CommentEntry " + super.toString() + "}";
    }

    @Override // com.google.gdata.data.photos.CommentData
    public String getAlbumId() {
        GphotoAlbumId albumIdExt = getAlbumIdExt();
        if (albumIdExt == null) {
            return null;
        }
        return albumIdExt.getValue();
    }

    @Override // com.google.gdata.data.photos.CommentData
    public String getPhotoId() {
        GphotoPhotoId photoIdExt = getPhotoIdExt();
        if (photoIdExt == null) {
            return null;
        }
        return photoIdExt.getValue();
    }

    @Override // com.google.gdata.data.photos.CommentData
    public void setAlbumId(Long l) {
        GphotoAlbumId gphotoAlbumIdFrom = null;
        if (l != null) {
            gphotoAlbumIdFrom = GphotoAlbumId.from(l);
        }
        setAlbumIdExt(gphotoAlbumIdFrom);
    }

    @Override // com.google.gdata.data.photos.CommentData
    public void setAlbumId(String str) {
        GphotoAlbumId gphotoAlbumId = null;
        if (str != null) {
            gphotoAlbumId = new GphotoAlbumId(str);
        }
        setAlbumIdExt(gphotoAlbumId);
    }

    @Override // com.google.gdata.data.photos.CommentData
    public void setPhotoId(Long l) {
        GphotoPhotoId gphotoPhotoIdFrom = null;
        if (l != null) {
            gphotoPhotoIdFrom = GphotoPhotoId.from(l);
        }
        setPhotoIdExt(gphotoPhotoIdFrom);
    }

    @Override // com.google.gdata.data.photos.CommentData
    public void setPhotoId(String str) {
        GphotoPhotoId gphotoPhotoId = null;
        if (str != null) {
            gphotoPhotoId = new GphotoPhotoId(str);
        }
        setPhotoIdExt(gphotoPhotoId);
    }
}
