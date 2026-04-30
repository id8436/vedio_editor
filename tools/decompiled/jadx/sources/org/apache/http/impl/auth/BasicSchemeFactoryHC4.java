package org.apache.http.impl.auth;

import java.nio.charset.Charset;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeFactory;
import org.apache.http.auth.AuthSchemeProvider;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class BasicSchemeFactoryHC4 implements AuthSchemeFactory, AuthSchemeProvider {
    private final Charset charset;

    public BasicSchemeFactoryHC4(Charset charset) {
        this.charset = charset;
    }

    public BasicSchemeFactoryHC4() {
        this(null);
    }

    @Override // org.apache.http.auth.AuthSchemeFactory
    public AuthScheme newInstance(HttpParams httpParams) {
        return new BasicSchemeHC4();
    }

    @Override // org.apache.http.auth.AuthSchemeProvider
    public AuthScheme create(HttpContext httpContext) {
        return new BasicSchemeHC4(this.charset);
    }
}
