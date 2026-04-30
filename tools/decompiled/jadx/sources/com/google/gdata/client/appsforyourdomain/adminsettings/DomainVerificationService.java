package com.google.gdata.client.appsforyourdomain.adminsettings;

import com.google.gdata.client.appsforyourdomain.AppsPropertyService;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class DomainVerificationService extends AppsPropertyService {
    protected String domainUrlBase;
    protected String verificationBaseUrl;

    public DomainVerificationService(String str, String str2) {
        super(str2);
        this.domainUrlBase = null;
        this.domainUrlBase = AdminSettingsConstants.APPS_FEEDS_URL_BASE + str + URIUtil.SLASH;
        this.verificationBaseUrl = this.domainUrlBase + "verification/";
    }

    public DomainVerificationService(String str, String str2, String str3, String str4) throws AuthenticationException {
        this(str3, str4);
        setUserCredentials(str, str2);
    }

    public GenericEntry retrieveCnameVerificationStatus() throws IOException, ServiceException {
        return (GenericEntry) getEntry(new URL(this.verificationBaseUrl + "cname"), GenericEntry.class);
    }

    public GenericEntry retrieveMxVerificationStatus() throws IOException, ServiceException {
        return (GenericEntry) getEntry(new URL(this.verificationBaseUrl + "mx"), GenericEntry.class);
    }

    public GenericEntry updateVerifiedStatus(GenericEntry genericEntry, boolean z) throws IOException, ServiceException {
        genericEntry.removeProperty("verified");
        genericEntry.addProperty("verified", String.valueOf(z));
        return genericEntry.update();
    }
}
