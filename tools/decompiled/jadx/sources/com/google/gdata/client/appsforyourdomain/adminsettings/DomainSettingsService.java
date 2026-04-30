package com.google.gdata.client.appsforyourdomain.adminsettings;

import com.adobe.creativesdk.foundation.adobeinternal.entitlement.AdobeEntitlementSession;
import com.google.gdata.client.appsforyourdomain.AppsPropertyService;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class DomainSettingsService extends AppsPropertyService {
    protected String accountSettingsUrl;
    protected String appearanceUrl;
    protected String domainBaseUrl;
    protected String generalSettingsUrl;

    public DomainSettingsService(String str, String str2) {
        super(str2);
        this.generalSettingsUrl = null;
        this.domainBaseUrl = null;
        this.appearanceUrl = null;
        this.accountSettingsUrl = null;
        this.domainBaseUrl = AdminSettingsConstants.APPS_FEEDS_URL_BASE + str + URIUtil.SLASH;
        this.accountSettingsUrl = this.domainBaseUrl + AdminSettingsConstants.APPS_SETTINGS_ACCOUNT_URL_SUFFIX;
        this.generalSettingsUrl = this.domainBaseUrl + AdminSettingsConstants.APPS_SETTINGS_GENERAL_URL_SUFFIX;
        this.appearanceUrl = this.domainBaseUrl + AdminSettingsConstants.APPS_SETTINGS_APPEARANCE_URL_SUFFIX;
    }

    public DomainSettingsService(String str, String str2, String str3, String str4) throws AuthenticationException {
        this(str3, str4);
        setUserCredentials(str, str2);
    }

    public GenericEntry setDefaultLanguage(String str) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("defaultLanguage", str);
        return (GenericEntry) update(new URL(this.generalSettingsUrl + "defaultLanguage"), genericEntry);
    }

    public String getDefaultLanguage() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.generalSettingsUrl + "defaultLanguage"), GenericEntry.class)).getProperty("defaultLanguage");
    }

    public GenericEntry setOrganizationName(String str) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("organizationName", str);
        return (GenericEntry) update(new URL(this.generalSettingsUrl + "organizationName"), genericEntry);
    }

    public String getOrganizationName() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.generalSettingsUrl + "organizationName"), GenericEntry.class)).getProperty("organizationName");
    }

    public int getMaxUserCount() throws IOException, ServiceException {
        return Integer.parseInt(((GenericEntry) getEntry(new URL(this.generalSettingsUrl + "maximumNumberOfUsers"), GenericEntry.class)).getProperty("maximumNumberOfUsers"));
    }

    public String getDomainVerificationStatus() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.accountSettingsUrl + "isVerified"), GenericEntry.class)).getProperty("isVerified");
    }

    public String getSupportPIN() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.accountSettingsUrl + "supportPIN"), GenericEntry.class)).getProperty("supportPIN");
    }

    public String getDomainEdition() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.accountSettingsUrl + "edition"), GenericEntry.class)).getProperty("edition");
    }

    public String getCustomerPIN() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.accountSettingsUrl + "customerPIN"), GenericEntry.class)).getProperty("customerPIN");
    }

    public String getDomainCreationTime() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.accountSettingsUrl + "creationTime"), GenericEntry.class)).getProperty("creationTime");
    }

    public String getCountryCodeForDomain() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.accountSettingsUrl + AdobeEntitlementSession.AdobeEntitlementUserProfileCountryCode), GenericEntry.class)).getProperty(AdobeEntitlementSession.AdobeEntitlementUserProfileCountryCode);
    }

    public String getDomainSecondaryEmailAddress() throws IOException, ServiceException {
        return ((GenericEntry) getEntry(new URL(this.accountSettingsUrl + "adminSecondaryEmail"), GenericEntry.class)).getProperty("adminSecondaryEmail");
    }

    public GenericEntry setDomainSecondaryEmailAddress(String str) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("adminSecondaryEmail", str);
        return (GenericEntry) update(new URL(this.accountSettingsUrl + "adminSecondaryEmail"), genericEntry);
    }

    public GenericEntry setDomainLogo(String str) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("logoImage", str);
        return (GenericEntry) update(new URL(this.appearanceUrl + "customLogo"), genericEntry);
    }
}
