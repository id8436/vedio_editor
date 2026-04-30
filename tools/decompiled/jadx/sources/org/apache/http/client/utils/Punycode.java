package org.apache.http.client.utils;

import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class Punycode {
    private static final Idn impl;

    static {
        Idn rfc3492Idn;
        try {
            rfc3492Idn = new JdkIdn();
        } catch (Exception e2) {
            rfc3492Idn = new Rfc3492Idn();
        }
        impl = rfc3492Idn;
    }

    public static String toUnicode(String str) {
        return impl.toUnicode(str);
    }
}
