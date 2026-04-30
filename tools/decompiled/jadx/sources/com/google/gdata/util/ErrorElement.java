package com.google.gdata.util;

import com.google.gdata.util.ErrorContent;
import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public class ErrorElement implements ErrorContent {
    private static final String GOOGLE_URI_PATTERN = "http://.*google\\.com/.*";
    private String errorCodeName;
    private String errorDebugInfo;
    private String errorDomainName;
    private String errorExtendedHelp;
    private String errorInternalReason;
    private String errorLocation;
    private ErrorContent.LocationType errorLocationType;
    private String errorSendReport;

    ErrorElement() {
    }

    ErrorElement(ErrorContent errorContent) {
        this.errorDomainName = errorContent.getDomainName();
        this.errorCodeName = errorContent.getCodeName();
        this.errorLocation = errorContent.getLocation();
        this.errorLocationType = errorContent.getLocationType();
        this.errorInternalReason = errorContent.getInternalReason();
        this.errorExtendedHelp = errorContent.getExtendedHelp();
        this.errorSendReport = errorContent.getSendReport();
        this.errorDebugInfo = errorContent.getDebugInfo();
    }

    @Override // com.google.gdata.util.ErrorContent
    public String getDomainName() {
        return this.errorDomainName;
    }

    public ErrorElement setDomain(String str) {
        Preconditions.checkNotNull(str, "Error domain must not be null.");
        this.errorDomainName = str;
        return this;
    }

    @Override // com.google.gdata.util.ErrorContent
    public String getCodeName() {
        return this.errorCodeName;
    }

    public ErrorElement setCode(String str) {
        Preconditions.checkNotNull(str, "Error code must not be null.");
        this.errorCodeName = str;
        return this;
    }

    @Override // com.google.gdata.util.ErrorContent
    public String getLocation() {
        return this.errorLocation;
    }

    @Override // com.google.gdata.util.ErrorContent
    public ErrorContent.LocationType getLocationType() {
        return this.errorLocationType;
    }

    public ErrorElement setXpathLocation(String str) {
        return setLocation(str, ErrorContent.LocationType.XPATH);
    }

    public ErrorElement setHeaderLocation(String str) {
        return setLocation(str, ErrorContent.LocationType.HEADER);
    }

    public ErrorElement setLocation(String str) {
        return setLocation(str, ErrorContent.LocationType.OTHER);
    }

    public ErrorElement setLocation(String str, ErrorContent.LocationType locationType) {
        Preconditions.checkNotNull(str, "Location must not be null.");
        Preconditions.checkNotNull(locationType, "Location type must not be null.");
        this.errorLocation = str;
        this.errorLocationType = locationType;
        return this;
    }

    @Override // com.google.gdata.util.ErrorContent
    public String getInternalReason() {
        return this.errorInternalReason;
    }

    public ErrorElement setInternalReason(String str) {
        Preconditions.checkNotNull(str, "Internal Reason must not be null.");
        this.errorInternalReason = str;
        return this;
    }

    @Override // com.google.gdata.util.ErrorContent
    public String getExtendedHelp() {
        return this.errorExtendedHelp;
    }

    public ErrorElement setExtendedHelp(String str) {
        Preconditions.checkNotNull(str, "Extended help uri must not be null.");
        Preconditions.checkArgument(str.matches(GOOGLE_URI_PATTERN), "Invalid extended help URI: %s", str);
        this.errorExtendedHelp = str;
        return this;
    }

    @Override // com.google.gdata.util.ErrorContent
    public String getSendReport() {
        return this.errorSendReport;
    }

    public ErrorElement setSendReport(String str) {
        Preconditions.checkNotNull(str, "Send report uri must not be null.");
        Preconditions.checkArgument(str.matches(GOOGLE_URI_PATTERN), "Invalid send report URI: %s", str);
        this.errorSendReport = str;
        return this;
    }

    @Override // com.google.gdata.util.ErrorContent
    public String getDebugInfo() {
        return this.errorDebugInfo;
    }

    public ErrorElement setDebugInfo(String str) {
        Preconditions.checkNotNull(str, "Debug info must not be null.");
        this.errorDebugInfo = str;
        return this;
    }
}
