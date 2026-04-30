package com.google.gdata.client.books;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.data.books.CollectionFeed;
import com.google.gdata.data.books.VolumeFeed;
import com.google.gdata.util.Version;
import com.google.gdata.util.VersionRegistry;

/* JADX INFO: loaded from: classes3.dex */
public class BooksService extends GoogleService {
    public static final String BOOKS_SERVICE = "print";
    public static final String BOOKS_SERVICE_VERSION = "GBooks-Java/" + BooksService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(BooksService.class, Versions.V1);

    public final class Versions {
        public static final Version V1 = new Version(BooksService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(BooksService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);

        private Versions() {
        }
    }

    public BooksService(String str) {
        super(BOOKS_SERVICE, str);
        declareExtensions();
    }

    public BooksService(String str, Service.GDataRequestFactory gDataRequestFactory, AuthTokenFactory authTokenFactory) {
        super(str, gDataRequestFactory, authTokenFactory);
        declareExtensions();
    }

    public BooksService(String str, String str2, String str3) {
        super(BOOKS_SERVICE, str, str2, str3);
        declareExtensions();
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return BOOKS_SERVICE_VERSION + " " + super.getServiceVersion();
    }

    public static Version getVersion() {
        return VersionRegistry.get().getVersion(BooksService.class);
    }

    private void declareExtensions() {
        new CollectionFeed().declareExtensions(this.extProfile);
        new VolumeFeed().declareExtensions(this.extProfile);
        BatchUtils.declareExtensions(this.extProfile);
    }
}
