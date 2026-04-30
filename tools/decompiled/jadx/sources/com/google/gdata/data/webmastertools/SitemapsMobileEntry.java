package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(Namespaces.KIND_SITEMAP_MOBILE)
public class SitemapsMobileEntry extends SitemapsEntry<SitemapsMobileEntry> {
    private static final Category CATEGORY = Namespaces.createCategory(Namespaces.KIND_SITEMAP_MOBILE);
    private static final String MOBILE_MARKUP_LANG = "sitemap-mobile-markup-language";

    public SitemapsMobileEntry() {
        getCategories().add(CATEGORY);
    }

    public SitemapsMobileEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        getCategories().add(CATEGORY);
    }

    @Override // com.google.gdata.data.webmastertools.SitemapsEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(SitemapsMobileEntry.class, ExtensionDescription.getDefaultDescription(MarkupLanguage.class));
    }

    public void setMarkupLanguage(String str) {
        MarkupLanguage markupLanguage = (MarkupLanguage) getExtension(MarkupLanguage.class);
        if (markupLanguage == null) {
            markupLanguage = new MarkupLanguage();
            setExtension(markupLanguage);
        }
        markupLanguage.setValue(str);
    }

    public String getMarkupLanguage() {
        MarkupLanguage markupLanguage = (MarkupLanguage) getExtension(MarkupLanguage.class);
        if (markupLanguage == null) {
            return null;
        }
        return markupLanguage.getValue();
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() throws IllegalStateException {
        super.validate();
        if (getMarkupLanguage() == null) {
            throw new IllegalStateException("sitemap-mobile-markup-language is not set");
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitemapsMobileEntry.MOBILE_MARKUP_LANG, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class MarkupLanguage extends ValueConstruct {
        public MarkupLanguage() {
            super(Namespaces.WT_NAMESPACE, SitemapsMobileEntry.MOBILE_MARKUP_LANG, null);
        }
    }
}
