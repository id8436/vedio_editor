package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.sites.SitesLink;
import javax.mail.Part;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(AttachmentEntry.KIND)
public class AttachmentEntry extends BaseContentEntry<AttachmentEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#attachment";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, Part.ATTACHMENT);

    public AttachmentEntry() {
        getCategories().add(CATEGORY);
    }

    public AttachmentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    public Link getParentLink() {
        return getLink(SitesLink.Rel.PARENT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{AttachmentEntry " + super.toString() + "}";
    }
}
