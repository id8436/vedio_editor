package com.google.gdata.data.webmastertools;

/* JADX INFO: loaded from: classes3.dex */
public enum DomainPreference {
    NONE("none"),
    PREFER_WWW("preferwww"),
    PREFER_NO_WWW("prefernowww");

    private String value;

    DomainPreference(String str) {
        this.value = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }

    public static DomainPreference getDefault() {
        return NONE;
    }

    public static DomainPreference fromString(String str) throws IllegalArgumentException {
        for (DomainPreference domainPreference : values()) {
            if (domainPreference.toString().equals(str)) {
                return domainPreference;
            }
        }
        throw new IllegalArgumentException("The parameter is not a valid DomainPreference string");
    }
}
