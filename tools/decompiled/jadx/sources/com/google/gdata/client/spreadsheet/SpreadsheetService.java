package com.google.gdata.client.spreadsheet;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.spreadsheet.CellFeed;
import com.google.gdata.data.spreadsheet.ListFeed;
import com.google.gdata.data.spreadsheet.RecordFeed;
import com.google.gdata.data.spreadsheet.SpreadsheetFeed;
import com.google.gdata.data.spreadsheet.TableFeed;
import com.google.gdata.data.spreadsheet.WorksheetFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class SpreadsheetService extends GoogleService {
    public static final String SPREADSHEET_SERVICE = "wise";
    public static final String SPREADSHEET_SERVICE_VERSION = "GSpread-Java/" + SpreadsheetService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(SpreadsheetService.class, Versions.V3);

    public final class Versions {
        public static final Version V1 = new Version(SpreadsheetService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(SpreadsheetService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version V3 = new Version(SpreadsheetService.class, "3.0", Service.Versions.V2);

        private Versions() {
        }
    }

    public SpreadsheetService(String str) {
        super(SPREADSHEET_SERVICE, str);
        declareExtensions();
    }

    public SpreadsheetService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public SpreadsheetService(String str, String str2, String str3) {
        super(SPREADSHEET_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return SPREADSHEET_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(SpreadsheetService.class);
    }

    private void declareExtensions() {
        new CellFeed().declareExtensions(this.extProfile);
        new ListFeed().declareExtensions(this.extProfile);
        new RecordFeed().declareExtensions(this.extProfile);
        new SpreadsheetFeed().declareExtensions(this.extProfile);
        new TableFeed().declareExtensions(this.extProfile);
        new WorksheetFeed().declareExtensions(this.extProfile);
    }
}
