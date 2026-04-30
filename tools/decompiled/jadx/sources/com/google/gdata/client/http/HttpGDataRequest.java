package com.google.gdata.client.http;

import com.google.gdata.client.AuthTokenFactory;
import com.google.gdata.client.Query;
import com.google.gdata.client.Service;
import com.google.gdata.client.authn.oauthproxy.OAuthProxyProtocol;
import com.google.gdata.data.DateTime;
import com.google.gdata.data.ParseSource;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.EntityTooLargeException;
import com.google.gdata.util.InvalidEntryException;
import com.google.gdata.util.LoggableInputStream;
import com.google.gdata.util.LoggableOutputStream;
import com.google.gdata.util.NoLongerAvailableException;
import com.google.gdata.util.NotAcceptableException;
import com.google.gdata.util.NotImplementedException;
import com.google.gdata.util.NotModifiedException;
import com.google.gdata.util.OAuthProxyException;
import com.google.gdata.util.PreconditionFailedException;
import com.google.gdata.util.ResourceNotFoundException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.ServiceForbiddenException;
import com.google.gdata.util.VersionConflictException;
import com.google.gdata.util.common.xml.XmlWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.GZIPInputStream;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes.dex */
public class HttpGDataRequest implements Service.GDataRequest {

    @Deprecated
    public static final String METHOD_OVERRIDE_HEADER = "X-HTTP-Method-Override";
    public static final String METHOD_OVERRIDE_PROPERTY = "com.google.gdata.UseMethodOverride";
    static final Logger logger = Logger.getLogger(HttpGDataRequest.class.getName());
    protected final HttpAuthToken authToken;
    protected int connectTimeout;
    protected final HttpUrlConnectionSource connectionSource;
    protected boolean executed;
    protected boolean expectsInput;
    protected boolean hasOutput;
    protected HttpURLConnection httpConn;
    private InputStream inputStream;
    protected ContentType inputType;
    protected int readTimeout;
    protected URL requestUrl;
    protected Service.GDataRequest.RequestType type;

    /* JADX INFO: loaded from: classes3.dex */
    public class Factory implements Service.GDataRequestFactory {
        protected HttpAuthToken authToken;
        protected Map<String, String> headerMap = new LinkedHashMap();
        protected Map<String, String> privateHeaderMap = new LinkedHashMap();
        protected boolean useSsl = false;
        protected HttpUrlConnectionSource connectionSource = JdkHttpUrlConnectionSource.INSTANCE;

        @Override // com.google.gdata.client.Service.GDataRequestFactory
        public void setAuthToken(AuthTokenFactory.AuthToken authToken) {
            if (authToken != null && !(authToken instanceof HttpAuthToken)) {
                throw new IllegalArgumentException("Invalid token type");
            }
            setAuthToken((HttpAuthToken) authToken);
        }

        public void setAuthToken(HttpAuthToken httpAuthToken) {
            this.authToken = httpAuthToken;
        }

        public void useSsl() {
            this.useSsl = true;
        }

        private void extendHeaderMap(Map<String, String> map, String str, String str2) {
            if (str2 == null) {
                map.remove(str);
            } else {
                map.put(str, str2);
            }
        }

        @Override // com.google.gdata.client.Service.GDataRequestFactory
        public void setHeader(String str, String str2) {
            extendHeaderMap(this.headerMap, str, str2);
        }

        @Override // com.google.gdata.client.Service.GDataRequestFactory
        public void setPrivateHeader(String str, String str2) {
            extendHeaderMap(this.privateHeaderMap, str, str2);
        }

        public void setConnectionSource(HttpUrlConnectionSource httpUrlConnectionSource) {
            if (httpUrlConnectionSource == null) {
                throw new NullPointerException("connectionSource");
            }
            this.connectionSource = httpUrlConnectionSource;
        }

        @Override // com.google.gdata.client.Service.GDataRequestFactory
        public Service.GDataRequest getRequest(Service.GDataRequest.RequestType requestType, URL url, ContentType contentType) throws IOException, ServiceException {
            if (this.useSsl && !url.getProtocol().startsWith("https")) {
                url = new URL(url.toString().replaceFirst("http", "https"));
            }
            return createRequest(requestType, url, contentType);
        }

        @Override // com.google.gdata.client.Service.GDataRequestFactory
        public Service.GDataRequest getRequest(Query query, ContentType contentType) throws IOException, ServiceException {
            return getRequest(Service.GDataRequest.RequestType.QUERY, query.getUrl(), contentType);
        }

        protected Service.GDataRequest createRequest(Service.GDataRequest.RequestType requestType, URL url, ContentType contentType) throws IOException, ServiceException {
            return new HttpGDataRequest(requestType, url, contentType, this.authToken, this.headerMap, this.privateHeaderMap, this.connectionSource);
        }
    }

    protected HttpGDataRequest(Service.GDataRequest.RequestType requestType, URL url, ContentType contentType, HttpAuthToken httpAuthToken, Map<String, String> map, Map<String, String> map2, HttpUrlConnectionSource httpUrlConnectionSource) throws IOException {
        this.executed = false;
        this.connectTimeout = -1;
        this.readTimeout = -1;
        this.inputStream = null;
        this.connectionSource = httpUrlConnectionSource;
        this.type = requestType;
        this.inputType = contentType;
        this.requestUrl = url;
        this.httpConn = getRequestConnection(url);
        this.authToken = httpAuthToken;
        switch (requestType) {
            case QUERY:
                this.hasOutput = true;
                break;
            case INSERT:
            case BATCH:
                this.expectsInput = true;
                this.hasOutput = true;
                setMethod("POST");
                setHeader("Content-Type", contentType.toString());
                break;
            case UPDATE:
                this.expectsInput = true;
                this.hasOutput = true;
                if (Boolean.getBoolean(METHOD_OVERRIDE_PROPERTY)) {
                    setMethod("POST");
                    setHeader("X-HTTP-Method-Override", "PUT");
                } else {
                    setMethod("PUT");
                }
                setHeader("Content-Type", contentType.toString());
                break;
            case PATCH:
                this.expectsInput = true;
                this.hasOutput = true;
                setMethod("POST");
                setHeader("X-HTTP-Method-Override", "PATCH");
                setHeader("Content-Type", contentType.toString());
                break;
            case DELETE:
                if (Boolean.getBoolean(METHOD_OVERRIDE_PROPERTY)) {
                    setMethod("POST");
                    setHeader("X-HTTP-Method-Override", "DELETE");
                } else {
                    setMethod("DELETE");
                }
                setHeader("Content-Length", "0");
                break;
            default:
                throw new UnsupportedOperationException("Unknown request type:" + requestType);
        }
        if (httpAuthToken != null) {
            setPrivateHeader("Authorization", httpAuthToken.getAuthorizationHeader(url, this.httpConn.getRequestMethod()));
        }
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                setHeader(entry.getKey(), entry.getValue());
            }
        }
        if (map2 != null) {
            for (Map.Entry<String, String> entry2 : map2.entrySet()) {
                setPrivateHeader(entry2.getKey(), entry2.getValue());
            }
        }
        setHeader("Accept-Encoding", HttpHeaderValues.GZIP);
        this.httpConn.setDoOutput(this.expectsInput);
    }

    protected HttpGDataRequest() {
        this.executed = false;
        this.connectTimeout = -1;
        this.readTimeout = -1;
        this.inputStream = null;
        this.connectionSource = JdkHttpUrlConnectionSource.INSTANCE;
        this.authToken = null;
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public URL getRequestUrl() {
        return this.requestUrl;
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public ContentType getRequestContentType() {
        return this.inputType;
    }

    protected HttpURLConnection getRequestConnection(URL url) throws IOException {
        try {
            HttpURLConnection httpURLConnectionOpenConnection = this.connectionSource.openConnection(url);
            httpURLConnectionOpenConnection.setUseCaches(false);
            httpURLConnectionOpenConnection.setInstanceFollowRedirects(true);
            return httpURLConnectionOpenConnection;
        } catch (IllegalArgumentException e2) {
            throw new UnsupportedOperationException("Unsupported scheme:" + url.getProtocol());
        }
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public void setConnectTimeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Timeout cannot be negative");
        }
        this.connectTimeout = i;
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public void setReadTimeout(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Timeout cannot be negative");
        }
        this.readTimeout = i;
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public void setIfModifiedSince(DateTime dateTime) {
        if (dateTime != null) {
            if (this.type == Service.GDataRequest.RequestType.QUERY) {
                setHeader("If-Modified-Since", dateTime.toStringRfc822());
                return;
            }
            throw new IllegalStateException("Date conditions not supported for this request type");
        }
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public void setEtag(String str) {
        if (str != null) {
            switch (this.type) {
                case QUERY:
                    if (str != null) {
                        setHeader("If-None-Match", str);
                        return;
                    }
                    return;
                case INSERT:
                case BATCH:
                default:
                    throw new IllegalStateException("Etag conditions not supported for this request type");
                case UPDATE:
                case PATCH:
                case DELETE:
                    if (str != null) {
                        setHeader("If-Match", str);
                        return;
                    }
                    return;
            }
        }
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public OutputStream getRequestStream() throws IOException {
        if (this.expectsInput) {
            return logger.isLoggable(Level.FINEST) ? new LoggableOutputStream(logger, this.httpConn.getOutputStream()) : this.httpConn.getOutputStream();
        }
        throw new IllegalStateException("Request doesn't accept input");
    }

    public XmlWriter getRequestWriter() throws IOException {
        return new XmlWriter(new OutputStreamWriter(getRequestStream(), "utf-8"));
    }

    public void setMethod(String str) throws ProtocolException {
        this.httpConn.setRequestMethod(str);
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(str + " " + this.httpConn.getURL().toExternalForm());
        }
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public void setHeader(String str, String str2) {
        this.httpConn.setRequestProperty(str, str2);
        logger.finer(str + ": " + str2);
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public void setPrivateHeader(String str, String str2) {
        this.httpConn.setRequestProperty(str, str2);
        logger.finer(str + ": <Not Logged>");
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public void execute() throws IOException, ServiceException {
        if (this.connectTimeout >= 0) {
            this.httpConn.setConnectTimeout(this.connectTimeout);
        }
        if (this.readTimeout >= 0) {
            this.httpConn.setReadTimeout(this.readTimeout);
        }
        String property = System.getProperty("http.strictPostRedirect");
        try {
            System.setProperty("http.strictPostRedirect", "true");
            this.httpConn.connect();
            if (logger.isLoggable(Level.FINE)) {
                if (this.httpConn.getURL() != this.requestUrl && !this.httpConn.getURL().toExternalForm().equals(this.requestUrl.toExternalForm())) {
                    logger.fine("Redirected to:" + this.httpConn.getURL().toExternalForm());
                }
                logger.fine(this.httpConn.getResponseCode() + " " + this.httpConn.getResponseMessage());
                if (logger.isLoggable(Level.FINER)) {
                    for (Map.Entry<String, List<String>> entry : this.httpConn.getHeaderFields().entrySet()) {
                        Iterator<String> it = entry.getValue().iterator();
                        while (it.hasNext()) {
                            logger.finer(entry.getKey() + ": " + it.next());
                        }
                    }
                }
            }
            checkResponse();
            this.executed = true;
        } finally {
            if (property == null) {
                System.clearProperty("http.strictPostRedirect");
            } else {
                System.setProperty("http.strictPostRedirect", property);
            }
        }
    }

    protected void checkResponse() throws IOException, ServiceException {
        if (isOAuthProxyErrorResponse()) {
            handleOAuthProxyErrorResponse();
        } else if (this.httpConn.getResponseCode() >= 300) {
            handleErrorResponse();
        }
    }

    private boolean isOAuthProxyErrorResponse() throws IOException {
        Set<String> setKeySet = this.httpConn.getHeaderFields().keySet();
        return setKeySet.contains(OAuthProxyProtocol.Header.X_OAUTH_APPROVAL_URL) || (this.httpConn.getResponseCode() == 200 && (setKeySet.contains(OAuthProxyProtocol.Header.X_OAUTH_ERROR) || setKeySet.contains(OAuthProxyProtocol.Header.X_OAUTH_ERROR_TEXT)));
    }

    private void handleOAuthProxyErrorResponse() throws IOException, ServiceException {
        throw new OAuthProxyException(this.httpConn);
    }

    protected void handleErrorResponse() throws IOException, ServiceException {
        switch (this.httpConn.getResponseCode()) {
            case 304:
                throw new NotModifiedException(this.httpConn);
            case 400:
                throw new InvalidEntryException(this.httpConn);
            case 401:
                throw new AuthenticationException(this.httpConn);
            case 403:
                throw new ServiceForbiddenException(this.httpConn);
            case 404:
                throw new ResourceNotFoundException(this.httpConn);
            case 406:
                throw new NotAcceptableException(this.httpConn);
            case 409:
                throw new VersionConflictException(this.httpConn);
            case 410:
                throw new NoLongerAvailableException(this.httpConn);
            case 412:
                throw new PreconditionFailedException(this.httpConn);
            case 413:
                throw new EntityTooLargeException(this.httpConn);
            case 501:
                throw new NotImplementedException(this.httpConn);
            default:
                throw new ServiceException(this.httpConn);
        }
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public ContentType getResponseContentType() {
        if (!this.executed) {
            throw new IllegalStateException("Must call execute() before attempting to read response");
        }
        String headerField = this.httpConn.getHeaderField("Content-Type");
        if (headerField == null) {
            return null;
        }
        return new ContentType(headerField);
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public String getResponseHeader(String str) {
        return this.httpConn.getHeaderField(str);
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public DateTime getResponseDateHeader(String str) {
        long headerFieldDate = this.httpConn.getHeaderFieldDate(str, -1L);
        if (headerFieldDate >= 0) {
            return new DateTime(headerFieldDate);
        }
        return null;
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public InputStream getResponseStream() throws IOException {
        if (!this.executed) {
            throw new IllegalStateException("Must call execute() before attempting to read response");
        }
        if (!this.hasOutput) {
            throw new IllegalStateException("Request doesn't have response data");
        }
        if (this.inputStream != null) {
            return this.inputStream;
        }
        this.inputStream = this.httpConn.getInputStream();
        if (HttpHeaderValues.GZIP.equalsIgnoreCase(this.httpConn.getContentEncoding())) {
            this.inputStream = new GZIPInputStream(this.inputStream);
        }
        if (logger.isLoggable(Level.FINEST)) {
            return new LoggableInputStream(logger, this.inputStream);
        }
        return this.inputStream;
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public ParseSource getParseSource() throws IOException {
        return new ParseSource(getResponseStream());
    }

    public HttpURLConnection getConnection() {
        return this.httpConn;
    }

    @Override // com.google.gdata.client.Service.GDataRequest
    public void end() {
        try {
            if (this.inputStream != null) {
                this.inputStream.close();
            }
        } catch (IOException e2) {
            logger.log(Level.WARNING, "Error closing response stream", (Throwable) e2);
        }
    }
}
