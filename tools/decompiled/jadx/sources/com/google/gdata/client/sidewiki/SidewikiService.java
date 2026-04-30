package com.google.gdata.client.sidewiki;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.sidewiki.SidewikiEntryFeed;
import com.google.gdata.data.sidewiki.SidewikiUserFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class SidewikiService extends GoogleService {
    public static final String SIDEWIKI_SERVICE = "annotateweb";
    public static final String SIDEWIKI_SERVICE_VERSION = "GSidewiki-Java/" + SidewikiService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(SidewikiService.class, Versions.V2);

    public final class Versions {
        public static final Version V1 = new Version(SidewikiService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(SidewikiService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version V2_1 = new Version(SidewikiService.class, "2.1", Service.Versions.V2);

        private Versions() {
        }
    }

    public SidewikiService(String str) {
        super(SIDEWIKI_SERVICE, str);
        declareExtensions();
    }

    public SidewikiService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public SidewikiService(String str, String str2, String str3) {
        super(SIDEWIKI_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return SIDEWIKI_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(SidewikiService.class);
    }

    private void declareExtensions() {
        new SidewikiEntryFeed().declareExtensions(this.extProfile);
        new SidewikiUserFeed().declareExtensions(this.extProfile);
    }
}
