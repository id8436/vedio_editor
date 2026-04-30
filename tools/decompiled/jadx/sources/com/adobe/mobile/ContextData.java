package com.adobe.mobile;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class ContextData {
    protected Object value = null;
    protected HashMap<String, Object> contextData = new HashMap<>();

    ContextData() {
    }

    public synchronized String toString() {
        return super.toString() + (this.value != null ? this.value.toString() : "");
    }

    protected boolean containsKey(String str) {
        return this.contextData.containsKey(str);
    }

    protected void put(String str, ContextData contextData) {
        this.contextData.put(str, contextData);
    }

    protected ContextData get(String str) {
        return (ContextData) this.contextData.get(str);
    }
}
