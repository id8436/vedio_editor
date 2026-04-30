package org.apache.http.client.config;

import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class AuthSchemes {
    public static final String BASIC = "Basic";
    public static final String DIGEST = "Digest";
    public static final String KERBEROS = "Kerberos";
    public static final String NTLM = "NTLM";
    public static final String SPNEGO = "negotiate";

    private AuthSchemes() {
    }
}
