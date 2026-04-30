package com.google.gdata.client.projecthosting;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.data.projecthosting.IssueCommentsFeed;
import com.google.gdata.data.projecthosting.IssuesFeed;
import com.google.gdata.data.projecthosting.ProjectsFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class ProjectHostingService extends GoogleService {
    public static final String PROJECTHOSTING_SERVICE = "code";
    public static final String PROJECTHOSTING_SERVICE_VERSION = "GProjectHosting-Java/" + ProjectHostingService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(ProjectHostingService.class, Versions.V1);

    public final class Versions {
        public static final Version V1 = new Version(ProjectHostingService.class, "1.0", Service.Versions.V2_1);

        private Versions() {
        }
    }

    public ProjectHostingService(String str) {
        super(PROJECTHOSTING_SERVICE, str);
        declareExtensions();
    }

    public ProjectHostingService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public ProjectHostingService(String str, String str2, String str3) {
        super(PROJECTHOSTING_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return PROJECTHOSTING_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(ProjectHostingService.class);
    }

    private void declareExtensions() {
        new IssueCommentsFeed().declareExtensions(this.extProfile);
        new IssuesFeed().declareExtensions(this.extProfile);
        new ProjectsFeed().declareExtensions(this.extProfile);
    }
}
