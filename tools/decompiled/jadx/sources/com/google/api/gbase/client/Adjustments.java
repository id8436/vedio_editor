package com.google.api.gbase.client;

/* JADX INFO: loaded from: classes3.dex */
public class Adjustments {
    private String name;
    private String value;

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public boolean isEmpty() {
        return this.name == null && this.value == null;
    }

    void setName(String str) {
        this.name = str;
    }

    void setValue(String str) {
        this.value = str;
    }
}
