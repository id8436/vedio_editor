package com.google.gdata.client.appsforyourdomain.adminsettings;

import com.google.gdata.client.appsforyourdomain.AppsPropertyService;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class SingleSignOnService extends AppsPropertyService {
    protected String domainUrlBase;
    protected String ssoSettingsUrl;
    protected String ssoSigningKeyUrl;

    public SingleSignOnService(String str, String str2) {
        super(str2);
        this.domainUrlBase = AdminSettingsConstants.APPS_FEEDS_URL_BASE + str + URIUtil.SLASH;
        this.ssoSettingsUrl = this.domainUrlBase + AdminSettingsConstants.APPS_SSO_GENERAL_URL_SUFFIX;
        this.ssoSigningKeyUrl = this.domainUrlBase + AdminSettingsConstants.APPS_SSO_SIGNING_URL_SUFFIX;
    }

    public SingleSignOnService(String str, String str2, String str3, String str4) throws AuthenticationException {
        this(str3, str4);
        setUserCredentials(str, str2);
    }

    public GenericEntry updateSSOSettings(GenericEntry genericEntry) throws IOException, ServiceException {
        return (GenericEntry) update(new URL(this.ssoSettingsUrl), genericEntry);
    }

    public GenericEntry updateSsoSigningKey(String str) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty(AdminSettingsConstants.KEY_PROPERTY, str);
        return (GenericEntry) update(new URL(this.ssoSigningKeyUrl), genericEntry);
    }

    public GenericEntry getSsoSigningKey() throws IOException, ServiceException {
        return (GenericEntry) getEntry(new URL(this.ssoSigningKeyUrl), GenericEntry.class);
    }

    public GenericEntry getSsoSettings() throws IOException, ServiceException {
        return (GenericEntry) getEntry(new URL(this.ssoSettingsUrl), GenericEntry.class);
    }
}
