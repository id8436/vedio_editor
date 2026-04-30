package com.google.gdata.data.sites;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ILink;
import com.google.gdata.data.Link;
import com.google.gdata.data.sites.SitesLink;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SiteEntry extends BaseEntry<SiteEntry> {
    public SiteEntry() {
    }

    public SiteEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        if (!extensionProfile.isDeclared(SiteEntry.class)) {
            super.declareExtensions(extensionProfile);
            extensionProfile.declare(SiteEntry.class, SitesLink.getDefaultDescription(true, true));
            extensionProfile.declare(SiteEntry.class, SiteName.class);
            extensionProfile.declare(SiteEntry.class, Theme.class);
        }
    }

    public SiteName getSiteName() {
        return (SiteName) getExtension(SiteName.class);
    }

    public void setSiteName(SiteName siteName) {
        if (siteName == null) {
            removeExtension(SiteName.class);
        } else {
            setExtension(siteName);
        }
    }

    public boolean hasSiteName() {
        return hasExtension(SiteName.class);
    }

    public Theme getTheme() {
        return (Theme) getExtension(Theme.class);
    }

    public void setTheme(Theme theme) {
        if (theme == null) {
            removeExtension(Theme.class);
        } else {
            setExtension(theme);
        }
    }

    public boolean hasTheme() {
        return hasExtension(Theme.class);
    }

    public Link getEntryPostLink() {
        return getLink(ILink.Rel.ENTRY_POST, ILink.Type.ATOM);
    }

    public Link getSourceLink() {
        return getLink(SitesLink.Rel.SOURCE, ILink.Type.ATOM);
    }

    public List<Link> getWebAddressMappingLinks() {
        return getLinks(SitesLink.Rel.WEBADDRESSMAPPING, ILink.Type.HTML);
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() {
    }

    public String toString() {
        return "{SiteEntry " + super.toString() + "}";
    }
}
