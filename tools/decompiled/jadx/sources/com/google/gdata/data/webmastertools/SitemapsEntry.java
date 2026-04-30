package com.google.gdata.data.webmastertools;

import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionDescription;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.ValueConstruct;
import com.google.gdata.data.webmastertools.SitemapsEntry;

/* JADX INFO: loaded from: classes3.dex */
public class SitemapsEntry<E extends SitemapsEntry<E>> extends BaseEntry<E> {
    private static final String SITEMAP_DOWNLOADED = "sitemap-last-downloaded";
    private static final String SITEMAP_STATUS = "sitemap-status";
    private static final String SITEMAP_URL_COUNT = "sitemap-url-count";

    public SitemapsEntry() {
    }

    public SitemapsEntry(BaseEntry<?> baseEntry) {
        super(baseEntry);
    }

    @Override // com.google.gdata.data.ExtensionPoint, com.google.gdata.data.Kind.Adaptor
    public void declareExtensions(ExtensionProfile extensionProfile) {
        super.declareExtensions(extensionProfile);
        extensionProfile.declare(SitemapsEntry.class, ExtensionDescription.getDefaultDescription(SitemapStatus.class));
        extensionProfile.declare(SitemapsEntry.class, ExtensionDescription.getDefaultDescription(LastDownloaded.class));
        extensionProfile.declare(SitemapsEntry.class, ExtensionDescription.getDefaultDescription(UrlCount.class));
        extensionProfile.setAutoExtending(true);
    }

    public void setSitemapStatus(String str) {
        SitemapStatus sitemapStatus = (SitemapStatus) getExtension(SitemapStatus.class);
        if (sitemapStatus == null) {
            sitemapStatus = new SitemapStatus();
            setExtension(sitemapStatus);
        }
        sitemapStatus.setValue(str);
    }

    public String getSitemapStatus() {
        SitemapStatus sitemapStatus = (SitemapStatus) getExtension(SitemapStatus.class);
        if (sitemapStatus == null) {
            return null;
        }
        return sitemapStatus.getValue();
    }

    public void setSitemapDownloadTime(DateTime dateTime) {
        LastDownloaded lastDownloaded = (LastDownloaded) getExtension(LastDownloaded.class);
        if (lastDownloaded == null) {
            lastDownloaded = new LastDownloaded();
            setExtension(lastDownloaded);
        }
        lastDownloaded.setDateTime(dateTime);
    }

    public DateTime getSitemapDownloadTime() {
        LastDownloaded lastDownloaded = (LastDownloaded) getExtension(LastDownloaded.class);
        if (lastDownloaded == null) {
            return null;
        }
        return lastDownloaded.getDateTime();
    }

    public void setSitemapUrlCount(int i) {
        UrlCount urlCount = (UrlCount) getExtension(UrlCount.class);
        if (urlCount == null) {
            urlCount = new UrlCount();
            setExtension(urlCount);
        }
        urlCount.setIntValue(i);
    }

    public int getSitemapUrlCount() {
        UrlCount urlCount = (UrlCount) getExtension(UrlCount.class);
        if (urlCount == null) {
            return 0;
        }
        return urlCount.getIntValue();
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitemapsEntry.SITEMAP_STATUS, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class SitemapStatus extends ValueConstruct {
        public SitemapStatus() {
            super(Namespaces.WT_NAMESPACE, SitemapsEntry.SITEMAP_STATUS, null);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitemapsEntry.SITEMAP_DOWNLOADED, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class LastDownloaded extends DateTimeValueConstruct {
        public LastDownloaded() {
            super(SitemapsEntry.SITEMAP_DOWNLOADED);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @ExtensionDescription.Default(localName = SitemapsEntry.SITEMAP_URL_COUNT, nsAlias = Namespaces.WT_ALIAS, nsUri = Namespaces.WT)
    public class UrlCount extends IntValueConstruct {
        public UrlCount() {
            super(SitemapsEntry.SITEMAP_URL_COUNT);
        }
    }
}
