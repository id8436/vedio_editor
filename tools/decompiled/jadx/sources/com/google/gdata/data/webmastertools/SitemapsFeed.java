package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class SitemapsFeed extends BaseFeed<SitemapsFeed, SitemapsEntry> {
    private static final Category CATEGORY = Namespaces.createCategory(Namespaces.KIND_SITEMAPS_FEED);

    public SitemapsFeed() {
        super(SitemapsEntry.class);
        getCategories().add(CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(SitemapsFeed.class, ExtensionDescription.getDefaultDescription(SitemapMobile.class));
        extensionProfile.declare(SitemapsFeed.class, ExtensionDescription.getDefaultDescription(SitemapNews.class));
        extensionProfile.declareAdditionalNamespace(Namespaces.WT_NAMESPACE);
    }

    public SitemapMobile getSitemapMobile() {
        return (SitemapMobile) getExtension(SitemapMobile.class);
    }

    public void setSitemapMobile(SitemapMobile sitemapMobile) {
        setExtension(sitemapMobile);
    }

    public SitemapNews getSitemapNews() {
        return (SitemapNews) getExtension(SitemapNews.class);
    }

    public void setSitemapNews(SitemapNews sitemapNews) {
        setExtension(sitemapNews);
    }
}
