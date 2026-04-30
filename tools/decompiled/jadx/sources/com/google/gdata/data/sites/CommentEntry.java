package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Kind;
import com.google.gdata.data.Link;
import com.google.gdata.data.sites.SitesLink;
import com.google.gdata.data.threading.InReplyTo;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(CommentEntry.KIND)
public class CommentEntry extends BaseContentEntry<CommentEntry> {
    public static final String KIND = "http://schemas.google.com/sites/2008#comment";
    public static final Category CATEGORY = new Category("http://schemas.google.com/g/2005#kind", KIND, "comment");

    public CommentEntry() {
        getCategories().add(CATEGORY);
    }

    public CommentEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(CommentEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(CommentEntry.class, InReplyTo.getDefaultDescription(true, false));
        }
    }

    public InReplyTo getInReplyTo() {
        return (InReplyTo) getExtension(InReplyTo.class);
    }

    public void setInReplyTo(InReplyTo inReplyTo) {
        if (inReplyTo == null) {
            removeExtension(InReplyTo.class);
        } else {
            setExtension(inReplyTo);
        }
    }

    public boolean hasInReplyTo() {
        return hasExtension(InReplyTo.class);
    }

    public Link getParentLink() {
        return getLink(SitesLink.Rel.PARENT, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{CommentEntry " + super.toString() + "}";
    }
}
