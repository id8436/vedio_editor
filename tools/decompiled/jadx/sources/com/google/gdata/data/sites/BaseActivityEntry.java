package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.dublincore.Publisher;
import com.google.gdata.data.sites.BaseActivityEntry;
import com.google.gdata.data.sites.SitesLink;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseActivityEntry<E extends BaseActivityEntry<E>> extends BaseEntry<E> {
    public BaseActivityEntry() {
    }

    public BaseActivityEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(BaseActivityEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(BaseActivityEntry.class, SitesLink.getDefaultDescription(false, true));
            extensionProfile.declare(BaseActivityEntry.class, Publisher.class);
        }
    }

    public Publisher getPublisher() {
        return (Publisher) getExtension(Publisher.class);
    }

    public void setPublisher(Publisher publisher) {
        if (publisher == null) {
            removeExtension(Publisher.class);
        } else {
            setExtension(publisher);
        }
    }

    public boolean hasPublisher() {
        return hasExtension(Publisher.class);
    }

    public Link getCurrentLink() {
        return getLink(SitesLink.Rel.CURRENT, ILink.Type.ATOM);
    }

    public Link getRevisionLink() {
        return getLink(SitesLink.Rel.REVISION, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{BaseActivityEntry " + super.toString() + "}";
    }
}
