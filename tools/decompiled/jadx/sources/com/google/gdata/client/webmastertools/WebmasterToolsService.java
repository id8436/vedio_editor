package com.google.gdata.client.webmastertools;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.webmastertools.CrawlIssuesFeed;
import com.google.gdata.data.webmastertools.KeywordsFeed;
import com.google.gdata.data.webmastertools.MessagesFeed;
import com.google.gdata.data.webmastertools.SitemapsFeed;
import com.google.gdata.data.webmastertools.SitesFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class WebmasterToolsService extends GoogleService {
    public static final String WEBMASTERTOOLS_SERVICE = "sitemaps";
    public static final String WEBMASTERTOOLS_SERVICE_VERSION = "GWebmasterTools-Java/" + WebmasterToolsService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(WebmasterToolsService.class, Versions.V2);

    public final class Versions {
        public static final Version V1 = new Version(WebmasterToolsService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(WebmasterToolsService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);

        private Versions() {
        }
    }

    public WebmasterToolsService(String str) {
        super(WEBMASTERTOOLS_SERVICE, str);
        declareExtensions();
    }

    public WebmasterToolsService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public WebmasterToolsService(String str, String str2, String str3) {
        super(WEBMASTERTOOLS_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return WEBMASTERTOOLS_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(WebmasterToolsService.class);
    }

    private void declareExtensions() {
        new CrawlIssuesFeed().declareExtensions(this.extProfile);
        new KeywordsFeed().declareExtensions(this.extProfile);
        new MessagesFeed().declareExtensions(this.extProfile);
        new SitemapsFeed().declareExtensions(this.extProfile);
        new SitesFeed().declareExtensions(this.extProfile);
    }
}
