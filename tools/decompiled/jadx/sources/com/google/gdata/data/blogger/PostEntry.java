package com.google.gdata.data.blogger;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.media.mediarss.MediaRssNamespace;
import com.google.gdata.data.media.mediarss.MediaThumbnail;
import com.google.gdata.data.threading.Total;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
public class PostEntry extends BaseEntry<PostEntry> {
    public PostEntry() {
    }

    public PostEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(PostEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(PostEntry.class, new ExtensionDescription(MediaThumbnail.class, new XmlNamespace("media", MediaRssNamespace.URI), "thumbnail", false, false, false));
            extensionProfile.declare(PostEntry.class, Total.class);
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

    public boolean hasThumbnail() {
        return hasExtension(MediaThumbnail.class);
    }

    public Total getTotal() {
        return (Total) getExtension(Total.class);
    }

    public void setTotal(Total total) {
        if (total == null) {
            removeExtension(Total.class);
        } else {
            setExtension(total);
        }
    }

    public boolean hasTotal() {
        return hasExtension(Total.class);
    }

    public Link getEnclosureLink() {
        return getLink(ILink.Rel.ENCLOSURE, (String) null);
    }

    public Link getEntryPostLink() {
        return getLink(ILink.Rel.ENTRY_POST, ILink.Type.ATOM);
    }

    public Link getFeedLink() {
        return getLink(ILink.Rel.FEED, ILink.Type.ATOM);
    }

    public Link getRepliesHtmlLink() {
        return getLink("replies", ILink.Type.HTML);
    }

    public Link getRepliesLink() {
        return getLink("replies", ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{PostEntry " + super.toString() + "}";
    }
}
