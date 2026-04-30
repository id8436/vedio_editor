package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.extensions.FeedLink;
import com.google.gdata.data.sites.SitesLink;
import com.google.gdata.util.common.xml.XmlNamespace;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(AnnouncementsPageEntry.KIND)
public class AnnouncementsPageEntry extends BasePageEntry<AnnouncementsPageEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#announcementspage";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "announcementspage");

    public AnnouncementsPageEntry() {
        getCategories().add(CATEGORY);
    }

    public AnnouncementsPageEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BasePageEntry, com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(AnnouncementsPageEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(AnnouncementsPageEntry.class, new ExtensionDescription(FeedLink.class, new XmlNamespace("gd", "http://schemas.google.com/g/2005"), "feedLink", true, false, false));
            new FeedLink().declareExtensions(extensionProfile);
        }
    }

    public FeedLink getFeedLink() {
        return (FeedLink) getExtension(FeedLink.class);
    }

    public void setFeedLink(FeedLink feedLink) {
        if (feedLink == null) {
            removeExtension(FeedLink.class);
        } else {
            setExtension(feedLink);
        }
    }

    public boolean hasFeedLink() {
        return hasExtension(FeedLink.class);
    }

    public Link getAtomAttachmentsLink() {
        return getLink(SitesLink.Rel.ATTACHMENTS, ILink.Type.ATOM);
    }

    public Link getAtomRepliesLink() {
        return getLink("replies", ILink.Type.ATOM);
    }

    public Link getHtmlAttachmentsLink() {
        return getLink(SitesLink.Rel.ATTACHMENTS, ILink.Type.HTML);
    }

    public Link getHtmlRepliesLink() {
        return getLink("replies", ILink.Type.HTML);
    }

    public Link getParentLink() {
        return getLink(SitesLink.Rel.PARENT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.sites.BasePageEntry, com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    @Override // com.google.gdata.data.sites.BasePageEntry, com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{AnnouncementsPageEntry " + super.toString() + "}";
    }
}
