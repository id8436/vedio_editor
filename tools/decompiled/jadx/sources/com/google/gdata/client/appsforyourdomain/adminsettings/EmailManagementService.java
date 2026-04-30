package com.google.gdata.client.appsforyourdomain.adminsettings;

import com.google.gdata.client.appsforyourdomain.AppsPropertyService;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import com.google.gdata.data.appsforyourdomain.generic.GenericFeed;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class EmailManagementService extends AppsPropertyService {
    protected String domainUrlBase;
    protected String emailBaseUrl;

    public EmailManagementService(String str, String str2) {
        super(str2);
        this.domainUrlBase = null;
        this.domainUrlBase = AdminSettingsConstants.APPS_FEEDS_URL_BASE + str + URIUtil.SLASH;
        this.emailBaseUrl = this.domainUrlBase + "email/";
    }

    public EmailManagementService(String str, String str2, String str3, String str4) throws AuthenticationException {
        this(str3, str4);
        setUserCredentials(str, str2);
    }

    public boolean isUserMigrationEnabled() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.emailBaseUrl + "migration"), GenericEntry.class)).getProperty("enableUserMigration").equalsIgnoreCase("true");
    }

    public void setUserMigrationAccess(boolean z) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("enableUserMigration", String.valueOf(z));
        update(new URL(this.emailBaseUrl + "migration"), genericEntry);
    }

    public GenericEntry retrieveOutboundGatewaySettings() throws IOException, ServiceException {
        return (GenericEntry) getEntry(new URL(this.emailBaseUrl + "gateway"), GenericEntry.class);
    }

    public GenericEntry updateOutboundGatewaySettings(String str, String str2) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("smartHost", str);
        genericEntry.addProperty(AdminSettingsConstants.OUTBOUND_SMTP_MODE, str2);
        return (GenericEntry) update(new URL(this.emailBaseUrl + "gateway"), genericEntry);
    }

    public GenericFeed retrieveEmailRoutingSettings() throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL(this.domainUrlBase + "emailrouting"), GenericFeed.class);
    }
}
