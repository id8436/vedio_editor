package com.google.gdata.client.appsforyourdomain.migration;

import com.google.gdata.client.Service;
import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import com.google.gdata.client.appsforyourdomain.adminsettings.AdminSettingsConstants;
import com.google.gdata.client.media.MediaService;
import com.google.gdata.data.appsforyourdomain.migration.MailItemFeed;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.Version;
import java.io.IOException;
import java.net.URL;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class MailItemService extends MediaService {
    public static final String APPS_APIS_DOMAIN = "apps-apis.google.com";
    public static final Version DEFAULT_VERSION = Service.initServiceVersion(MailItemService.class, Versions.V1);
    public static final String URL_PREFIX = "/a/feeds/migration/2.0";
    public static final String URL_SUFFIX = "/mail/batch";

    public class Versions {
        public static final Version V1 = new Version(MailItemService.class, "1.0", Service.Versions.V1);
        public static final Version V2 = new Version(MailItemService.class, AdminSettingsConstants.SERVICE_VERSION, Service.Versions.V2);
    }

    public MailItemService(String str) {
        this(str, "https", AppsForYourDomainService.DOMAIN_NAME);
    }

    public MailItemService(String str, String str2, String str3) {
        super(AppsForYourDomainService.APPS_SERVICE, str, str2, str3);
        BatchUtils.declareExtensions(getExtensionProfile());
        new MailItemFeed().declareExtensions(getExtensionProfile());
    }

    public MailItemFeed batch(String str, String str2, MailItemFeed mailItemFeed) throws IOException, ServiceException {
        return (MailItemFeed) batch(new URL("https://apps-apis.google.com/a/feeds/migration/2.0/" + str + URIUtil.SLASH + str2 + URL_SUFFIX), mailItemFeed);
    }
}
