package com.google.gdata.client.appsforyourdomain.audit;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public class MailBoxDumpRequest {
    private static DateFormat DATE_FORMAT;
    private String adminEmailAddress;
    private Date beginDate;
    private Date completedDate;
    private Date endDate;
    private Date expiredDate;
    private String[] fileUrls;
    private boolean includeDeleted;
    private int numberOfFiles;
    private String packageContent;
    private Date requestDate;
    private String requestId;
    private String searchQuery;
    private String status;
    private String userEmailAddress;

    static {
        DATE_FORMAT = null;
        DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("UTC"));
        DATE_FORMAT.setLenient(false);
    }

    public MailBoxDumpRequest(GenericEntry genericEntry) {
        this.packageContent = genericEntry.getProperty("packageContent");
        this.requestId = genericEntry.getProperty("requestId");
        this.completedDate = checkDateAndParse(genericEntry.getProperty("completedDate"));
        this.endDate = checkDateAndParse(genericEntry.getProperty("endDate"));
        this.requestDate = checkDateAndParse(genericEntry.getProperty("requestDate"));
        this.expiredDate = checkDateAndParse(genericEntry.getProperty("expiredDate"));
        this.beginDate = checkDateAndParse(genericEntry.getProperty("beginDate"));
        this.searchQuery = genericEntry.getProperty("searchQuery");
        this.adminEmailAddress = genericEntry.getProperty("adminEmailAddress");
        this.userEmailAddress = genericEntry.getProperty("userEmailAddress");
        this.status = genericEntry.getProperty(NotificationCompat.CATEGORY_STATUS);
        this.includeDeleted = genericEntry.getProperty("includeDeleted") != null ? Boolean.parseBoolean(genericEntry.getProperty("includeDeleted")) : this.includeDeleted;
        this.numberOfFiles = genericEntry.getProperty("numberOfFiles") != null ? Integer.parseInt(genericEntry.getProperty("numberOfFiles")) : this.numberOfFiles;
        if (this.numberOfFiles > 0) {
            this.fileUrls = new String[this.numberOfFiles];
            for (int i = 0; i < this.numberOfFiles; i++) {
                this.fileUrls[i] = genericEntry.getProperty("fileUrl" + i);
            }
        }
    }

    public MailBoxDumpRequest() {
        this.includeDeleted = false;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public String[] getFileUrls() {
        return this.fileUrls;
    }

    public void setFileUrls(String[] strArr) {
        this.fileUrls = strArr;
    }

    public void setNumberOfFiles(int i) {
        this.numberOfFiles = i;
    }

    public int getNumberOfFiles() {
        return this.numberOfFiles;
    }

    public String getPackageContent() {
        return this.packageContent;
    }

    public void setPackageContent(String str) {
        this.packageContent = str;
    }

    public boolean isIncludeDeleted() {
        return this.includeDeleted;
    }

    public void setIncludeDeleted(boolean z) {
        this.includeDeleted = z;
    }

    public String getSearchQuery() {
        return this.searchQuery;
    }

    public void setSearchQuery(String str) {
        this.searchQuery = str;
    }

    public Date getCompletedDate() {
        return this.completedDate;
    }

    public void setCompletedDate(Date date) {
        this.completedDate = date;
    }

    public String getAdminEmailAddress() {
        return this.adminEmailAddress;
    }

    public void setAdminEmailAddress(String str) {
        this.adminEmailAddress = str;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public void setEndDate(Date date) {
        this.endDate = date;
    }

    public Date getRequestDate() {
        return this.requestDate;
    }

    public void setRequestDate(Date date) {
        this.requestDate = date;
    }

    public Date getBeginDate() {
        return this.beginDate;
    }

    public void setBeginDate(Date date) {
        this.beginDate = date;
    }

    public String getUserEmailAddress() {
        return this.userEmailAddress;
    }

    public void setUserEmailAddress(String str) {
        this.userEmailAddress = str;
    }

    public Date getExpiredDate() {
        return this.expiredDate;
    }

    public void setExpiredDate(Date date) {
        this.expiredDate = date;
    }

    public GenericEntry toGenericEntry() {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("packageContent", this.packageContent);
        if (this.completedDate != null) {
            genericEntry.addProperty("completedDate", DATE_FORMAT.format(this.completedDate));
        }
        if (this.endDate != null) {
            genericEntry.addProperty("endDate", DATE_FORMAT.format(this.endDate));
        }
        if (this.beginDate != null) {
            genericEntry.addProperty("beginDate", DATE_FORMAT.format(this.beginDate));
        }
        if (this.searchQuery != null) {
            genericEntry.addProperty("searchQuery", this.searchQuery);
        }
        if (this.numberOfFiles != 0) {
            genericEntry.addProperty("numberOfFiles", String.valueOf(this.numberOfFiles));
        }
        genericEntry.addProperty("includeDeleted", String.valueOf(this.includeDeleted));
        genericEntry.addProperty("adminEmailAddress", this.adminEmailAddress);
        return genericEntry;
    }

    private Date checkDateAndParse(String str) {
        if (str != null) {
            return DATE_FORMAT.parse(str, new ParsePosition(0));
        }
        return null;
    }
}
