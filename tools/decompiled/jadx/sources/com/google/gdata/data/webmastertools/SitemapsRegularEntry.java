package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(Namespaces.KIND_SITEMAP_REGULAR)
public class SitemapsRegularEntry extends SitemapsEntry<SitemapsRegularEntry> {
    private static final Category CATEGORY = Namespaces.createCategory(Namespaces.KIND_SITEMAP_REGULAR);
    private static final String SITEMAP_TYPE = "sitemap-type";

    public SitemapsRegularEntry() {
        getCategories().add(CATEGORY);
    }

    public SitemapsRegularEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        getCategories().add(CATEGORY);
    }

    @Override // com.google.gdata.data.webmastertools.SitemapsEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(SitemapsRegularEntry.class, ExtensionDescription.getDefaultDescription(SitemapType.class));
    }

    public void setSitemapType(String str) {
        SitemapType sitemapType = (SitemapType) getExtension(SitemapType.class);
        if (sitemapType == null) {
            sitemapType = new SitemapType();
            setExtension(sitemapType);
        }
        sitemapType.setValue(str);
    }

    public String getSitemapType() {
        SitemapType sitemapType = (SitemapType) getExtension(SitemapType.class);
        if (sitemapType == null) {
            return null;
        }
        return sitemapType.getValue();
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() throws IllegalStateException {
        super.validate();
        if (getSitemapType() == null) {
            throw new IllegalStateException("sitemap-type is not set");
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitemapsRegularEntry.SITEMAP_TYPE, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class SitemapType extends ValueConstruct {
        public SitemapType() {
            super(Namespaces.WT_NAMESPACE, SitemapsRegularEntry.SITEMAP_TYPE, null);
        }
    }
}
