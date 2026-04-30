package org.apache.http.impl.client;

import org.apache.http.HeaderElement;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.message.BasicHeaderElementIterator;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.mortbay.jetty.HttpHeaders;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class DefaultConnectionKeepAliveStrategyHC4 implements ConnectionKeepAliveStrategy {
    public static final DefaultConnectionKeepAliveStrategyHC4 INSTANCE = new DefaultConnectionKeepAliveStrategyHC4();

    @Override // org.apache.http.conn.ConnectionKeepAliveStrategy
    public long getKeepAliveDuration(HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        BasicHeaderElementIterator basicHeaderElementIterator = new BasicHeaderElementIterator(httpResponse.headerIterator(HttpHeaders.KEEP_ALIVE));
        while (basicHeaderElementIterator.hasNext()) {
            HeaderElement headerElementNextElement = basicHeaderElementIterator.nextElement();
            String name = headerElementNextElement.getName();
            String value = headerElementNextElement.getValue();
            if (value != null && name.equalsIgnoreCase("timeout")) {
                try {
                    return Long.parseLong(value) * 1000;
                } catch (NumberFormatException e2) {
                }
            }
        }
        return -1L;
    }
}
