package com.google.gdata.client.maps;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.acl.AclFeed;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.data.maps.FeatureFeed;
import com.google.gdata.data.maps.MapFeed;
import com.google.gdata.data.maps.VersionFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class MapsService extends MediaService {
    public static final String MAPS_SERVICE = "local";
    public static final String MAPS_SERVICE_VERSION = "GMaps-Java/" + MapsService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(MapsService.class, Versions.V2);

    public final class Versions {
        public static final Version V1 = new Version(MapsService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(MapsService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version V2_1 = new Version(MapsService.class, "2.1", Service.Versions.V2_1);

        private Versions() {
        }
    }

    public MapsService(String str) {
        super("local", str);
        declareExtensions();
    }

    public MapsService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public MapsService(String str, String str2, String str3) {
        super("local", str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return MAPS_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(MapsService.class);
    }

    private void declareExtensions() {
        new AclFeed().declareExtensions(this.extProfile);
        new FeatureFeed().declareExtensions(this.extProfile);
        new MapFeed().declareExtensions(this.extProfile);
        new VersionFeed().declareExtensions(this.extProfile);
        BatchUtils.declareExtensions(this.extProfile);
    }
}
