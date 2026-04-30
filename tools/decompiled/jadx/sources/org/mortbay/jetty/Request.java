package org.mortbay.jetty;

import com.google.gdata.data.analytics.Engagement;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.security.Principal;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.EventListener;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestWrapper;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.IOUtils;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferUtil;
import org.mortbay.io.EndPoint;
import org.mortbay.io.Portable;
import org.mortbay.io.nio.DirectNIOBuffer;
import org.mortbay.io.nio.IndirectNIOBuffer;
import org.mortbay.jetty.HttpConnection;
import org.mortbay.jetty.handler.ContextHandler;
import org.mortbay.jetty.security.Authenticator;
import org.mortbay.jetty.security.SecurityHandler;
import org.mortbay.jetty.security.UserRealm;
import org.mortbay.log.Log;
import org.mortbay.util.Attributes;
import org.mortbay.util.AttributesMap;
import org.mortbay.util.LazyList;
import org.mortbay.util.MultiMap;
import org.mortbay.util.StringUtil;
import org.mortbay.util.URIUtil;
import org.mortbay.util.UrlEncoded;
import org.mortbay.util.ajax.Continuation;

/* JADX INFO: loaded from: classes3.dex */
public class Request implements HttpServletRequest {
    private static final int _STREAM = 1;
    private static final int __NONE = 0;
    private static final int __READER = 2;
    private static final Collection __defaultLocale = Collections.singleton(Locale.getDefault());
    private Attributes _attributes;
    private String _authType;
    private MultiMap _baseParameters;
    private String _characterEncoding;
    private HttpConnection _connection;
    private ContextHandler.SContext _context;
    private String _contextPath;
    private Continuation _continuation;
    private Cookie[] _cookies;
    private boolean _cookiesExtracted;
    private boolean _dns;
    private EndPoint _endp;
    private boolean _handled;
    private int _inputState;
    private String _method;
    private MultiMap _parameters;
    private boolean _paramsExtracted;
    private String _pathInfo;
    private int _port;
    private String _protocol;
    private String _queryEncoding;
    private String _queryString;
    private BufferedReader _reader;
    private String _readerEncoding;
    private String _remoteAddr;
    private String _remoteHost;
    private Object _requestAttributeListeners;
    private Object _requestListeners;
    private String _requestURI;
    private String _requestedSessionId;
    private boolean _requestedSessionIdFromCookie;
    private Map _roleMap;
    private Map _savedNewSessions;
    private String _scheme;
    private String _serverName;
    private String _servletName;
    private String _servletPath;
    private HttpSession _session;
    private SessionManager _sessionManager;
    private long _timeStamp;
    private Buffer _timeStampBuffer;
    private String[] _unparsedCookies;
    private HttpURI _uri;
    private Principal _userPrincipal;
    private UserRealm _userRealm;

    public Request() {
        this._handled = false;
        this._protocol = HttpVersions.HTTP_1_1;
        this._requestedSessionIdFromCookie = false;
        this._scheme = "http";
        this._inputState = 0;
        this._dns = false;
        this._cookiesExtracted = false;
    }

    public Request(HttpConnection httpConnection) {
        this._handled = false;
        this._protocol = HttpVersions.HTTP_1_1;
        this._requestedSessionIdFromCookie = false;
        this._scheme = "http";
        this._inputState = 0;
        this._dns = false;
        this._cookiesExtracted = false;
        this._connection = httpConnection;
        this._endp = httpConnection.getEndPoint();
        this._dns = this._connection.getResolveNames();
    }

    protected void setConnection(HttpConnection httpConnection) {
        this._connection = httpConnection;
        this._endp = httpConnection.getEndPoint();
        this._dns = httpConnection.getResolveNames();
    }

    protected void recycle() {
        if (this._inputState == 2) {
            try {
                int i = this._reader.read();
                while (i != -1) {
                    i = this._reader.read();
                }
            } catch (Exception e2) {
                Log.ignore(e2);
                this._reader = null;
            }
        }
        this._handled = false;
        if (this._context != null) {
            throw new IllegalStateException("Request in context!");
        }
        if (this._attributes != null) {
            this._attributes.clearAttributes();
        }
        this._authType = null;
        this._characterEncoding = null;
        this._queryEncoding = null;
        this._context = null;
        this._serverName = null;
        this._method = null;
        this._pathInfo = null;
        this._port = 0;
        this._protocol = HttpVersions.HTTP_1_1;
        this._queryString = null;
        this._requestedSessionId = null;
        this._requestedSessionIdFromCookie = false;
        this._session = null;
        this._sessionManager = null;
        this._requestURI = null;
        this._scheme = "http";
        this._servletPath = null;
        this._timeStamp = 0L;
        this._timeStampBuffer = null;
        this._uri = null;
        this._userPrincipal = null;
        if (this._baseParameters != null) {
            this._baseParameters.clear();
        }
        this._parameters = null;
        this._paramsExtracted = false;
        this._inputState = 0;
        this._cookiesExtracted = false;
        if (this._savedNewSessions != null) {
            this._savedNewSessions.clear();
        }
        this._savedNewSessions = null;
        if (this._continuation != null && this._continuation.isPending()) {
            this._continuation.reset();
        }
    }

    public Buffer getTimeStampBuffer() {
        if (this._timeStampBuffer == null && this._timeStamp > 0) {
            this._timeStampBuffer = HttpFields.__dateCache.formatBuffer(this._timeStamp);
        }
        return this._timeStampBuffer;
    }

    public long getTimeStamp() {
        return this._timeStamp;
    }

    public void setTimeStamp(long j) {
        this._timeStamp = j;
    }

    public boolean isHandled() {
        return this._handled;
    }

    public void setHandled(boolean z) {
        this._handled = z;
    }

    @Override // javax.servlet.ServletRequest
    public Object getAttribute(String str) {
        if ("org.mortbay.jetty.ajax.Continuation".equals(str)) {
            return getContinuation(true);
        }
        if (this._attributes == null) {
            return null;
        }
        return this._attributes.getAttribute(str);
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getAttributeNames() {
        return this._attributes == null ? Collections.enumeration(Collections.EMPTY_LIST) : AttributesMap.getAttributeNamesCopy(this._attributes);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getAuthType() {
        return this._authType;
    }

    @Override // javax.servlet.ServletRequest
    public String getCharacterEncoding() {
        return this._characterEncoding;
    }

    public long getContentRead() {
        if (this._connection == null || this._connection.getParser() == null) {
            return -1L;
        }
        return ((HttpParser) this._connection.getParser()).getContentRead();
    }

    @Override // javax.servlet.ServletRequest
    public int getContentLength() {
        return (int) this._connection.getRequestFields().getLongField(HttpHeaders.CONTENT_LENGTH_BUFFER);
    }

    @Override // javax.servlet.ServletRequest
    public String getContentType() {
        return this._connection.getRequestFields().getStringField(HttpHeaders.CONTENT_TYPE_BUFFER);
    }

    public void setContentType(String str) {
        this._connection.getRequestFields().put(HttpHeaders.CONTENT_TYPE_BUFFER, str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getContextPath() {
        return this._contextPath;
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x0309  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0102 A[ADDED_TO_REGION] */
    @Override // javax.servlet.http.HttpServletRequest
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public javax.servlet.http.Cookie[] getCookies() {
        /*
            Method dump skipped, instruction units count: 904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.Request.getCookies():javax.servlet.http.Cookie[]");
    }

    @Override // javax.servlet.http.HttpServletRequest
    public long getDateHeader(String str) {
        return this._connection.getRequestFields().getDateField(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getHeader(String str) {
        return this._connection.getRequestFields().getStringField(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Enumeration getHeaderNames() {
        return this._connection.getRequestFields().getFieldNames();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Enumeration getHeaders(String str) {
        Enumeration values = this._connection.getRequestFields().getValues(str);
        if (values == null) {
            return Collections.enumeration(Collections.EMPTY_LIST);
        }
        return values;
    }

    @Override // javax.servlet.ServletRequest
    public ServletInputStream getInputStream() throws IOException {
        if (this._inputState != 0 && this._inputState != 1) {
            throw new IllegalStateException("READER");
        }
        this._inputState = 1;
        return this._connection.getInputStream();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public int getIntHeader(String str) {
        return (int) this._connection.getRequestFields().getLongField(str);
    }

    @Override // javax.servlet.ServletRequest
    public String getLocalAddr() {
        if (this._endp == null) {
            return null;
        }
        return this._endp.getLocalAddr();
    }

    @Override // javax.servlet.ServletRequest
    public Locale getLocale() {
        Enumeration values = this._connection.getRequestFields().getValues("Accept-Language", HttpFields.__separators);
        if (values == null || !values.hasMoreElements()) {
            return Locale.getDefault();
        }
        List listQualityList = HttpFields.qualityList(values);
        if (listQualityList.size() == 0) {
            return Locale.getDefault();
        }
        if (0 < listQualityList.size()) {
            String strValueParameters = HttpFields.valueParameters((String) listQualityList.get(0), null);
            String strTrim = "";
            int iIndexOf = strValueParameters.indexOf(45);
            if (iIndexOf > -1) {
                strTrim = strValueParameters.substring(iIndexOf + 1).trim();
                strValueParameters = strValueParameters.substring(0, iIndexOf).trim();
            }
            return new Locale(strValueParameters, strTrim);
        }
        return Locale.getDefault();
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getLocales() {
        Enumeration values = this._connection.getRequestFields().getValues("Accept-Language", HttpFields.__separators);
        if (values == null || !values.hasMoreElements()) {
            return Collections.enumeration(__defaultLocale);
        }
        List listQualityList = HttpFields.qualityList(values);
        if (listQualityList.size() == 0) {
            return Collections.enumeration(__defaultLocale);
        }
        int size = listQualityList.size();
        int i = 0;
        Object objAdd = null;
        while (i < size) {
            String strValueParameters = HttpFields.valueParameters((String) listQualityList.get(i), null);
            String strTrim = "";
            int iIndexOf = strValueParameters.indexOf(45);
            if (iIndexOf > -1) {
                strTrim = strValueParameters.substring(iIndexOf + 1).trim();
                strValueParameters = strValueParameters.substring(0, iIndexOf).trim();
            }
            i++;
            objAdd = LazyList.add(LazyList.ensureSize(objAdd, size), new Locale(strValueParameters, strTrim));
        }
        if (LazyList.size(objAdd) == 0) {
            return Collections.enumeration(__defaultLocale);
        }
        return Collections.enumeration(LazyList.getList(objAdd));
    }

    @Override // javax.servlet.ServletRequest
    public String getLocalName() {
        if (this._dns) {
            if (this._endp == null) {
                return null;
            }
            return this._endp.getLocalHost();
        }
        if (this._endp != null) {
            return this._endp.getLocalAddr();
        }
        return null;
    }

    @Override // javax.servlet.ServletRequest
    public int getLocalPort() {
        if (this._endp == null) {
            return 0;
        }
        return this._endp.getLocalPort();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getMethod() {
        return this._method;
    }

    @Override // javax.servlet.ServletRequest
    public String getParameter(String str) {
        if (!this._paramsExtracted) {
            extractParameters();
        }
        return (String) this._parameters.getValue(str, 0);
    }

    @Override // javax.servlet.ServletRequest
    public Map getParameterMap() {
        if (!this._paramsExtracted) {
            extractParameters();
        }
        return Collections.unmodifiableMap(this._parameters.toStringArrayMap());
    }

    @Override // javax.servlet.ServletRequest
    public Enumeration getParameterNames() {
        if (!this._paramsExtracted) {
            extractParameters();
        }
        return Collections.enumeration(this._parameters.keySet());
    }

    @Override // javax.servlet.ServletRequest
    public String[] getParameterValues(String str) {
        if (!this._paramsExtracted) {
            extractParameters();
        }
        List values = this._parameters.getValues(str);
        if (values == null) {
            return null;
        }
        return (String[]) values.toArray(new String[values.size()]);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getPathInfo() {
        return this._pathInfo;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getPathTranslated() {
        if (this._pathInfo == null || this._context == null) {
            return null;
        }
        return this._context.getRealPath(this._pathInfo);
    }

    @Override // javax.servlet.ServletRequest
    public String getProtocol() {
        return this._protocol;
    }

    @Override // javax.servlet.ServletRequest
    public BufferedReader getReader() throws IOException {
        if (this._inputState != 0 && this._inputState != 2) {
            throw new IllegalStateException("STREAMED");
        }
        if (this._inputState == 2) {
            return this._reader;
        }
        String characterEncoding = getCharacterEncoding();
        if (characterEncoding == null) {
            characterEncoding = StringUtil.__ISO_8859_1;
        }
        if (this._reader == null || !characterEncoding.equalsIgnoreCase(this._readerEncoding)) {
            ServletInputStream inputStream = getInputStream();
            this._readerEncoding = characterEncoding;
            this._reader = new BufferedReader(this, new InputStreamReader(inputStream, characterEncoding), inputStream) { // from class: org.mortbay.jetty.Request.1
                private final Request this$0;
                private final ServletInputStream val$in;

                {
                    this.this$0 = this;
                    this.val$in = inputStream;
                }

                @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
                public void close() throws IOException {
                    this.val$in.close();
                }
            };
        }
        this._inputState = 2;
        return this._reader;
    }

    @Override // javax.servlet.ServletRequest
    public String getRealPath(String str) {
        if (this._context == null) {
            return null;
        }
        return this._context.getRealPath(str);
    }

    @Override // javax.servlet.ServletRequest
    public String getRemoteAddr() {
        if (this._remoteAddr != null) {
            return this._remoteAddr;
        }
        if (this._endp == null) {
            return null;
        }
        return this._endp.getRemoteAddr();
    }

    @Override // javax.servlet.ServletRequest
    public String getRemoteHost() {
        if (this._dns) {
            if (this._remoteHost != null) {
                return this._remoteHost;
            }
            if (this._endp == null) {
                return null;
            }
            return this._endp.getRemoteHost();
        }
        return getRemoteAddr();
    }

    @Override // javax.servlet.ServletRequest
    public int getRemotePort() {
        if (this._endp == null) {
            return 0;
        }
        return this._endp.getRemotePort();
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRemoteUser() {
        Principal userPrincipal = getUserPrincipal();
        if (userPrincipal == null) {
            return null;
        }
        return userPrincipal.getName();
    }

    @Override // javax.servlet.ServletRequest
    public RequestDispatcher getRequestDispatcher(String str) {
        String strSubstring;
        if (str == null || this._context == null) {
            return null;
        }
        if (!str.startsWith(URIUtil.SLASH)) {
            String strAddPaths = URIUtil.addPaths(this._servletPath, this._pathInfo);
            int iLastIndexOf = strAddPaths.lastIndexOf(URIUtil.SLASH);
            if (iLastIndexOf > 1) {
                strSubstring = strAddPaths.substring(0, iLastIndexOf + 1);
            } else {
                strSubstring = URIUtil.SLASH;
            }
            str = URIUtil.addPaths(strSubstring, str);
        }
        return this._context.getRequestDispatcher(str);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRequestedSessionId() {
        return this._requestedSessionId;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getRequestURI() {
        if (this._requestURI == null && this._uri != null) {
            this._requestURI = this._uri.getPathAndParam();
        }
        return this._requestURI;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public StringBuffer getRequestURL() {
        StringBuffer stringBuffer = new StringBuffer(48);
        synchronized (stringBuffer) {
            String scheme = getScheme();
            int serverPort = getServerPort();
            stringBuffer.append(scheme);
            stringBuffer.append("://");
            stringBuffer.append(getServerName());
            if (this._port > 0 && ((scheme.equalsIgnoreCase("http") && serverPort != 80) || (scheme.equalsIgnoreCase("https") && serverPort != 443))) {
                stringBuffer.append(':');
                stringBuffer.append(this._port);
            }
            stringBuffer.append(getRequestURI());
        }
        return stringBuffer;
    }

    @Override // javax.servlet.ServletRequest
    public String getScheme() {
        return this._scheme;
    }

    @Override // javax.servlet.ServletRequest
    public String getServerName() {
        if (this._serverName != null) {
            return this._serverName;
        }
        this._serverName = this._uri.getHost();
        this._port = this._uri.getPort();
        if (this._serverName != null) {
            return this._serverName;
        }
        Buffer buffer = this._connection.getRequestFields().get(HttpHeaders.HOST_BUFFER);
        if (buffer != null) {
            int length = buffer.length();
            while (true) {
                int i = length - 1;
                if (length > 0) {
                    if (buffer.peek(buffer.getIndex() + i) == 58) {
                        this._serverName = BufferUtil.to8859_1_String(buffer.peek(buffer.getIndex(), i));
                        this._port = BufferUtil.toInt(buffer.peek(buffer.getIndex() + i + 1, (buffer.length() - i) - 1));
                        return this._serverName;
                    }
                    length = i;
                } else {
                    if (this._serverName == null || this._port < 0) {
                        this._serverName = BufferUtil.to8859_1_String(buffer);
                        this._port = 0;
                    }
                    return this._serverName;
                }
            }
        } else {
            if (this._connection != null) {
                this._serverName = getLocalName();
                this._port = getLocalPort();
                if (this._serverName != null && !Portable.ALL_INTERFACES.equals(this._serverName)) {
                    return this._serverName;
                }
            }
            try {
                this._serverName = InetAddress.getLocalHost().getHostAddress();
            } catch (UnknownHostException e2) {
                Log.ignore(e2);
            }
            return this._serverName;
        }
    }

    @Override // javax.servlet.ServletRequest
    public int getServerPort() {
        if (this._port <= 0) {
            if (this._serverName == null) {
                getServerName();
            }
            if (this._port <= 0) {
                if (this._serverName != null && this._uri != null) {
                    this._port = this._uri.getPort();
                } else {
                    this._port = this._endp == null ? 0 : this._endp.getLocalPort();
                }
            }
        }
        if (this._port <= 0) {
            if (getScheme().equalsIgnoreCase("https")) {
                return 443;
            }
            return 80;
        }
        return this._port;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getServletPath() {
        if (this._servletPath == null) {
            this._servletPath = "";
        }
        return this._servletPath;
    }

    public String getServletName() {
        return this._servletName;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public HttpSession getSession() {
        return getSession(true);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public HttpSession getSession(boolean z) {
        if (this._sessionManager == null && z) {
            throw new IllegalStateException("No SessionHandler or SessionManager");
        }
        if (this._session != null && this._sessionManager != null && this._sessionManager.isValid(this._session)) {
            return this._session;
        }
        this._session = null;
        String requestedSessionId = getRequestedSessionId();
        if (requestedSessionId != null && this._sessionManager != null) {
            this._session = this._sessionManager.getHttpSession(requestedSessionId);
            if (this._session == null && !z) {
                return null;
            }
        }
        if (this._session == null && this._sessionManager != null && z) {
            this._session = this._sessionManager.newHttpSession(this);
            Cookie sessionCookie = this._sessionManager.getSessionCookie(this._session, getContextPath(), isSecure());
            if (sessionCookie != null) {
                this._connection.getResponse().addCookie(sessionCookie);
            }
        }
        return this._session;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public Principal getUserPrincipal() {
        if (this._userPrincipal != null && (this._userPrincipal instanceof SecurityHandler.NotChecked)) {
            SecurityHandler.NotChecked notChecked = (SecurityHandler.NotChecked) this._userPrincipal;
            this._userPrincipal = SecurityHandler.__NO_USER;
            Authenticator authenticator = notChecked.getSecurityHandler().getAuthenticator();
            UserRealm userRealm = notChecked.getSecurityHandler().getUserRealm();
            String servletPath = getPathInfo() == null ? getServletPath() : new StringBuffer().append(getServletPath()).append(getPathInfo()).toString();
            if (userRealm != null && authenticator != null) {
                try {
                    authenticator.authenticate(userRealm, servletPath, this, null);
                } catch (Exception e2) {
                    Log.ignore(e2);
                }
            }
        }
        if (this._userPrincipal == SecurityHandler.__NO_USER) {
            return null;
        }
        return this._userPrincipal;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public String getQueryString() {
        if (this._queryString == null && this._uri != null) {
            if (this._queryEncoding == null) {
                this._queryString = this._uri.getQuery();
            } else {
                this._queryString = this._uri.getQuery(this._queryEncoding);
            }
        }
        return this._queryString;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromCookie() {
        return this._requestedSessionId != null && this._requestedSessionIdFromCookie;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromUrl() {
        return (this._requestedSessionId == null || this._requestedSessionIdFromCookie) ? false : true;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdFromURL() {
        return (this._requestedSessionId == null || this._requestedSessionIdFromCookie) ? false : true;
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isRequestedSessionIdValid() {
        HttpSession session;
        if (this._requestedSessionId == null || (session = getSession(false)) == null) {
            return false;
        }
        return this._sessionManager.getIdManager().getClusterId(this._requestedSessionId).equals(this._sessionManager.getClusterId(session));
    }

    @Override // javax.servlet.ServletRequest
    public boolean isSecure() {
        return this._connection.isConfidential(this);
    }

    @Override // javax.servlet.http.HttpServletRequest
    public boolean isUserInRole(String str) {
        String str2;
        if (this._roleMap != null && (str2 = (String) this._roleMap.get(str)) != null) {
            str = str2;
        }
        Principal userPrincipal = getUserPrincipal();
        if (this._userRealm == null || userPrincipal == null) {
            return false;
        }
        return this._userRealm.isUserInRole(userPrincipal, str);
    }

    @Override // javax.servlet.ServletRequest
    public void removeAttribute(String str) {
        Object attribute = this._attributes == null ? null : this._attributes.getAttribute(str);
        if (this._attributes != null) {
            this._attributes.removeAttribute(str);
        }
        if (attribute != null && this._requestAttributeListeners != null) {
            ServletRequestAttributeEvent servletRequestAttributeEvent = new ServletRequestAttributeEvent(this._context, this, str, attribute);
            int size = LazyList.size(this._requestAttributeListeners);
            for (int i = 0; i < size; i++) {
                ServletRequestAttributeListener servletRequestAttributeListener = (ServletRequestAttributeListener) LazyList.get(this._requestAttributeListeners, i);
                if (servletRequestAttributeListener instanceof ServletRequestAttributeListener) {
                    servletRequestAttributeListener.attributeRemoved(servletRequestAttributeEvent);
                }
            }
        }
    }

    @Override // javax.servlet.ServletRequest
    public void setAttribute(String str, Object obj) {
        Object attribute = this._attributes == null ? null : this._attributes.getAttribute(str);
        if ("org.mortbay.jetty.Request.queryEncoding".equals(str)) {
            setQueryEncoding(obj != null ? obj.toString() : null);
        } else if ("org.mortbay.jetty.ResponseBuffer".equals(str)) {
            try {
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                synchronized (byteBuffer) {
                    ((HttpConnection.Output) getServletResponse().getOutputStream()).sendResponse(byteBuffer.isDirect() ? new DirectNIOBuffer(byteBuffer, true) : new IndirectNIOBuffer(byteBuffer, true));
                }
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        }
        if (this._attributes == null) {
            this._attributes = new AttributesMap();
        }
        this._attributes.setAttribute(str, obj);
        if (this._requestAttributeListeners != null) {
            ServletRequestAttributeEvent servletRequestAttributeEvent = new ServletRequestAttributeEvent(this._context, this, str, attribute == null ? obj : attribute);
            int size = LazyList.size(this._requestAttributeListeners);
            for (int i = 0; i < size; i++) {
                ServletRequestAttributeListener servletRequestAttributeListener = (ServletRequestAttributeListener) LazyList.get(this._requestAttributeListeners, i);
                if (servletRequestAttributeListener instanceof ServletRequestAttributeListener) {
                    ServletRequestAttributeListener servletRequestAttributeListener2 = servletRequestAttributeListener;
                    if (attribute == null) {
                        servletRequestAttributeListener2.attributeAdded(servletRequestAttributeEvent);
                    } else if (obj == null) {
                        servletRequestAttributeListener2.attributeRemoved(servletRequestAttributeEvent);
                    } else {
                        servletRequestAttributeListener2.attributeReplaced(servletRequestAttributeEvent);
                    }
                }
            }
        }
    }

    @Override // javax.servlet.ServletRequest
    public void setCharacterEncoding(String str) throws UnsupportedEncodingException {
        if (this._inputState == 0) {
            this._characterEncoding = str;
            if (!StringUtil.isUTF8(str)) {
                "".getBytes(str);
            }
        }
    }

    public void setCharacterEncodingUnchecked(String str) {
        this._characterEncoding = str;
    }

    private void extractParameters() {
        int contentLength;
        int iIntValue;
        if (this._baseParameters == null) {
            this._baseParameters = new MultiMap(16);
        }
        if (this._paramsExtracted) {
            if (this._parameters == null) {
                this._parameters = this._baseParameters;
                return;
            }
            return;
        }
        this._paramsExtracted = true;
        if (this._uri != null && this._uri.hasQuery()) {
            if (this._queryEncoding == null) {
                this._uri.decodeQueryTo(this._baseParameters);
            } else {
                try {
                    this._uri.decodeQueryTo(this._baseParameters, this._queryEncoding);
                } catch (UnsupportedEncodingException e2) {
                    if (Log.isDebugEnabled()) {
                        Log.warn(e2);
                    } else {
                        Log.warn(e2.toString());
                    }
                }
            }
        }
        String characterEncoding = getCharacterEncoding();
        String contentType = getContentType();
        if (contentType != null && contentType.length() > 0 && "application/x-www-form-urlencoded".equalsIgnoreCase(HttpFields.valueParameters(contentType, null)) && this._inputState == 0 && (("POST".equals(getMethod()) || "PUT".equals(getMethod())) && (contentLength = getContentLength()) != 0)) {
            try {
                if (this._context != null) {
                    iIntValue = this._context.getContextHandler().getMaxFormContentSize();
                } else {
                    Integer num = (Integer) this._connection.getConnector().getServer().getAttribute("org.mortbay.jetty.Request.maxFormContentSize");
                    iIntValue = num != null ? num.intValue() : -1;
                }
                if (contentLength > iIntValue && iIntValue > 0) {
                    throw new IllegalStateException(new StringBuffer().append("Form too large").append(contentLength).append(Engagement.Comparison.GT).append(iIntValue).toString());
                }
                ServletInputStream inputStream = getInputStream();
                MultiMap multiMap = this._baseParameters;
                if (contentLength >= 0) {
                    iIntValue = -1;
                }
                UrlEncoded.decodeTo(inputStream, multiMap, characterEncoding, iIntValue);
            } catch (IOException e3) {
                if (Log.isDebugEnabled()) {
                    Log.warn(e3);
                } else {
                    Log.warn(e3.toString());
                }
            }
        }
        if (this._parameters == null) {
            this._parameters = this._baseParameters;
            return;
        }
        if (this._parameters != this._baseParameters) {
            for (Map.Entry entry : this._baseParameters.entrySet()) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                for (int i = 0; i < LazyList.size(value); i++) {
                    this._parameters.add(str, LazyList.get(value, i));
                }
            }
        }
    }

    public void setServerName(String str) {
        this._serverName = str;
    }

    public void setServerPort(int i) {
        this._port = i;
    }

    public void setRemoteAddr(String str) {
        this._remoteAddr = str;
    }

    public void setRemoteHost(String str) {
        this._remoteHost = str;
    }

    public HttpURI getUri() {
        return this._uri;
    }

    public void setUri(HttpURI httpURI) {
        this._uri = httpURI;
    }

    public HttpConnection getConnection() {
        return this._connection;
    }

    public int getInputState() {
        return this._inputState;
    }

    public void setAuthType(String str) {
        this._authType = str;
    }

    public void setCookies(Cookie[] cookieArr) {
        this._cookies = cookieArr;
    }

    public void setMethod(String str) {
        this._method = str;
    }

    public void setPathInfo(String str) {
        this._pathInfo = str;
    }

    public void setProtocol(String str) {
        this._protocol = str;
    }

    public void setRequestedSessionId(String str) {
        this._requestedSessionId = str;
    }

    public SessionManager getSessionManager() {
        return this._sessionManager;
    }

    public void setSessionManager(SessionManager sessionManager) {
        this._sessionManager = sessionManager;
    }

    public void setRequestedSessionIdFromCookie(boolean z) {
        this._requestedSessionIdFromCookie = z;
    }

    public void setSession(HttpSession httpSession) {
        this._session = httpSession;
    }

    public void setScheme(String str) {
        this._scheme = str;
    }

    public void setQueryString(String str) {
        this._queryString = str;
    }

    public void setRequestURI(String str) {
        this._requestURI = str;
    }

    public void setContextPath(String str) {
        this._contextPath = str;
    }

    public void setServletPath(String str) {
        this._servletPath = str;
    }

    public void setServletName(String str) {
        this._servletName = str;
    }

    public void setUserPrincipal(Principal principal) {
        this._userPrincipal = principal;
    }

    public void setContext(ContextHandler.SContext sContext) {
        this._context = sContext;
    }

    public ContextHandler.SContext getContext() {
        return this._context;
    }

    public StringBuffer getRootURL() {
        StringBuffer stringBuffer = new StringBuffer(48);
        synchronized (stringBuffer) {
            String scheme = getScheme();
            int serverPort = getServerPort();
            stringBuffer.append(scheme);
            stringBuffer.append("://");
            stringBuffer.append(getServerName());
            if (serverPort > 0 && ((scheme.equalsIgnoreCase("http") && serverPort != 80) || (scheme.equalsIgnoreCase("https") && serverPort != 443))) {
                stringBuffer.append(':');
                stringBuffer.append(serverPort);
            }
        }
        return stringBuffer;
    }

    public Attributes getAttributes() {
        if (this._attributes == null) {
            this._attributes = new AttributesMap();
        }
        return this._attributes;
    }

    public void setAttributes(Attributes attributes) {
        this._attributes = attributes;
    }

    public Continuation getContinuation() {
        return this._continuation;
    }

    public Continuation getContinuation(boolean z) {
        if (this._continuation == null && z) {
            this._continuation = getConnection().getConnector().newContinuation();
        }
        return this._continuation;
    }

    void setContinuation(Continuation continuation) {
        this._continuation = continuation;
    }

    public MultiMap getParameters() {
        return this._parameters;
    }

    public void setParameters(MultiMap multiMap) {
        if (multiMap == null) {
            multiMap = this._baseParameters;
        }
        this._parameters = multiMap;
        if (this._paramsExtracted && this._parameters == null) {
            throw new IllegalStateException();
        }
    }

    public String toString() {
        return new StringBuffer().append(getMethod()).append(" ").append(this._uri).append(" ").append(getProtocol()).append(IOUtils.LINE_SEPARATOR_UNIX).append(this._connection.getRequestFields().toString()).toString();
    }

    public static Request getRequest(HttpServletRequest httpServletRequest) {
        if (httpServletRequest instanceof Request) {
            return (Request) httpServletRequest;
        }
        ServletRequest servletRequest = httpServletRequest;
        while (servletRequest instanceof ServletRequestWrapper) {
            servletRequest = (HttpServletRequest) ((ServletRequestWrapper) servletRequest).getRequest();
        }
        if (servletRequest instanceof Request) {
            return (Request) servletRequest;
        }
        return HttpConnection.getCurrentConnection().getRequest();
    }

    public void addEventListener(EventListener eventListener) {
        if (eventListener instanceof ServletRequestAttributeListener) {
            this._requestAttributeListeners = LazyList.add(this._requestAttributeListeners, eventListener);
        }
    }

    public void removeEventListener(EventListener eventListener) {
        this._requestAttributeListeners = LazyList.remove(this._requestAttributeListeners, eventListener);
    }

    public void setRequestListeners(Object obj) {
        this._requestListeners = obj;
    }

    public Object takeRequestListeners() {
        Object obj = this._requestListeners;
        this._requestListeners = null;
        return obj;
    }

    public void saveNewSession(Object obj, HttpSession httpSession) {
        if (this._savedNewSessions == null) {
            this._savedNewSessions = new HashMap();
        }
        this._savedNewSessions.put(obj, httpSession);
    }

    public HttpSession recoverNewSession(Object obj) {
        if (this._savedNewSessions == null) {
            return null;
        }
        return (HttpSession) this._savedNewSessions.get(obj);
    }

    public UserRealm getUserRealm() {
        return this._userRealm;
    }

    public void setUserRealm(UserRealm userRealm) {
        this._userRealm = userRealm;
    }

    public String getQueryEncoding() {
        return this._queryEncoding;
    }

    public void setQueryEncoding(String str) {
        this._queryEncoding = str;
        this._queryString = null;
    }

    public void setRoleMap(Map map) {
        this._roleMap = map;
    }

    public Map getRoleMap() {
        return this._roleMap;
    }

    public ServletContext getServletContext() {
        return this._context;
    }

    public ServletResponse getServletResponse() {
        return this._connection.getResponse();
    }
}
