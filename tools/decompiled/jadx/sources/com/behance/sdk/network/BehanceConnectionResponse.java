package com.behance.sdk.network;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BehanceConnectionResponse<T> {
    private Map<String, List<String>> headers;
    private int responseCode;
    private T responseObject;

    public int getResponseCode() {
        return this.responseCode;
    }

    public void setResponseCode(int i) {
        this.responseCode = i;
    }

    public T getResponseObject() {
        return this.responseObject;
    }

    public Map<String, List<String>> getHeaders() {
        return this.headers;
    }

    public void setHeaders(Map<String, List<String>> map) {
        this.headers = map;
    }

    public void setResponseObject(T t) {
        this.responseObject = t;
    }
}
