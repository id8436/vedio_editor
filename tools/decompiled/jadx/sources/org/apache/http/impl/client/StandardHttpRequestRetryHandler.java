package org.apache.http.impl.client;

import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class StandardHttpRequestRetryHandler extends DefaultHttpRequestRetryHandlerHC4 {
    private final Map<String, Boolean> idempotentMethods;

    public StandardHttpRequestRetryHandler(int i, boolean z) {
        super(i, z);
        this.idempotentMethods = new ConcurrentHashMap();
        this.idempotentMethods.put("GET", Boolean.TRUE);
        this.idempotentMethods.put("HEAD", Boolean.TRUE);
        this.idempotentMethods.put("PUT", Boolean.TRUE);
        this.idempotentMethods.put("DELETE", Boolean.TRUE);
        this.idempotentMethods.put("OPTIONS", Boolean.TRUE);
        this.idempotentMethods.put("TRACE", Boolean.TRUE);
    }

    public StandardHttpRequestRetryHandler() {
        this(3, false);
    }

    @Override // org.apache.http.impl.client.DefaultHttpRequestRetryHandlerHC4
    protected boolean handleAsIdempotent(HttpRequest httpRequest) {
        Boolean bool = this.idempotentMethods.get(httpRequest.getRequestLine().getMethod().toUpperCase(Locale.US));
        return bool != null && bool.booleanValue();
    }
}
