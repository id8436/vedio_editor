package org.apache.http.client.methods;

import java.net.URI;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.message.AbstractHttpMessage;
import org.apache.http.message.BasicRequestLine;
import org.apache.http.params.HttpParams;
import org.mortbay.jetty.HttpHeaderValues;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes.dex */
@NotThreadSafe
public class HttpRequestWrapper extends AbstractHttpMessage implements HttpUriRequest {
    private final String method;
    private final HttpRequest original;
    private URI uri;
    private ProtocolVersion version;

    private HttpRequestWrapper(HttpRequest httpRequest) {
        this.original = httpRequest;
        this.version = this.original.getRequestLine().getProtocolVersion();
        this.method = this.original.getRequestLine().getMethod();
        if (httpRequest instanceof HttpUriRequest) {
            this.uri = ((HttpUriRequest) httpRequest).getURI();
        } else {
            this.uri = null;
        }
        setHeaders(httpRequest.getAllHeaders());
    }

    @Override // org.apache.http.HttpMessage
    public ProtocolVersion getProtocolVersion() {
        return this.version != null ? this.version : this.original.getProtocolVersion();
    }

    public void setProtocolVersion(ProtocolVersion protocolVersion) {
        this.version = protocolVersion;
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public URI getURI() {
        return this.uri;
    }

    public void setURI(URI uri) {
        this.uri = uri;
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return this.method;
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public void abort() throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.http.client.methods.HttpUriRequest
    public boolean isAborted() {
        return false;
    }

    @Override // org.apache.http.HttpRequest
    public RequestLine getRequestLine() {
        String uri;
        if (this.uri != null) {
            uri = this.uri.toASCIIString();
        } else {
            uri = this.original.getRequestLine().getUri();
        }
        if (uri == null || uri.length() == 0) {
            uri = URIUtil.SLASH;
        }
        return new BasicRequestLine(this.method, uri, getProtocolVersion());
    }

    public HttpRequest getOriginal() {
        return this.original;
    }

    public String toString() {
        return getRequestLine() + " " + this.headergroup;
    }

    /* JADX INFO: loaded from: classes3.dex */
    class HttpEntityEnclosingRequestWrapper extends HttpRequestWrapper implements HttpEntityEnclosingRequest {
        private HttpEntity entity;

        public HttpEntityEnclosingRequestWrapper(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
            super(httpEntityEnclosingRequest);
            this.entity = httpEntityEnclosingRequest.getEntity();
        }

        @Override // org.apache.http.HttpEntityEnclosingRequest
        public HttpEntity getEntity() {
            return this.entity;
        }

        @Override // org.apache.http.HttpEntityEnclosingRequest
        public void setEntity(HttpEntity httpEntity) {
            this.entity = httpEntity;
        }

        @Override // org.apache.http.HttpEntityEnclosingRequest
        public boolean expectContinue() {
            Header firstHeader = getFirstHeader("Expect");
            return firstHeader != null && HttpHeaderValues.CONTINUE.equalsIgnoreCase(firstHeader.getValue());
        }
    }

    public static HttpRequestWrapper wrap(HttpRequest httpRequest) {
        if (httpRequest == null) {
            return null;
        }
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            return new HttpEntityEnclosingRequestWrapper((HttpEntityEnclosingRequest) httpRequest);
        }
        return new HttpRequestWrapper(httpRequest);
    }

    @Override // org.apache.http.message.AbstractHttpMessage, org.apache.http.HttpMessage
    @Deprecated
    public HttpParams getParams() {
        if (this.params == null) {
            this.params = this.original.getParams().copy();
        }
        return this.params;
    }
}
