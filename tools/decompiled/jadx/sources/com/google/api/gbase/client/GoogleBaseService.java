package com.google.api.gbase.client;

import com.google.gdata.client.Query;
import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.BaseEntry;
import com.google.gdata.data.BaseFeed;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ExtensionProfile;
import com.google.gdata.data.IEntry;
import com.google.gdata.data.IFeed;
import com.google.gdata.data.batch.BatchOperationType;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.Version;
import java.io.IOException;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleBaseService extends MediaService {
    public static final String GOOGLE_BASE_SERVICE = "gbase";
    protected String application;
    public static final String GOOGLE_BASE_SERVICE_VERSION = "GBase-Java/" + GoogleBaseService.class.getPackage().getImplementationVersion();
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(GoogleBaseService.class, Versions.V2);

    public class Versions {
        public static final Version V1 = new Version(GoogleBaseService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(GoogleBaseService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
    }

    public GoogleBaseService(String str) {
        super(GOOGLE_BASE_SERVICE, str);
        this.application = str;
        addExtensions();
    }

    public GoogleBaseService(String str, String str2) {
        this(str);
    }

    public GoogleBaseService(String str, String str2, String str3) {
        super(GOOGLE_BASE_SERVICE, str, str2, str3);
        this.application = str;
        addExtensions();
    }

    public GoogleBaseService(String str, String str2, String str3, String str4) {
        this(str, str3, str4);
    }

    public GoogleBaseFeed getFeed(URL url, DateTime dateTime) throws IOException, ServiceException {
        return (GoogleBaseFeed) getFeed(url, GoogleBaseFeed.class, dateTime);
    }

    public GoogleBaseFeed getFeed(URL url) throws IOException, ServiceException {
        return (GoogleBaseFeed) getFeed(url, GoogleBaseFeed.class);
    }

    public GoogleBaseMediaFeed getMediaFeed(URL url) throws IOException, ServiceException {
        return (GoogleBaseMediaFeed) getFeed(url, GoogleBaseMediaFeed.class);
    }

    public GoogleBaseMediaFeed getMediaFeed(URL url, DateTime dateTime) throws IOException, ServiceException {
        return (GoogleBaseMediaFeed) getFeed(url, GoogleBaseMediaFeed.class, dateTime);
    }

    public GoogleBaseEntry getEntry(URL url, DateTime dateTime) throws IOException, ServiceException {
        return (GoogleBaseEntry) getEntry(url, GoogleBaseEntry.class, dateTime);
    }

    public GoogleBaseEntry getEntry(URL url) throws IOException, ServiceException {
        return (GoogleBaseEntry) getEntry(url, GoogleBaseEntry.class);
    }

    public GoogleBaseMediaEntry getMediaEntry(URL url) throws IOException, ServiceException {
        return (GoogleBaseMediaEntry) getEntry(url, GoogleBaseMediaEntry.class);
    }

    public GoogleBaseMediaEntry getMediaEntry(URL url, DateTime dateTime) throws IOException, ServiceException {
        return (GoogleBaseMediaEntry) getEntry(url, GoogleBaseMediaEntry.class, dateTime);
    }

    public GoogleBaseFeed query(Query query, DateTime dateTime) throws IOException, ServiceException {
        return (GoogleBaseFeed) query(query, GoogleBaseFeed.class, dateTime);
    }

    public GoogleBaseFeed query(Query query) throws IOException, ServiceException {
        return (GoogleBaseFeed) query(query, GoogleBaseFeed.class);
    }

    @Override // com.google.gdata.client.media.MediaService, com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <E extends IEntry> E update(URL url, E e2) throws IOException, ServiceException {
        addApplicationAttribute(e2);
        return (E) super.update(url, e2);
    }

    @Override // com.google.gdata.client.media.MediaService, com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <E extends IEntry> E insert(URL url, E e2) throws IOException, ServiceException {
        addApplicationAttribute(e2);
        return (E) super.insert(url, e2);
    }

    @Override // com.google.gdata.client.GoogleService, com.google.gdata.client.Service
    public <F extends IFeed> F batch(URL url, F f2) throws IOException, ServiceException {
        addApplicationAttribute(f2);
        return (F) super.batch(url, f2);
    }

    private void addApplicationAttribute(IEntry iEntry) {
        if (!(iEntry instanceof BaseEntry)) {
            throw new IllegalArgumentException("Unexpected entry type: " + iEntry.getClass());
        }
        GoogleBaseAttributesExtension googleBaseAttributesExtension = (GoogleBaseAttributesExtension) ((BaseEntry) iEntry).getExtension(GoogleBaseAttributesExtension.class);
        if (googleBaseAttributesExtension != null) {
            googleBaseAttributesExtension.setApplication(this.application);
        }
    }

    private void addApplicationAttribute(IFeed iFeed) {
        if (!(iFeed instanceof BaseFeed)) {
            throw new IllegalArgumentException("Unexpected feed type: " + iFeed);
        }
        BaseFeed baseFeed = (BaseFeed) iFeed;
        BatchOperationType batchOperationType = BatchUtils.getBatchOperationType(baseFeed);
        BatchOperationType batchOperationType2 = batchOperationType == null ? BatchOperationType.INSERT : batchOperationType;
        for (BaseEntry baseEntry : baseFeed.getEntries()) {
            BatchOperationType batchOperationType3 = BatchUtils.getBatchOperationType(baseEntry);
            if (batchOperationType3 == null) {
                batchOperationType3 = batchOperationType2;
            }
            if (batchOperationType3 == BatchOperationType.INSERT || batchOperationType3 == BatchOperationType.UPDATE) {
                addApplicationAttribute(baseEntry);
            }
        }
    }

    private void addExtensions() {
        ExtensionProfile extensionProfile = getExtensionProfile();
        GoogleBaseNamespaces.declareAllExtensions(extensionProfile);
        BatchUtils.declareExtensions(extensionProfile);
    }

    @Override // com.google.gdata.client.Service
    public String getServiceVersion() {
        return GOOGLE_BASE_SERVICE_VERSION + " " + super.getServiceVersion();
    }
}
