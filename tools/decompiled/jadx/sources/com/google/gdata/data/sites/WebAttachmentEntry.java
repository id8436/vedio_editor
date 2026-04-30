package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.sites.SitesLink;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(WebAttachmentEntry.KIND)
public class WebAttachmentEntry extends BaseContentEntry<WebAttachmentEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#webattachment";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "webattachment");

    public WebAttachmentEntry() {
        getCategories().add(CATEGORY);
    }

    public WebAttachmentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public Link getParentLink() {
        return getLink(SitesLink.Rel.PARENT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{WebAttachmentEntry " + super.toString() + "}";
    }
}
