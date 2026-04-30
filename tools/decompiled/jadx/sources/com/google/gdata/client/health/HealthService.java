package com.google.gdata.client.health;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.health.ProfileFeed;
import com.google.gdata.data.health.RegisterFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class HealthService extends GoogleService {
    public static final String HEALTH_SERVICE = "health";
    public static final String HEALTH_SERVICE_VERSION = "GHealth-Java/" + HealthService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(HealthService.class, Versions.V2);

    public final class Versions {
        public static final Version V1 = new Version(HealthService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(HealthService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
    }

    public HealthService(String str) {
        super(HEALTH_SERVICE, str);
        declareExtensions();
    }

    public HealthService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public HealthService(String str, String str2, String str3) {
        super(HEALTH_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return HEALTH_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(HealthService.class);
    }

    private void declareExtensions() {
        new ProfileFeed().declareExtensions(this.extProfile);
        new RegisterFeed().declareExtensions(this.extProfile);
    }
}
