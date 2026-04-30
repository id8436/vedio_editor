package com.google.gdata.util;

import com.google.gdata.client.authn.oauthproxy.OAuthProxyProtocol;
import com.google.gdata.client.authn.oauthproxy.OAuthProxyResponse;
import com.google.gdata.util.ErrorContent;
import com.google.gdata.util.common.base.CharEscapers;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ServiceException extends Exception {
    ErrorElement errorElement;
    int httpErrorCodeOverride;
    Map<String, List<String>> httpHeaders;
    String responseBody;
    ContentType responseContentType;
    List<ServiceException> siblings;

    public ServiceException(String str) {
        super(nullsafe(str));
        this.httpErrorCodeOverride = -1;
        this.errorElement = new ErrorElement();
        this.siblings = new ArrayList(1);
        this.siblings.add(this);
        this.httpHeaders = new HashMap();
    }

    public ServiceException(String str, Throwable th) {
        this(str);
        initCause(th);
    }

    public ServiceException(Throwable th) {
        this(th.getMessage());
        initCause(th);
    }

    public ServiceException(HttpURLConnection httpURLConnection) throws IOException {
        super(nullsafe(httpURLConnection.getResponseMessage()));
        this.httpErrorCodeOverride = -1;
        this.errorElement = new ErrorElement();
        this.siblings = new ArrayList(1);
        this.siblings.add(this);
        try {
            new ServiceExceptionInitializer(this).parse(httpURLConnection);
        } catch (ParseException e2) {
            this.errorElement = new ErrorElement();
            this.siblings.clear();
            this.siblings.add(this);
            this.responseContentType = ContentType.TEXT_PLAIN;
        }
    }

    public ServiceException(ErrorContent errorContent) {
        this(errorContent.getInternalReason());
        this.errorElement = new ErrorElement(errorContent);
    }

    public ServiceException(ErrorContent errorContent, Throwable th) {
        this(errorContent);
        initCause(th);
    }

    @Override // java.lang.Throwable
    public Throwable initCause(Throwable th) {
        super.initCause(th);
        if (th instanceof ServiceException) {
            addSibling((ServiceException) th);
        }
        return this;
    }

    private static String nullsafe(String str) {
        return str != null ? str : "Exception message unavailable";
    }

    public int getHttpErrorCodeOverride() {
        return this.httpErrorCodeOverride;
    }

    public void setHttpErrorCodeOverride(int i) {
        this.httpErrorCodeOverride = i;
    }

    public ContentType getResponseContentType() {
        return this.responseContentType;
    }

    public void setResponseContentType(ContentType contentType) {
        if (contentType == null) {
            throw new NullPointerException("Null content type");
        }
        this.responseContentType = contentType;
    }

    public String getResponseBody() {
        return this.responseBody;
    }

    public void setResponseBody(String str) {
        if (str == null) {
            throw new NullPointerException("Null response body");
        }
        this.responseBody = str;
        try {
            new ServiceExceptionInitializer(this).parse(this.responseContentType, this.responseBody);
        } catch (ParseException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    public void setResponse(ContentType contentType, String str) {
        if (contentType == null) {
            throw new NullPointerException("Null content type");
        }
        if (str == null) {
            throw new NullPointerException("Null response body");
        }
        this.responseContentType = contentType;
        setResponseBody(str);
    }

    public String toXmlErrorMessage() {
        return toXmlErrorMessage(false);
    }

    public String toXmlErrorMessage(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("<errors xmlns='http://schemas.google.com/g/2005'>\n");
        Iterator<ServiceException> it = this.siblings.iterator();
        while (it.hasNext()) {
            addXmlError(it.next(), sb, z);
        }
        sb.append("</errors>\n");
        return sb.toString();
    }

    private String escape(String str) {
        return CharEscapers.xmlEscaper().escape(str);
    }

    private void addXmlError(ServiceException serviceException, StringBuilder sb, boolean z) {
        String debugInfo;
        sb.append("<error>\n");
        String domainName = serviceException.getDomainName();
        sb.append("<domain>");
        sb.append(escape(domainName));
        sb.append("</domain>\n");
        String codeName = serviceException.getCodeName();
        sb.append("<code>");
        sb.append(escape(codeName));
        sb.append("</code>\n");
        String location = serviceException.getLocation();
        ErrorContent.LocationType locationTypeWithDefault = serviceException.getLocationTypeWithDefault();
        if (location != null) {
            sb.append("<location type='");
            sb.append(escape(locationTypeWithDefault.toString()));
            sb.append("'>");
            sb.append(escape(location));
            sb.append("</location>\n");
        }
        String internalReason = serviceException.getInternalReason();
        if (internalReason != null) {
            sb.append("<internalReason>");
            sb.append(escape(internalReason));
            sb.append("</internalReason>\n");
        }
        String extendedHelp = serviceException.getExtendedHelp();
        if (extendedHelp != null) {
            sb.append("<extendedHelp>");
            sb.append(escape(extendedHelp));
            sb.append("</extendedHelp>\n");
        }
        String sendReport = serviceException.getSendReport();
        if (sendReport != null) {
            sb.append("<sendReport>");
            sb.append(escape(sendReport));
            sb.append("</sendReport>\n");
        }
        if (z && (debugInfo = serviceException.getDebugInfo()) != null) {
            sb.append("<debugInfo>");
            sb.append(escape(debugInfo));
            sb.append("</debugInfo>\n");
        }
        sb.append("</error>\n");
    }

    public Map<String, List<String>> getHttpHeaders() {
        return this.httpHeaders;
    }

    public List<String> getHttpHeader(String str) {
        if (str == null) {
            return this.httpHeaders.get(str);
        }
        for (String str2 : this.httpHeaders.keySet()) {
            if (str2 != null && str2.toLowerCase().equals(str.toLowerCase())) {
                return this.httpHeaders.get(str2);
            }
        }
        return null;
    }

    @Override // java.lang.Throwable
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        if (this.responseBody != null) {
            sb.append('\n');
            sb.append(this.responseBody);
        }
        return sb.toString();
    }

    public String getDomainName() {
        String domainName = this.errorElement.getDomainName();
        return domainName != null ? domainName : "GData";
    }

    public void setDomain(String str) {
        this.errorElement.setDomain(str);
    }

    public String getCodeName() {
        String codeName = this.errorElement.getCodeName();
        return codeName != null ? codeName : getClass().getSimpleName();
    }

    public void setCode(String str) {
        this.errorElement.setCode(str);
    }

    public String getLocation() {
        return this.errorElement.getLocation();
    }

    public ErrorContent.LocationType getLocationType() {
        return this.errorElement.getLocationType();
    }

    private ErrorContent.LocationType getLocationTypeWithDefault() {
        ErrorContent.LocationType locationType = getLocationType();
        return locationType != null ? locationType : ErrorContent.LocationType.OTHER;
    }

    public void setXpathLocation(String str) {
        this.errorElement.setXpathLocation(str);
    }

    public void setHeaderLocation(String str) {
        this.errorElement.setHeaderLocation(str);
    }

    public void setLocation(String str) {
        this.errorElement.setLocation(str);
    }

    public String getInternalReason() {
        String internalReason = this.errorElement.getInternalReason();
        return internalReason != null ? internalReason : super.getMessage();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return getInternalReason();
    }

    public void setInternalReason(String str) {
        this.errorElement.setInternalReason(str);
    }

    public String getExtendedHelp() {
        return this.errorElement.getExtendedHelp();
    }

    public void setExtendedHelp(String str) {
        this.errorElement.setExtendedHelp(str);
    }

    public String getSendReport() {
        return this.errorElement.getSendReport();
    }

    public void setSendReport(String str) {
        this.errorElement.setSendReport(str);
    }

    public String getDebugInfo() {
        return this.errorElement.getDebugInfo();
    }

    public void setDebugInfo(String str) {
        this.errorElement.setDebugInfo(str);
    }

    public List<ServiceException> getSiblings() {
        return Collections.unmodifiableList(new ArrayList(this.siblings));
    }

    public ServiceException addSibling(ServiceException serviceException) {
        if (serviceException == null) {
            throw new NullPointerException("Null exception being added");
        }
        for (ServiceException serviceException2 : serviceException.siblings) {
            if (!this.siblings.contains(serviceException2)) {
                this.siblings.add(serviceException2);
            }
            serviceException2.siblings = this.siblings;
        }
        return this;
    }

    public boolean matches(ErrorContent errorContent) {
        return getDomainName().equals(errorContent.getDomainName()) && getCodeName().equals(errorContent.getCodeName());
    }

    public boolean matchesAny(ErrorContent errorContent) {
        Iterator<ServiceException> it = this.siblings.iterator();
        while (it.hasNext()) {
            if (it.next().matches(errorContent)) {
                return true;
            }
        }
        return false;
    }

    public boolean hasOAuthProxyResponse() {
        return this.httpHeaders.containsKey(OAuthProxyProtocol.Header.X_OAUTH_APPROVAL_URL) || this.httpHeaders.containsKey(OAuthProxyProtocol.Header.X_OAUTH_STATE) || this.httpHeaders.containsKey(OAuthProxyProtocol.Header.X_OAUTH_ERROR) || this.httpHeaders.containsKey(OAuthProxyProtocol.Header.X_OAUTH_ERROR);
    }

    public OAuthProxyResponse getOAuthProxyResponse() {
        return new OAuthProxyResponse(this.httpHeaders);
    }
}
