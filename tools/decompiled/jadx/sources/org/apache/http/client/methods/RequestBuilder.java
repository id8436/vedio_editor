package org.apache.http.client.methods;

import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.NameValuePair;
import org.apache.http.ProtocolVersion;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntityHC4;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.message.HeaderGroup;
import org.apache.http.util.Args;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class RequestBuilder {
    private RequestConfig config;
    private HttpEntity entity;
    private HeaderGroup headergroup;
    private String method;
    private LinkedList<NameValuePair> parameters;
    private URI uri;
    private ProtocolVersion version;

    RequestBuilder(String str) {
        this.method = str;
    }

    RequestBuilder() {
        this(null);
    }

    public static RequestBuilder create(String str) {
        Args.notBlank(str, "HTTP method");
        return new RequestBuilder(str);
    }

    public static RequestBuilder get() {
        return new RequestBuilder("GET");
    }

    public static RequestBuilder head() {
        return new RequestBuilder("HEAD");
    }

    public static RequestBuilder post() {
        return new RequestBuilder("POST");
    }

    public static RequestBuilder put() {
        return new RequestBuilder("PUT");
    }

    public static RequestBuilder delete() {
        return new RequestBuilder("DELETE");
    }

    public static RequestBuilder trace() {
        return new RequestBuilder("TRACE");
    }

    public static RequestBuilder options() {
        return new RequestBuilder("OPTIONS");
    }

    public static RequestBuilder copy(HttpRequest httpRequest) {
        Args.notNull(httpRequest, "HTTP request");
        return new RequestBuilder().doCopy(httpRequest);
    }

    private RequestBuilder doCopy(HttpRequest httpRequest) {
        if (httpRequest != null) {
            this.method = httpRequest.getRequestLine().getMethod();
            this.version = httpRequest.getRequestLine().getProtocolVersion();
            if (httpRequest instanceof HttpUriRequest) {
                this.uri = ((HttpUriRequest) httpRequest).getURI();
            } else {
                this.uri = URI.create(httpRequest.getRequestLine().getMethod());
            }
            if (this.headergroup == null) {
                this.headergroup = new HeaderGroup();
            }
            this.headergroup.clear();
            this.headergroup.setHeaders(httpRequest.getAllHeaders());
            if (httpRequest instanceof HttpEntityEnclosingRequest) {
                this.entity = ((HttpEntityEnclosingRequest) httpRequest).getEntity();
            } else {
                this.entity = null;
            }
            if (httpRequest instanceof Configurable) {
                this.config = ((Configurable) httpRequest).getConfig();
            } else {
                this.config = null;
            }
            this.parameters = null;
        }
        return this;
    }

    public String getMethod() {
        return this.method;
    }

    public ProtocolVersion getVersion() {
        return this.version;
    }

    public RequestBuilder setVersion(ProtocolVersion protocolVersion) {
        this.version = protocolVersion;
        return this;
    }

    public URI getUri() {
        return this.uri;
    }

    public RequestBuilder setUri(URI uri) {
        this.uri = uri;
        return this;
    }

    public RequestBuilder setUri(String str) {
        this.uri = str != null ? URI.create(str) : null;
        return this;
    }

    public Header getFirstHeader(String str) {
        if (this.headergroup != null) {
            return this.headergroup.getFirstHeader(str);
        }
        return null;
    }

    public Header getLastHeader(String str) {
        if (this.headergroup != null) {
            return this.headergroup.getLastHeader(str);
        }
        return null;
    }

    public Header[] getHeaders(String str) {
        if (this.headergroup != null) {
            return this.headergroup.getHeaders(str);
        }
        return null;
    }

    public RequestBuilder addHeader(Header header) {
        if (this.headergroup == null) {
            this.headergroup = new HeaderGroup();
        }
        this.headergroup.addHeader(header);
        return this;
    }

    public RequestBuilder addHeader(String str, String str2) {
        if (this.headergroup == null) {
            this.headergroup = new HeaderGroup();
        }
        this.headergroup.addHeader(new BasicHeader(str, str2));
        return this;
    }

    public RequestBuilder removeHeader(Header header) {
        if (this.headergroup == null) {
            this.headergroup = new HeaderGroup();
        }
        this.headergroup.removeHeader(header);
        return this;
    }

    public RequestBuilder removeHeaders(String str) {
        if (str != null && this.headergroup != null) {
            HeaderIterator it = this.headergroup.iterator();
            while (it.hasNext()) {
                if (str.equalsIgnoreCase(it.nextHeader().getName())) {
                    it.remove();
                }
            }
        }
        return this;
    }

    public RequestBuilder setHeader(Header header) {
        if (this.headergroup == null) {
            this.headergroup = new HeaderGroup();
        }
        this.headergroup.updateHeader(header);
        return this;
    }

    public RequestBuilder setHeader(String str, String str2) {
        if (this.headergroup == null) {
            this.headergroup = new HeaderGroup();
        }
        this.headergroup.updateHeader(new BasicHeader(str, str2));
        return this;
    }

    public HttpEntity getEntity() {
        return this.entity;
    }

    public RequestBuilder setEntity(HttpEntity httpEntity) {
        this.entity = httpEntity;
        return this;
    }

    public List<NameValuePair> getParameters() {
        return this.parameters != null ? new ArrayList(this.parameters) : new ArrayList();
    }

    public RequestBuilder addParameter(NameValuePair nameValuePair) {
        Args.notNull(nameValuePair, "Name value pair");
        if (this.parameters == null) {
            this.parameters = new LinkedList<>();
        }
        this.parameters.add(nameValuePair);
        return this;
    }

    public RequestBuilder addParameter(String str, String str2) {
        return addParameter(new BasicNameValuePair(str, str2));
    }

    public RequestBuilder addParameters(NameValuePair... nameValuePairArr) {
        for (NameValuePair nameValuePair : nameValuePairArr) {
            addParameter(nameValuePair);
        }
        return this;
    }

    public RequestConfig getConfig() {
        return this.config;
    }

    public RequestBuilder setConfig(RequestConfig requestConfig) {
        this.config = requestConfig;
        return this;
    }

    public HttpUriRequest build() throws URISyntaxException {
        URI uriBuild;
        HttpRequestBaseHC4 internalRequest;
        URI uriCreate = this.uri != null ? this.uri : URI.create(URIUtil.SLASH);
        HttpEntity urlEncodedFormEntityHC4 = this.entity;
        if (this.parameters == null || this.parameters.isEmpty()) {
            uriBuild = uriCreate;
        } else if (urlEncodedFormEntityHC4 == null && ("POST".equalsIgnoreCase(this.method) || "PUT".equalsIgnoreCase(this.method))) {
            urlEncodedFormEntityHC4 = new UrlEncodedFormEntityHC4(this.parameters, Charset.forName("ISO-8859-1"));
            uriBuild = uriCreate;
        } else {
            try {
                uriBuild = new URIBuilder(uriCreate).addParameters(this.parameters).build();
            } catch (URISyntaxException e2) {
                uriBuild = uriCreate;
            }
        }
        if (urlEncodedFormEntityHC4 == null) {
            internalRequest = new InternalRequest(this.method);
        } else {
            InternalEntityEclosingRequest internalEntityEclosingRequest = new InternalEntityEclosingRequest(this.method);
            internalEntityEclosingRequest.setEntity(urlEncodedFormEntityHC4);
            internalRequest = internalEntityEclosingRequest;
        }
        internalRequest.setProtocolVersion(this.version);
        internalRequest.setURI(uriBuild);
        if (this.headergroup != null) {
            internalRequest.setHeaders(this.headergroup.getAllHeaders());
        }
        internalRequest.setConfig(this.config);
        return internalRequest;
    }

    class InternalRequest extends HttpRequestBaseHC4 {
        private final String method;

        InternalRequest(String str) {
            this.method = str;
        }

        @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return this.method;
        }
    }

    class InternalEntityEclosingRequest extends HttpEntityEnclosingRequestBaseHC4 {
        private final String method;

        InternalEntityEclosingRequest(String str) {
            this.method = str;
        }

        @Override // org.apache.http.client.methods.HttpRequestBaseHC4, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return this.method;
        }
    }
}
