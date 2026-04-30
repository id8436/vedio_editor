package com.google.gdata.client.analytics;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.analytics.AbPageVariationFeed;
import com.google.gdata.data.analytics.AccountFeed;
import com.google.gdata.data.analytics.CombinationFeed;
import com.google.gdata.data.analytics.DataFeed;
import com.google.gdata.data.analytics.ExperimentFeed;
import com.google.gdata.data.analytics.ManagementFeed;
import com.google.gdata.data.analytics.SectionFeed;
import com.google.gdata.data.analytics.VariationFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class AnalyticsService extends GoogleService {
    public static final String ANALYTICS_SERVICE = "analytics";
    public static final String ANALYTICS_SERVICE_VERSION = "GAnalytics-Java/" + AnalyticsService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(AnalyticsService.class, Versions.V2_3);

    public final class Versions {
        public static final Version V1 = new Version(AnalyticsService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(AnalyticsService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version V2_1 = new Version(AnalyticsService.class, "2.1", Service.Versions.V2_1);
        public static final Version V2_2 = new Version(AnalyticsService.class, "2.2", Service.Versions.V2_1);
        public static final Version V2_3 = new Version(AnalyticsService.class, "2.3", Service.Versions.V2_1);

        private Versions() {
        }
    }

    public AnalyticsService(String str) {
        super(ANALYTICS_SERVICE, str);
        declareExtensions();
    }

    public AnalyticsService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public AnalyticsService(String str, String str2, String str3) {
        super(ANALYTICS_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return ANALYTICS_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(AnalyticsService.class);
    }

    private void declareExtensions() {
        new AbPageVariationFeed().declareExtensions(this.extProfile);
        new AccountFeed().declareExtensions(this.extProfile);
        new CombinationFeed().declareExtensions(this.extProfile);
        new DataFeed().declareExtensions(this.extProfile);
        new ExperimentFeed().declareExtensions(this.extProfile);
        new ManagementFeed().declareExtensions(this.extProfile);
        new SectionFeed().declareExtensions(this.extProfile);
        new VariationFeed().declareExtensions(this.extProfile);
    }
}
