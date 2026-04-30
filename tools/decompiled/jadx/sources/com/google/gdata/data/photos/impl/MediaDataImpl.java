package com.google.gdata.data.photos.impl;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.media.mediarss.MediaCategory;
import com.google.gdata.data.media.mediarss.MediaContent;
import com.google.gdata.data.media.mediarss.MediaCredit;
import com.google.gdata.data.media.mediarss.MediaDescription;
import com.google.gdata.data.media.mediarss.MediaGroup;
import com.google.gdata.data.media.mediarss.MediaKeywords;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.data.media.mediarss.MediaTitle;
import com.google.gdata.data.photos.MediaData;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MediaDataImpl implements MediaData {
    private ExtensionPoint extPoint;

    public MediaDataImpl(ExtensionPoint extensionPoint) {
        this.extPoint = extensionPoint;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gdata.data.photos.Extensible
    public void declareExtensions(ExtensionProfile extensionProfile) {
        Class<?> cls = this.extPoint.getClass();
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, MediaGroup.getDefaultDescription());
        extensionProfile.declareArbitraryXmlExtension(MediaGroup.class);
        if (BaseEntry.class.isAssignableFrom(cls)) {
            extensionProfile.declare((Class<? extends ExtensionPoint>) BaseEntry.class, MediaGroup.getDefaultDescription());
        }
        extensionProfile.declare((Class<? extends ExtensionPoint>) MediaGroup.class, MediaContent.getDefaultDescription(true));
        extensionProfile.declareArbitraryXmlExtension(MediaContent.class);
        extensionProfile.declare((Class<? extends ExtensionPoint>) MediaGroup.class, ExtensionDescription.getDefaultDescription(MediaTitle.class));
        extensionProfile.declare((Class<? extends ExtensionPoint>) MediaGroup.class, ExtensionDescription.getDefaultDescription(MediaDescription.class));
        extensionProfile.declare((Class<? extends ExtensionPoint>) MediaGroup.class, MediaKeywords.getDefaultDescription());
        ExtensionDescription defaultDescription = MediaThumbnail.getDefaultDescription();
        defaultDescription.setRepeatable(true);
        extensionProfile.declare((Class<? extends ExtensionPoint>) MediaGroup.class, defaultDescription);
        extensionProfile.declareArbitraryXmlExtension(MediaThumbnail.class);
        extensionProfile.declare((Class<? extends ExtensionPoint>) MediaGroup.class, ExtensionDescription.getDefaultDescription(MediaCredit.class));
    }

    @Override // com.google.gdata.data.photos.MediaData
    public MediaGroup getMediaGroup() {
        return (MediaGroup) this.extPoint.getExtension(MediaGroup.class);
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaContent> getMediaContents() {
        MediaGroup mediaGroup = getMediaGroup();
        return mediaGroup == null ? Collections.emptyList() : mediaGroup.getContents();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaCategory> getMediaCategories() {
        MediaGroup mediaGroup = getMediaGroup();
        return mediaGroup == null ? Collections.emptyList() : mediaGroup.getCategories();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaCredit> getMediaCredits() {
        MediaGroup mediaGroup = getMediaGroup();
        return mediaGroup == null ? Collections.emptyList() : mediaGroup.getCredits();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public List<MediaThumbnail> getMediaThumbnails() {
        MediaGroup mediaGroup = getMediaGroup();
        return mediaGroup == null ? Collections.emptyList() : mediaGroup.getThumbnails();
    }

    @Override // com.google.gdata.data.photos.MediaData
    public MediaKeywords getMediaKeywords() {
        MediaGroup mediaGroup = getMediaGroup();
        if (mediaGroup != null) {
            return mediaGroup.getKeywords();
        }
        return null;
    }

    @Override // com.google.gdata.data.photos.MediaData
    public void setKeywords(MediaKeywords mediaKeywords) {
        MediaGroup mediaGroup = (MediaGroup) this.extPoint.getExtension(MediaGroup.class);
        if (mediaGroup == null) {
            mediaGroup = new MediaGroup();
            this.extPoint.addExtension(mediaGroup);
        }
        mediaGroup.setKeywords(mediaKeywords);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void addExtension(Extension extension) {
        this.extPoint.addExtension(extension);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void setExtension(Extension extension) {
        this.extPoint.setExtension(extension);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void addRepeatingExtension(Extension extension) {
        this.extPoint.addRepeatingExtension(extension);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void removeExtension(Class<? extends Extension> cls) {
        this.extPoint.removeExtension(cls);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void removeExtension(Extension extension) {
        this.extPoint.removeExtension(extension);
    }

    @Override // com.google.gdata.data.photos.Extensible
    public void removeRepeatingExtension(Extension extension) {
        this.extPoint.removeRepeatingExtension(extension);
    }
}
