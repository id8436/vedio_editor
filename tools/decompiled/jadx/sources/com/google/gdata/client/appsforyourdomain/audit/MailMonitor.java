package com.google.gdata.client.appsforyourdomain.audit;

import com.google.gdata.data.appsforyourdomain.generic.GenericEntry;
import java.text.DateFormat;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes3.dex */
public class MailMonitor {
    private static DateFormat DATE_FORMAT;
    private Date beginDate;
    private String chatMonitorLevel;
    private String destUserName;
    private String draftMonitorLevel;
    private Date endDate;
    private String incomingEmailMonitorLevel;
    private String outgoingEmailMonitorLevel;
    private String requestId;

    static {
        DATE_FORMAT = null;
        DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd hh:mm");
        DATE_FORMAT.setTimeZone(TimeZone.getTimeZone("UTC"));
        DATE_FORMAT.setLenient(false);
    }

    public MailMonitor() {
    }

    public MailMonitor(GenericEntry genericEntry) {
        this.requestId = genericEntry.getProperty("requestId");
        this.destUserName = genericEntry.getProperty("destUserName");
        this.beginDate = DATE_FORMAT.parse(genericEntry.getProperty("beginDate"), new ParsePosition(0));
        this.endDate = DATE_FORMAT.parse(genericEntry.getProperty("endDate"), new ParsePosition(0));
        this.incomingEmailMonitorLevel = genericEntry.getProperty("incomingEmailMonitorLevel");
        this.outgoingEmailMonitorLevel = genericEntry.getProperty("outgoingEmailMonitorLevel");
        this.draftMonitorLevel = genericEntry.getProperty("draftMonitorLevel");
        this.chatMonitorLevel = genericEntry.getProperty("chatMonitorLevel");
    }

    public String getRequestId() {
        return this.requestId;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public String getDestUserName() {
        return this.destUserName;
    }

    public void setDestUserName(String str) {
        this.destUserName = str;
    }

    public Date getBeginDate() {
        return this.beginDate;
    }

    public void setBeginDate(Date date) {
        this.beginDate = date;
    }

    public Date getEndDate() {
        return this.endDate;
    }

    public void setEndDate(Date date) {
        this.endDate = date;
    }

    public String getIncomingEmailMonitorLevel() {
        return this.incomingEmailMonitorLevel;
    }

    public void setIncomingEmailMonitorLevel(String str) {
        this.incomingEmailMonitorLevel = str;
    }

    public String getOutgoingEmailMonitorLevel() {
        return this.outgoingEmailMonitorLevel;
    }

    public void setOutgoingEmailMonitorLevel(String str) {
        this.outgoingEmailMonitorLevel = str;
    }

    public String getDraftMonitorLevel() {
        return this.draftMonitorLevel;
    }

    public void setDraftMonitorLevel(String str) {
        this.draftMonitorLevel = str;
    }

    public String getChatMonitorLevel() {
        return this.chatMonitorLevel;
    }

    public void setChatMonitorLevel(String str) {
        this.chatMonitorLevel = str;
    }

    public GenericEntry toGenericEntry() {
        GenericEntry genericEntry = new GenericEntry();
        genericEntry.addProperty("destUserName", this.destUserName);
        genericEntry.addProperty("beginDate", DATE_FORMAT.format(this.beginDate));
        genericEntry.addProperty("endDate", DATE_FORMAT.format(this.endDate));
        genericEntry.addProperty("incomingEmailMonitorLevel", this.incomingEmailMonitorLevel);
        genericEntry.addProperty("outgoingEmailMonitorLevel", this.outgoingEmailMonitorLevel);
        genericEntry.addProperty("draftMonitorLevel", this.draftMonitorLevel);
        genericEntry.addProperty("chatMonitorLevel", this.chatMonitorLevel);
        return genericEntry;
    }
}
