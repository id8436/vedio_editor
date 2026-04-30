package com.google.gdata.client.http;

import com.google.gdata.client.GDataProtocol;
import com.google.gdata.client.GoogleAuthTokenFactory;
import com.google.gdata.client.GoogleService;
import com.google.gdata.client.Service;
import com.google.gdata.client.http.HttpGDataRequest;
import com.google.gdata.data.analytics.Engagement;
import com.google.gdata.util.AuthenticationException;
import com.google.gdata.util.ContentType;
import com.google.gdata.util.RedirectRequiredException;
import com.google.gdata.util.ServiceException;
import com.google.gdata.util.Version;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.net.CookieHandler;
import java.net.URI;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class GoogleGDataRequest extends HttpGDataRequest {
    public static final String DISABLE_COOKIE_HANDLER_PROPERTY = "com.google.gdata.DisableCookieHandler";
    private static final ThreadLocal<GoogleService> activeService;
    private static final GoogleCookieHandler googleCookieHandler;
    private static final Logger logger = Logger.getLogger(GoogleGDataRequest.class.getName());
    private Version responseVersion;
    private GoogleService service;

    static {
        try {
            if (Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null) {
                System.setProperty(DISABLE_COOKIE_HANDLER_PROPERTY, "true");
            }
        } catch (ClassNotFoundException e2) {
        } catch (IllegalAccessException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (InvocationTargetException e5) {
        }
        activeService = new ThreadLocal<>();
        if (!Boolean.getBoolean(DISABLE_COOKIE_HANDLER_PROPERTY)) {
            googleCookieHandler = new GoogleCookieHandler();
        } else {
            googleCookieHandler = null;
        }
    }

    public class Factory extends HttpGDataRequest.Factory {
        @Override // com.google.gdata.client.http.HttpGDataRequest.Factory
        protected Service.GDataRequest createRequest(Service.GDataRequest.RequestType requestType, URL url, ContentType contentType) throws IOException, ServiceException {
            return new GoogleGDataRequest(requestType, url, contentType, this.authToken, this.headerMap, this.privateHeaderMap, this.connectionSource);
        }
    }

    public class GoogleCookie {
        private String domain;
        private Date expires;
        private String name;
        private String path;
        private String value;

        public String getDomain() {
            return this.domain;
        }

        public String getPath() {
            return this.path;
        }

        public String getName() {
            return this.name;
        }

        String getValue() {
            return this.value;
        }

        public Date getExpires() {
            if (this.expires != null) {
                return (Date) this.expires.clone();
            }
            return null;
        }

        public GoogleCookie(URI uri, String str) {
            int iLastIndexOf;
            String[] strArrSplit = str.split(";");
            String strTrim = strArrSplit[0].trim();
            int iIndexOf = strTrim.indexOf(61);
            if (iIndexOf < 0) {
                throw new IllegalArgumentException("Cookie is not a name/value pair");
            }
            this.name = strTrim.substring(0, iIndexOf);
            this.value = strTrim.substring(iIndexOf + 1);
            this.path = URIUtil.SLASH;
            this.domain = uri.getHost();
            for (int i = 1; i < strArrSplit.length; i++) {
                String strTrim2 = strArrSplit[i].trim();
                int iIndexOf2 = strTrim2.indexOf(61);
                if (iIndexOf2 != -1) {
                    String strSubstring = strTrim2.substring(0, iIndexOf2);
                    String strSubstring2 = strTrim2.substring(iIndexOf2 + 1);
                    if (strSubstring.equalsIgnoreCase("domain")) {
                        if (uri.getPort() > 0 && (iLastIndexOf = strSubstring2.lastIndexOf(58)) > 0) {
                            strSubstring2 = strSubstring2.substring(0, iLastIndexOf);
                        }
                        String host = uri.getHost();
                        if (host.equals(strSubstring2)) {
                            this.domain = strSubstring2;
                        } else if (!matchDomain(host, strSubstring2)) {
                            throw new IllegalArgumentException("Trying to set foreign cookie");
                        }
                        this.domain = strSubstring2;
                    } else if (strSubstring.equalsIgnoreCase("path")) {
                        this.path = strSubstring2;
                    } else if (strSubstring.equalsIgnoreCase("expires")) {
                        try {
                            this.expires = new SimpleDateFormat("E, dd-MMM-yyyy k:m:s 'GMT'", Locale.US).parse(strSubstring2);
                        } catch (ParseException e2) {
                            try {
                                this.expires = new SimpleDateFormat("E, dd MMM yyyy k:m:s 'GMT'", Locale.US).parse(strSubstring2);
                            } catch (ParseException e3) {
                                throw new IllegalArgumentException("Bad date format in header: " + strSubstring2);
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        }

        private boolean matchDomain(String str, String str2) {
            if (str.endsWith(str2)) {
                return str.length() == str2.length() || str2.charAt(0) == '.' || str.charAt((str.length() - str2.length()) + (-1)) == '.';
            }
            return false;
        }

        public boolean hasExpired() {
            if (this.expires == null) {
                return false;
            }
            return new Date().after(this.expires);
        }

        public boolean matches(URI uri) {
            if (hasExpired() || !matchDomain(uri.getHost(), this.domain)) {
                return false;
            }
            String path = uri.getPath();
            if (path == null) {
                path = URIUtil.SLASH;
            }
            return path.startsWith(this.path);
        }

        String getHeaderValue() {
            return this.name + Engagement.Comparison.EQ + this.value;
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof GoogleCookie)) {
                return false;
            }
            GoogleCookie googleCookie = (GoogleCookie) obj;
            if (!this.name.equals(googleCookie.name) || !this.domain.equals(googleCookie.domain)) {
                return false;
            }
            if (this.path == null) {
                return googleCookie.path == null;
            }
            return this.path.equals(googleCookie.path);
        }

        public int hashCode() {
            return (this.path != null ? this.path.hashCode() : 0) + ((((this.name.hashCode() + 629) * 37) + this.domain.hashCode()) * 37);
        }

        public String toString() {
            return "GoogleCookie(" + this.domain + this.path + "[" + this.name + "])";
        }
    }

    class GoogleCookieHandler extends CookieHandler {
        private CookieHandler nextHandler;

        private GoogleCookieHandler() {
            if (!Boolean.getBoolean(GoogleGDataRequest.DISABLE_COOKIE_HANDLER_PROPERTY)) {
                GoogleGDataRequest.logger.fine("Installing GoogleCookieHandler");
                this.nextHandler = CookieHandler.getDefault();
                CookieHandler.setDefault(this);
            }
        }

        @Override // java.net.CookieHandler
        public Map<String, List<String>> get(URI uri, Map<String, List<String>> map) throws IOException {
            HashMap map2 = new HashMap();
            GoogleService googleService = (GoogleService) GoogleGDataRequest.activeService.get();
            if (googleService != null && googleService.handlesCookies()) {
                Set<GoogleCookie> cookies = googleService.getCookies();
                StringBuilder sb = new StringBuilder();
                for (GoogleCookie googleCookie : cookies) {
                    if (googleCookie.matches(uri)) {
                        if (sb.length() > 0) {
                            sb.append("; ");
                        }
                        sb.append(googleCookie.getHeaderValue());
                        GoogleGDataRequest.logger.fine("Setting cookie: " + googleCookie);
                    }
                }
                if (sb.length() != 0) {
                    map2.put("Cookie", Collections.singletonList(sb.toString()));
                }
            } else if (this.nextHandler != null) {
                return this.nextHandler.get(uri, map);
            }
            return Collections.unmodifiableMap(map2);
        }

        @Override // java.net.CookieHandler
        public void put(URI uri, Map<String, List<String>> map) throws IOException {
            GoogleService googleService = (GoogleService) GoogleGDataRequest.activeService.get();
            if (googleService != null && googleService.handlesCookies()) {
                List<String> list = map.get("Set-Cookie");
                if (list != null && list.size() > 0) {
                    Iterator<String> it = list.iterator();
                    while (it.hasNext()) {
                        GoogleCookie googleCookie = new GoogleCookie(uri, it.next());
                        googleService.addCookie(googleCookie);
                        GoogleGDataRequest.logger.fine("Adding cookie:" + googleCookie);
                    }
                    return;
                }
                return;
            }
            if (this.nextHandler != null) {
                this.nextHandler.get(uri, map);
            }
        }
    }

    protected GoogleGDataRequest(Service.GDataRequest.RequestType requestType, URL url, ContentType contentType, HttpAuthToken httpAuthToken, Map<String, String> map, Map<String, String> map2, HttpUrlConnectionSource httpUrlConnectionSource) throws IOException {
        super(requestType, url, contentType, httpAuthToken, map, map2, httpUrlConnectionSource);
    }

    public Version getRequestVersion() {
        return this.service.getProtocolVersion();
    }

    public Version getResponseVersion() {
        if (!this.executed) {
            throw new IllegalStateException("Request has not been executed");
        }
        return this.responseVersion;
    }

    public void setService(GoogleService googleService) {
        this.service = googleService;
        if (!Boolean.getBoolean("GoogleGDataRequest.disableVersionHeader")) {
            try {
                Version protocolVersion = googleService.getProtocolVersion();
                if (protocolVersion != null) {
                    setHeader(GDataProtocol.Header.VERSION, protocolVersion.getVersionString());
                }
            } catch (IllegalStateException e2) {
            }
        }
    }

    @Override // com.google.gdata.client.http.HttpGDataRequest, com.google.gdata.client.Service.GDataRequest
    public void execute() throws IOException, ServiceException {
        GoogleService googleService;
        try {
            activeService.set(this.service);
            this.httpConn.setInstanceFollowRedirects(false);
            super.execute();
            String headerField = this.httpConn.getHeaderField(GDataProtocol.Header.VERSION);
            if (headerField != null && (googleService = activeService.get()) != null) {
                this.responseVersion = new Version(googleService.getClass(), headerField, new Version[0]);
            }
        } finally {
            activeService.set(null);
        }
    }

    @Override // com.google.gdata.client.http.HttpGDataRequest
    protected void handleErrorResponse() throws IOException, ServiceException {
        try {
            switch (this.httpConn.getResponseCode()) {
                case 301:
                case 302:
                    throw new RedirectRequiredException(this.httpConn);
                default:
                    super.handleErrorResponse();
                    return;
            }
        } catch (AuthenticationException e2) {
            String message = e2.getMessage();
            if ((message != null && message.contains("Token expired")) || (this.authToken != null && (this.authToken instanceof GoogleAuthTokenFactory.OAuth2Token))) {
                GoogleService.SessionExpiredException sessionExpiredException = new GoogleService.SessionExpiredException(e2.getMessage());
                sessionExpiredException.setResponse(e2.getResponseContentType(), e2.getResponseBody());
                throw sessionExpiredException;
            }
            throw e2;
        }
    }
}
