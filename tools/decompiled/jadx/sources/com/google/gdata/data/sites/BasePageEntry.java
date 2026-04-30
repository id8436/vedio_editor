package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.sites.BasePageEntry;
import com.google.gdata.data.sites.SitesLink;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BasePageEntry<E extends BasePageEntry<E>> extends BaseContentEntry<E> {
    public BasePageEntry() {
    }

    public BasePageEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(BasePageEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(BasePageEntry.class, PageName.class);
        }
    }

    public PageName getPageName() {
        return (PageName) getExtension(PageName.class);
    }

    public void setPageName(PageName pageName) {
        if (pageName == null) {
            removeExtension(PageName.class);
        } else {
            setExtension(pageName);
        }
    }

    public boolean hasPageName() {
        return hasExtension(PageName.class);
    }

    public Link getTemplateLink() {
        return getLink(SitesLink.Rel.TEMPLATE, ILink.Type.ATOM);
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry, com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    @Override // com.google.gdata.data.sites.BaseContentEntry
    public String toString() {
        return "{BasePageEntry " + super.toString() + "}";
    }
}
