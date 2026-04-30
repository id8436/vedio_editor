package com.google.api.gbase.client;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceError {
    public static final String DATA_TYPE = "data";
    public static final String REQUEST_TYPE = "request";
    private final String field;
    private final String reason;
    private final String type;

    public ServiceError(String str, String str2, String str3) {
        this.type = str;
        this.field = str2;
        this.reason = str3;
    }

    public ServiceError(String str) {
        this(null, null, str);
    }

    public String toString() {
        return this.field == null ? this.reason : this.field + ": " + this.reason;
    }

    public String getType() {
        return this.type;
    }

    public String getField() {
        return this.field;
    }

    public String getReason() {
        return this.reason;
    }
}
