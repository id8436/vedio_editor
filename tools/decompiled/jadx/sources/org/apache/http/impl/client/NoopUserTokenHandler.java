package org.apache.http.impl.client;

import org.apache.http.annotation.Immutable;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class NoopUserTokenHandler implements UserTokenHandler {
    public static final NoopUserTokenHandler INSTANCE = new NoopUserTokenHandler();

    @Override // org.apache.http.client.UserTokenHandler
    public Object getUserToken(HttpContext httpContext) {
        return null;
    }
}
