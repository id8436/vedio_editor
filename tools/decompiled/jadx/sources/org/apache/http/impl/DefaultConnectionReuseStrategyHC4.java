package org.apache.http.impl;

import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.TokenIterator;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicTokenIterator;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.mortbay.jetty.HttpHeaderValues;
import org.mortbay.jetty.HttpHeaders;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public class DefaultConnectionReuseStrategyHC4 implements ConnectionReuseStrategy {
    public static final DefaultConnectionReuseStrategyHC4 INSTANCE = new DefaultConnectionReuseStrategyHC4();

    @Override // org.apache.http.ConnectionReuseStrategy
    public boolean keepAlive(HttpResponse httpResponse, HttpContext httpContext) {
        Args.notNull(httpResponse, "HTTP response");
        Args.notNull(httpContext, "HTTP context");
        ProtocolVersion protocolVersion = httpResponse.getStatusLine().getProtocolVersion();
        Header firstHeader = httpResponse.getFirstHeader("Transfer-Encoding");
        if (firstHeader != null) {
            if (!HttpHeaderValues.CHUNKED.equalsIgnoreCase(firstHeader.getValue())) {
                return false;
            }
        } else if (canResponseHaveBody(httpResponse)) {
            Header[] headers = httpResponse.getHeaders("Content-Length");
            if (headers.length != 1) {
                return false;
            }
            try {
                if (Integer.parseInt(headers[0].getValue()) < 0) {
                    return false;
                }
            } catch (NumberFormatException e2) {
                return false;
            }
        }
        HeaderIterator headerIterator = httpResponse.headerIterator("Connection");
        if (!headerIterator.hasNext()) {
            headerIterator = httpResponse.headerIterator(HttpHeaders.PROXY_CONNECTION);
        }
        if (headerIterator.hasNext()) {
            try {
                TokenIterator tokenIteratorCreateTokenIterator = createTokenIterator(headerIterator);
                boolean z = false;
                while (tokenIteratorCreateTokenIterator.hasNext()) {
                    String strNextToken = tokenIteratorCreateTokenIterator.nextToken();
                    if ("Close".equalsIgnoreCase(strNextToken)) {
                        return false;
                    }
                    if (HttpHeaders.KEEP_ALIVE.equalsIgnoreCase(strNextToken)) {
                        z = true;
                    }
                }
                if (z) {
                    return true;
                }
            } catch (ParseException e3) {
                return false;
            }
        }
        return protocolVersion.lessEquals(HttpVersion.HTTP_1_0) ? false : true;
    }

    protected TokenIterator createTokenIterator(HeaderIterator headerIterator) {
        return new BasicTokenIterator(headerIterator);
    }

    private boolean canResponseHaveBody(HttpResponse httpResponse) {
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        return (statusCode < 200 || statusCode == 204 || statusCode == 304 || statusCode == 205) ? false : true;
    }
}
