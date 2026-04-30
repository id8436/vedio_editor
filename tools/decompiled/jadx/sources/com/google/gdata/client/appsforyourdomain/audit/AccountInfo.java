package com.google.gdata.client.appsforyourdomain.audit;

import android.support.v4.app.NotificationCompat;
import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public class AccountInfo {
    private static DateFormat DATE_FORMAT;
    private String adminEmailAddress;
    private Date completedDate;
    private Date expiredDate;
    private String[] fileUrls;
    private int numberOfFiles;
    private Date requestDate;
    private String requestId;
    private String status;
    private String userEmailAddress;

    static {
        DATE_FORMAT = null;
        DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("UTC"));
        DATE_FORMAT.setLenient(false);
    }

    public AccountInfo() {
    }

    public AccountInfo(GenericEntry genericEntry) {
        this.completedDate = checkDateAndParse(genericEntry.getProperty("completedDate"));
        this.requestDate = checkDateAndParse(genericEntry.getProperty("requestDate"));
        this.expiredDate = checkDateAndParse(genericEntry.getProperty("expiredDate"));
        this.requestId = genericEntry.getProperty("requestId");
        this.userEmailAddress = genericEntry.getProperty("userEmailAddress");
        this.adminEmailAddress = genericEntry.getProperty("adminEmailAddress");
        this.status = genericEntry.getProperty(NotificationCompat.CATEGORY_STATUS);
        this.numberOfFiles = genericEntry.getProperty("numberOfFiles") != null ? Integer.parseInt(genericEntry.getProperty("numberOfFiles")) : this.numberOfFiles;
        if (this.numberOfFiles > 0) {
            this.fileUrls = new String[this.numberOfFiles];
            for (int i = 0; i < this.numberOfFiles; i++) {
                this.fileUrls[i] = genericEntry.getProperty("fileUrl" + i);
            }
        }
    }

    private Date checkDateAndParse(String str) {
        if (str != null) {
            return DATE_FORMAT.parse(str, new ParsePosition(0));
        }
        return null;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setAdminEmailAddress(String str) {
        this.adminEmailAddress = str;
    }

    public String getAdminEmailAddress() {
        return this.adminEmailAddress;
    }

    public void setUserEmailAddress(String str) {
        this.userEmailAddress = str;
    }

    public String getUserEmailAddress() {
        return this.userEmailAddress;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String str) {
        this.status = str;
    }

    public Date getRequestDate() {
        return this.requestDate;
    }

    public void setRequestDate(Date date) {
        this.requestDate = date;
    }

    public Date getCompletedDate() {
        return this.completedDate;
    }

    public void setCompletedDate(Date date) {
        this.completedDate = date;
    }

    public int getNumberOfFiles() {
        return this.numberOfFiles;
    }

    public void setNumberOfFiles(int i) {
        this.numberOfFiles = i;
    }

    public String[] getFileUrls() {
        return this.fileUrls;
    }

    public void setFileUrls(String[] strArr) {
        this.fileUrls = strArr;
    }

    public Date getExpiredDate() {
        return this.expiredDate;
    }

    public void setExpiredDate(Date date) {
        this.expiredDate = date;
    }

    public GenericEntry toGenericEntry() {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("requestId", this.requestId);
        if (this.completedDate != null) {
            genericEntry.addProperty("completedDate", DATE_FORMAT.format(this.completedDate));
        }
        if (this.requestDate != null) {
            genericEntry.addProperty("beginDate", DATE_FORMAT.format(this.requestDate));
        }
        if (this.numberOfFiles != 0) {
            genericEntry.addProperty("numberOfFiles", String.valueOf(this.numberOfFiles));
        }
        genericEntry.addProperty("userEmailAddress", this.userEmailAddress);
        genericEntry.addProperty("adminEmailAddress", this.adminEmailAddress);
        genericEntry.addProperty(NotificationCompat.CATEGORY_STATUS, this.status);
        return genericEntry;
    }
}
