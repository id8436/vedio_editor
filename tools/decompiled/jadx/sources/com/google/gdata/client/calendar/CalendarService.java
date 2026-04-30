package com.google.gdata.client.calendar;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.acl.AclFeed;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.data.calendar.CalendarEventFeed;
import com.google.gdata.data.calendar.CalendarFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class CalendarService extends GoogleService {
    public static final String CALENDAR_ROOT_URL = "https://www.google.com/calendar/feeds/";
    public static final String CALENDAR_SERVICE = "cl";
    public static final String CALENDAR_SERVICE_VERSION = "GCalendar-Java/" + CalendarService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(CalendarService.class, Versions.V2);

    public final class Versions {
        public static final Version V1 = new Version(CalendarService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(CalendarService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version V2_1 = new Version(CalendarService.class, "2.1", Service.Versions.V2);
    }

    public CalendarService(String str) {
        super(CALENDAR_SERVICE, str);
        declareExtensions();
    }

    public CalendarService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public CalendarService(String str, String str2, String str3) {
        super(CALENDAR_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return CALENDAR_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(CalendarService.class);
    }

    private void declareExtensions() {
        new AclFeed().declareExtensions(this.extProfile);
        new CalendarEventFeed().declareExtensions(this.extProfile);
        new CalendarFeed().declareExtensions(this.extProfile);
        BatchUtils.declareExtensions(this.extProfile);
    }
}
