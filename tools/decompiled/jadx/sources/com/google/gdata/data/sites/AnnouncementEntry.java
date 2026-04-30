package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.sites.SitesLink;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(AnnouncementEntry.KIND)
public class AnnouncementEntry extends BasePageEntry<AnnouncementEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#announcement";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "announcement");

    public AnnouncementEntry() {
        getCategories().add(CATEGORY);
    }

    public AnnouncementEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
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

    @Override // com.google.gdata.data.sites.BasePageEntry, com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{AnnouncementEntry " + super.toString() + "}";
    }
}
