package com.google.gdata.client.contacts;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.data.contacts.ContactFeed;
import com.google.gdata.data.contacts.ContactGroupFeed;
import com.google.gdata.data.contacts.ProfileFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class ContactsService extends GoogleService {
    public static final String CONTACTS_SERVICE = "cp";
    public static final String CONTACTS_SERVICE_VERSION = "GContacts-Java/" + ContactsService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(ContactsService.class, Versions.V3);

    public final class Versions {
        public static final Version V1 = new Version(ContactsService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(ContactsService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
        public static final Version V3 = new Version(ContactsService.class, "3.0", Service.Versions.V2);
        public static final Version V3_1 = new Version(ContactsService.class, "3.1", Service.Versions.V2);

        private Versions() {
        }
    }

    public ContactsService(String str) {
        super(CONTACTS_SERVICE, str);
        declareExtensions();
    }

    public ContactsService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public ContactsService(String str, String str2, String str3) {
        super(CONTACTS_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return CONTACTS_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(ContactsService.class);
    }

    private void declareExtensions() {
        new ContactFeed().declareExtensions(this.extProfile);
        new ContactGroupFeed().declareExtensions(this.extProfile);
        new ProfileFeed().declareExtensions(this.extProfile);
        BatchUtils.declareExtensions(this.extProfile);
    }
}
