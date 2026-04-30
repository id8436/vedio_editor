package com.google.gdata.client.appsforyourdomain.audit;

import com.google.gdata.client.appsforyourdomain.AppsPropertyService;
import com.google.gdata.data.appsforyourdomain.AppsForYourDomainErrorCode;
import com.google.gdata.data.appsforyourdomain.AppsForYourDomainException;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import com.google.gdata.data.appsforyourdomain.generic.GenericFeed;
import com.google.gdata.model.atom.Link;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ServiceException;
import java.io.IOException;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class AuditService extends AppsPropertyService {
    public static final String BASE_URL = "https://apps-apis.google.com/a/feeds/compliance/audit/";
    private static final DateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd%20hh:mm");
    private static Logger LOGGER;
    private String domain;

    static {
        DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("UTC"));
        DATE_FORMAT.setLenient(false);
        LOGGER = Logger.getLogger(AuditService.class.toString());
    }

    public AuditService(String str, String str2, String str3, String str4) throws AuthenticationException {
        this(str3, str4);
        setUserCredentials(str, str2);
    }

    public AuditService(String str, String str2) throws AuthenticationException {
        super(str2);
        this.domain = null;
        this.domain = str;
    }

    public GenericEntry createMailMonitor(String str, MailMonitor mailMonitor) throws IOException, ServiceException {
        return (GenericEntry) insert(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/mail/monitor/" + this.domain + URIUtil.SLASH + str), mailMonitor.toGenericEntry());
    }

    public GenericFeed retrieveMonitors(String str) throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/mail/monitor/" + this.domain + URIUtil.SLASH + str), GenericFeed.class);
    }

    public void deleteMonitor(String str, String str2) throws IOException, ServiceException {
        delete(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/mail/monitor/" + this.domain + URIUtil.SLASH + str + URIUtil.SLASH + str2));
    }

    public GenericEntry uploadPublicKey(String str) throws IOException, ServiceException {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("publicKey", str);
        return (GenericEntry) insert(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/publickey/" + this.domain), genericEntry);
    }

    public GenericEntry createMailboxDumpRequest(MailBoxDumpRequest mailBoxDumpRequest) throws IOException, ServiceException {
        return (GenericEntry) insert(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/" + this.domain + URIUtil.SLASH + mailBoxDumpRequest.getUserEmailAddress().split("@")[0]), mailBoxDumpRequest.toGenericEntry());
    }

    public List<GenericEntry> retrieveAllMailboxDumpRequests(Date date) throws IOException, ServiceException {
        String str = "https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/" + this.domain;
        if (date != null) {
            str = str + "?fromDate=" + DATE_FORMAT.format(date);
        }
        return getAllPages(new URL(str), GenericFeed.class);
    }

    public GenericFeed retrievePageOfMailboxDumpRequests(Date date) throws IOException, ServiceException {
        String str = "https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/" + this.domain;
        if (date != null) {
            str = str + "?fromDate=" + DATE_FORMAT.format(date);
        }
        return (GenericFeed) getFeed(new URL(str), GenericFeed.class);
    }

    public GenericFeed retrieveNextPageOfMailboxDumpRequests(Link link) throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL(link.getHref()), GenericFeed.class);
    }

    public GenericEntry retrieveMailboxDumpRequest(String str, String str2) throws IOException, ServiceException {
        return (GenericEntry) getEntry(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/" + this.domain + URIUtil.SLASH + str + URIUtil.SLASH + str2), GenericEntry.class);
    }

    public boolean deleteMailboxDumpRequest(String str, String str2) throws IOException, ServiceException {
        try {
            delete(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/mail/export/" + this.domain + URIUtil.SLASH + str + URIUtil.SLASH + str2));
            return true;
        } catch (AppsForYourDomainException e2) {
            if (e2.getErrorCode() == AppsForYourDomainErrorCode.InvalidValue) {
                LOGGER.log(Level.INFO, "The request should either have status COMPLETED orMARKED_DELETE before being deleted");
            }
            return false;
        }
    }

    public GenericEntry createAccountInfoRequest(String str) throws IOException, ServiceException {
        return (GenericEntry) insert(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/account/" + this.domain + URIUtil.SLASH + str), new GenericEntry());
    }

    public GenericEntry retrieveAccountInfoRequest(String str, String str2) throws IOException, ServiceException {
        return (GenericEntry) getEntry(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/account/" + this.domain + URIUtil.SLASH + str + URIUtil.SLASH + str2), GenericEntry.class);
    }

    public List<GenericEntry> retrieveAllAccountInfoRequests(Date date) throws IOException, ServiceException {
        String str = "https://apps-apis.google.com/a/feeds/compliance/audit/account/" + this.domain;
        if (date != null) {
            str = str + "?fromDate=" + DATE_FORMAT.format(date);
        }
        return getAllPages(new URL(str), GenericFeed.class);
    }

    public GenericFeed retrievePageOfAccountInfoRequests(Date date) throws IOException, ServiceException {
        String str = "https://apps-apis.google.com/a/feeds/compliance/audit/account/" + this.domain;
        if (date != null) {
            str = str + "?fromDate=" + DATE_FORMAT.format(date);
        }
        return (GenericFeed) getFeed(new URL(str), GenericFeed.class);
    }

    public GenericFeed retrieveNextPageOfAccountInfoRequests(Link link) throws IOException, ServiceException {
        return (GenericFeed) getFeed(new URL(link.getHref()), GenericFeed.class);
    }

    public void deleteAccountInfoRequest(String str, String str2) throws IOException, ServiceException {
        delete(new URL("https://apps-apis.google.com/a/feeds/compliance/audit/account/" + this.domain + URIUtil.SLASH + str + URIUtil.SLASH + str2));
    }
}
