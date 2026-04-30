package com.google.gdata.data.youtube;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Extension;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionPoint;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.OutOfLineContent;
import com.google.gdata.data.extensions.FeedLink;
import com.google.gdata.data.media.mediarss.MediaThumbnail;

/* JADX INFO: loaded from: classes.dex */
public abstract class FeedLinkEntry<T extends BaseEntry> extends BaseEntry<T> {
    FeedLinkEntry() {
    }

    FeedLinkEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public FeedLink<?> getFeedLink() {
        return (FeedLink) getExtension(FeedLink.class);
    }

    public void setFeedLink(FeedLink<?> feedLink) {
        if (feedLink == null) {
            removeExtension(FeedLink.class);
        } else {
            setExtension(feedLink);
        }
    }

    public String getFeedUrl() {
        if (getContent() instanceof OutOfLineContent) {
            return ((OutOfLineContent) getContent()).getUri();
        }
        FeedLink<?> feedLink = getFeedLink();
        if (feedLink != null) {
            return feedLink.getHref();
        }
        return null;
    }

    public Integer getCountHint() {
        YtCountHint ytCountHint = (YtCountHint) getExtension(YtCountHint.class);
        if (ytCountHint != null) {
            return Integer.valueOf(ytCountHint.getValue());
        }
        FeedLink<?> feedLink = getFeedLink();
        if (feedLink != null) {
            return feedLink.getCountHint();
        }
        return null;
    }

    public void setCountHint(Integer num) {
        if (num == null) {
            removeExtension(YtCountHint.class);
        } else {
            setExtension(new YtCountHint(num.intValue()));
        }
    }

    public MediaThumbnail getThumbnail() {
        return (MediaThumbnail) getExtension(MediaThumbnail.class);
    }

    public void setThumbnail(MediaThumbnail mediaThumbnail) {
        if (mediaThumbnail == null) {
            removeExtension(MediaThumbnail.class);
        } else {
            setExtension(mediaThumbnail);
        }
    }

    @Deprecated
    public String getDescription() {
        YtDescription ytDescription = (YtDescription) getExtension(YtDescription.class);
        if (ytDescription == null) {
            return null;
        }
        return ytDescription.getContent();
    }

    @Deprecated
    public void setDescription(String str) {
        if (str == null) {
            removeExtension(YtDescription.class);
        } else {
            setExtension(new YtDescription(str));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        Class<?> cls = getClass();
        ExtensionDescription defaultDescription = MediaThumbnail.getDefaultDescription();
        defaultDescription.setRepeatable(false);
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, defaultDescription);
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, (Class<? extends Extension>) YtPrivate.class);
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, (Class<? extends Extension>) YtDescription.class);
        ExtensionDescription defaultDescription2 = FeedLink.getDefaultDescription();
        defaultDescription2.setRepeatable(false);
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, defaultDescription2);
        extensionProfile.declare((Class<? extends ExtensionPoint>) cls, (Class<? extends Extension>) YtCountHint.class);
        extensionProfile.declareArbitraryXmlExtension(cls);
    }
}
