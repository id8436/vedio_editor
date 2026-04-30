package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.Category;
import com.google.gdata.data.ExtensionProfile;

/* JADX INFO: loaded from: classes3.dex */
public class SitesFeed extends BaseFeed<SitesFeed, SitesEntry> {
    private static final Category CATEGORY = Namespaces.createCategory(Namespaces.KIND_SITES_FEED);

    public SitesFeed() {
        super(SitesEntry.class);
        getCategories().add(CATEGORY);
    }

    @Override // com.google.gdata.data.BaseFeed, com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declareAdditionalNamespace(Namespaces.WT_NAMESPACE);
    }
}
