package com.google.gdata.client;

/* JADX INFO: loaded from: classes3.dex */
public enum ClientLoginAccountType {
    GOOGLE("GOOGLE"),
    HOSTED("HOSTED"),
    HOSTED_OR_GOOGLE("HOSTED_OR_GOOGLE");

    private final String accountTypeValue;

    ClientLoginAccountType(String str) {
        this.accountTypeValue = str;
    }

    public String getValue() {
        return this.accountTypeValue;
    }
}
