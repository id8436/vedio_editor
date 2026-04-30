package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.Kind;
import com.google.gdata.data.ValueConstruct;

/* JADX INFO: loaded from: classes3.dex */
@Kind.Term(Namespaces.KIND_SITEMAP_NEWS)
public class SitemapsNewsEntry extends SitemapsEntry<SitemapsNewsEntry> {
    private static final Category CATEGORY = Namespaces.createCategory(Namespaces.KIND_SITEMAP_NEWS);
    private static final String NEWS_PUBLICATION_LABEL = "sitemap-news-publication-label";

    public SitemapsNewsEntry() {
        getCategories().add(CATEGORY);
    }

    public SitemapsNewsEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
        getCategories().add(CATEGORY);
    }

    @Override // com.google.gdata.data.webmastertools.SitemapsEntry, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(SitemapsNewsEntry.class, ExtensionDescription.getDefaultDescription(PublicationLabel.class));
    }

    public void setPublicationLabel(String str) {
        PublicationLabel publicationLabel = (PublicationLabel) getExtension(PublicationLabel.class);
        if (publicationLabel == null) {
            publicationLabel = new PublicationLabel();
            setExtension(publicationLabel);
        }
        publicationLabel.setValue(str);
    }

    public String getPublicationLabel() {
        PublicationLabel publicationLabel = (PublicationLabel) getExtension(PublicationLabel.class);
        if (publicationLabel == null) {
            return null;
        }
        return publicationLabel.getValue();
    }

    @Override // com.google.gdata.data.AbstractExtension
    protected void validate() throws IllegalStateException {
        super.validate();
        if (getPublicationLabel() == null) {
            throw new IllegalStateException("sitemap-news-publication-label is not set");
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitemapsNewsEntry.NEWS_PUBLICATION_LABEL, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class PublicationLabel extends ValueConstruct {
        public PublicationLabel() {
            super(Namespaces.WT_NAMESPACE, SitemapsNewsEntry.NEWS_PUBLICATION_LABEL, null);
        }
    }
}
