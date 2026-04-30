package com.google.gdata.client.appsforyourdomain.gmailsettings;

import com.google.gdata.client.appsforyourdomain.AppsForYourDomainService;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import com.google.gdata.data.appsforyourdomain.generic.GenericFeed;
import com.google.gdata.data.batch.BatchUtils;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;

/* JADX INFO: loaded from: classes3.dex */
public class GmailFilterService extends AppsForYourDomainService {
    public static final String APPS_APIS_DOMAIN = "apps-apis.google.com";
    public static final String BATCH_URL_SUFFIX = "/email/settings/filter/batch";
    public static final String URL_PREFIX = "/a/feeds/2.0";
    public static final String URL_SUFFIX = "/email/settings/filter";

    public GmailFilterService(String str) {
        super(str, "https", AppsForYourDomainService.DOMAIN_NAME);
        BatchUtils.declareExtensions(getExtensionProfile());
        new GenericFeed().declareExtensions(getExtensionProfile());
    }

    public GenericEntry insert(String str, GenericEntry genericEntry) throws IOException, ServiceException {
        return (GenericEntry) insert(new URL("https://apps-apis.google.com/a/feeds/2.0/" + str + URL_SUFFIX), genericEntry);
    }

    public GenericFeed batch(String str, GenericFeed genericFeed) throws IOException, ServiceException {
        return (GenericFeed) batch(new URL("https://apps-apis.google.com/a/feeds/2.0/" + str + BATCH_URL_SUFFIX), genericFeed);
    }
}
