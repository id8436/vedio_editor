package com.google.gdata.client.finance;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.finance.PortfolioFeed;
import com.google.gdata.data.finance.PositionFeed;
import com.google.gdata.data.finance.TransactionFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class FinanceService extends GoogleService {
    public static final String FINANCE_SERVICE = "finance";
    public static final String FINANCE_SERVICE_VERSION = "GFinance-Java/" + FinanceService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(FinanceService.class, Versions.V2);

    public final class Versions {
        public static final Version V1 = new Version(FinanceService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(FinanceService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);

        private Versions() {
        }
    }

    public FinanceService(String str) {
        super(FINANCE_SERVICE, str);
        declareExtensions();
    }

    public FinanceService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public FinanceService(String str, String str2, String str3) {
        super(FINANCE_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return FINANCE_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(FinanceService.class);
    }

    private void declareExtensions() {
        new PortfolioFeed().declareExtensions(this.extProfile);
        new PositionFeed().declareExtensions(this.extProfile);
        new TransactionFeed().declareExtensions(this.extProfile);
    }
}
