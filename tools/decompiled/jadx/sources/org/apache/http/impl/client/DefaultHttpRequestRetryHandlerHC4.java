package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import javax.net.ssl.SSLException;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

/* JADX INFO: loaded from: classes.dex */
@Immutable
public class DefaultHttpRequestRetryHandlerHC4 implements HttpRequestRetryHandler {
    public static final DefaultHttpRequestRetryHandlerHC4 INSTANCE = new DefaultHttpRequestRetryHandlerHC4();
    private final Set<Class<? extends IOException>> nonRetriableClasses;
    private final boolean requestSentRetryEnabled;
    private final int retryCount;

    protected DefaultHttpRequestRetryHandlerHC4(int i, boolean z, Collection<Class<? extends IOException>> collection) {
        this.retryCount = i;
        this.requestSentRetryEnabled = z;
        this.nonRetriableClasses = new HashSet();
        Iterator<Class<? extends IOException>> it = collection.iterator();
        while (it.hasNext()) {
            this.nonRetriableClasses.add(it.next());
        }
    }

    public DefaultHttpRequestRetryHandlerHC4(int i, boolean z) {
        this(i, z, Arrays.asList(InterruptedIOException.class, UnknownHostException.class, ConnectException.class, SSLException.class));
    }

    public DefaultHttpRequestRetryHandlerHC4() {
        this(3, false);
    }

    @Override // org.apache.http.client.HttpRequestRetryHandler
    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        Args.notNull(iOException, "Exception parameter");
        Args.notNull(httpContext, "HTTP context");
        if (i <= this.retryCount && !this.nonRetriableClasses.contains(iOException.getClass())) {
            Iterator<Class<? extends IOException>> it = this.nonRetriableClasses.iterator();
            while (it.hasNext()) {
                if (it.next().isInstance(iOException)) {
                    return false;
                }
            }
            HttpClientContext httpClientContextAdapt = HttpClientContext.adapt(httpContext);
            HttpRequest request = httpClientContextAdapt.getRequest();
            if (requestIsAborted(request)) {
                return false;
            }
            if (handleAsIdempotent(request)) {
                return true;
            }
            return !httpClientContextAdapt.isRequestSent() || this.requestSentRetryEnabled;
        }
        return false;
    }

    public boolean isRequestSentRetryEnabled() {
        return this.requestSentRetryEnabled;
    }

    public int getRetryCount() {
        return this.retryCount;
    }

    protected boolean handleAsIdempotent(HttpRequest httpRequest) {
        return !(httpRequest instanceof HttpEntityEnclosingRequest);
    }

    @Deprecated
    protected boolean requestIsAborted(HttpRequest httpRequest) {
        HttpRequest original = httpRequest instanceof RequestWrapper ? ((RequestWrapper) httpRequest).getOriginal() : httpRequest;
        return (original instanceof HttpUriRequest) && ((HttpUriRequest) original).isAborted();
    }
}
