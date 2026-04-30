package com.google.gdata.client.codesearch;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.codesearch.CodeSearchFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class CodeSearchService extends GoogleService {
    public static final String CODESEARCH_SERVICE = "codesearch";
    public static final String CODESEARCH_SERVICE_VERSION = "CodeSearch-Java/" + CodeSearchService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(CodeSearchService.class, Versions.V2);

    public final class Versions {
        public static final Version V1 = new Version(CodeSearchService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(CodeSearchService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
    }

    public CodeSearchService(String str) {
        super(CODESEARCH_SERVICE, str, "https", AppsForYourDomainService.DOMAIN_NAME);
        declareExtensions();
    }

    public CodeSearchService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public CodeSearchService(String str, String str2, String str3) {
        super(CODESEARCH_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return CODESEARCH_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(CodeSearchService.class);
    }

    private void declareExtensions() {
        new CodeSearchFeed().declareExtensions(this.extProfile);
    }
}
