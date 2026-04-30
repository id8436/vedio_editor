package com.google.gdata.client.gtt;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.Service;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.acl.AclFeed;
import com.google.gdata.data.gtt.DocumentFeed;
import com.google.gdata.data.gtt.GlossaryFeed;
import com.google.gdata.data.gtt.TranslationMemoryFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class GttService extends MediaService {
    public static final String GTT_SERVICE = "gtrans";
    public static final String GTT_SERVICE_VERSION = "GGtt-Java/" + GttService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(GttService.class, Versions.V1);

    public final class Versions {
        public static final Version V1 = new Version(GttService.class, "1.0", Service.Versions.V2_1);

        private Versions() {
        }
    }

    public GttService(String str) {
        super(GTT_SERVICE, str);
        declareExtensions();
    }

    public GttService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public GttService(String str, String str2, String str3) {
        super(GTT_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return GTT_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(GttService.class);
    }

    private void declareExtensions() {
        new AclFeed().declareExtensions(this.extProfile);
        new DocumentFeed().declareExtensions(this.extProfile);
        new GlossaryFeed().declareExtensions(this.extProfile);
        new TranslationMemoryFeed().declareExtensions(this.extProfile);
    }
}
