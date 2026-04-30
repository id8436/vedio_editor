package com.google.gdata.util;

import com.google.gdata.util.ErrorContent;
import com.google.gdata.util.common.base.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ErrorDomain {
    private final String domainName;

    public String getDomainName() {
        return this.domainName;
    }

    protected ErrorDomain(String str) {
        this.domainName = str;
    }

    protected ErrorDomain() {
        this.domainName = getClass().getName();
    }

    /* JADX INFO: loaded from: classes.dex */
    public class ErrorCode implements ErrorContent {
        private final String codeName;
        private final String extendedHelp;
        private final String internalReason;
        private final String sendReport;

        public ErrorCode(ErrorDomain errorDomain, String str) {
            this(str, null, null, null);
        }

        private ErrorCode(String str, String str2, String str3, String str4) {
            Preconditions.checkNotNull(str, "codeName");
            this.codeName = str;
            this.extendedHelp = str2;
            this.internalReason = str3;
            this.sendReport = str4;
        }

        @Override // com.google.gdata.util.ErrorContent
        public String getDomainName() {
            return ErrorDomain.this.getDomainName();
        }

        @Override // com.google.gdata.util.ErrorContent
        public String getCodeName() {
            return this.codeName;
        }

        @Override // com.google.gdata.util.ErrorContent
        public String getInternalReason() {
            return this.internalReason;
        }

        @Deprecated
        public ErrorCode setInternalReason(String str) {
            return withInternalReason(str);
        }

        public ErrorCode withInternalReason(String str) {
            return ErrorDomain.this.new ErrorCode(this.codeName, this.extendedHelp, str, this.sendReport);
        }

        @Override // com.google.gdata.util.ErrorContent
        public String getExtendedHelp() {
            return this.extendedHelp;
        }

        public ErrorCode withExtendedHelp(String str) {
            return ErrorDomain.this.new ErrorCode(this.codeName, str, this.internalReason, this.sendReport);
        }

        @Override // com.google.gdata.util.ErrorContent
        public String getSendReport() {
            return this.sendReport;
        }

        public ErrorCode withSendReport(String str) {
            return ErrorDomain.this.new ErrorCode(this.codeName, this.extendedHelp, this.internalReason, str);
        }

        @Override // com.google.gdata.util.ErrorContent
        public String getLocation() {
            return null;
        }

        @Override // com.google.gdata.util.ErrorContent
        public ErrorContent.LocationType getLocationType() {
            return null;
        }

        @Override // com.google.gdata.util.ErrorContent
        public String getDebugInfo() {
            return null;
        }
    }
}
