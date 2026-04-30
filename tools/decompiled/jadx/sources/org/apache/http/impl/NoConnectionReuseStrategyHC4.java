package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class NoConnectionReuseStrategyHC4 implements ConnectionReuseStrategy {
    public static final NoConnectionReuseStrategyHC4 INSTANCE = new NoConnectionReuseStrategyHC4();

    @Override // org.apache.http.ConnectionReuseStrategy
    public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
        return false;
    }
}
