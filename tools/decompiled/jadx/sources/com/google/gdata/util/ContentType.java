package com.google.gdata.util;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestParameters;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.gdata.client.Service;
import com.google.gdata.data.analytics.Engagement;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mortbay.util.URIUtil;

/* JADX INFO: loaded from: classes3.dex */
public class ContentType implements Serializable {
    public static final String ATTR_CHARSET = "charset";
    private static final String DEFAULT_CHARSET = "charset=UTF-8";
    private static final String STAR = "*";
    private HashMap<String, String> attributes;
    private boolean inferredCharset;
    private boolean locked;
    private String subType;
    private String type;
    private static String TOKEN = "[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+";
    private static Pattern TOKEN_PATTERN = Pattern.compile("^" + TOKEN + "$");
    private static Pattern TYPE_PATTERN = Pattern.compile("(" + TOKEN + ")" + URIUtil.SLASH + "(" + TOKEN + ")\\s*(.*)\\s*", 32);
    private static Pattern ATTR_PATTERN = Pattern.compile("\\s*;\\s*(" + TOKEN + ")\\s*=\\s*(?:\"([^\"]*)\"" + BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR + "(" + TOKEN + ")?)");
    public static final ContentType ATOM = new ContentType("application/atom+xml;charset=UTF-8").lock();
    public static final ContentType ATOM_ENTRY = new ContentType("application/atom+xml;type=entry;charset=UTF-8").lock();
    public static final ContentType ATOM_FEED = new ContentType("application/atom+xml;type=feed;charset=UTF-8").lock();
    public static final ContentType ATOM_SERVICE = new ContentType("application/atomsvc+xml;charset=UTF-8").lock();
    public static final ContentType RSS = new ContentType("application/rss+xml;charset=UTF-8").lock();
    public static final ContentType JSON = new ContentType("application/json;charset=UTF-8").lock();
    public static final ContentType JAVASCRIPT = new ContentType("text/javascript;charset=UTF-8").lock();
    public static final ContentType TEXT_XML = new ContentType("text/xml;charset=UTF-8").lock();
    public static final ContentType TEXT_HTML = new ContentType("text/html;charset=UTF-8").lock();
    public static final ContentType TEXT_PLAIN = new ContentType("text/plain;charset=UTF-8").lock();
    public static final ContentType GDATA_ERROR = new ContentType("application/vnd.google.gdata.error+xml").lock();
    public static final ContentType OPENSEARCH = new ContentType("application/opensearchdescription+xml").lock();
    public static final ContentType MULTIPART_RELATED = new ContentType("multipart/related").lock();
    public static final ContentType APPLICATION_XML = new ContentType(AdobeNetworkHttpRequestParameters.HTTP_CONTENT_TYPE_APPLICATION_XML).lock();
    public static final ContentType MESSAGE_RFC822 = new ContentType("message/rfc822").lock();
    public static final ContentType ANY = new ContentType("*/*").lock();

    public static ContentType getAtomEntry() {
        return Service.getVersion().isCompatible(Service.Versions.V1) ? ATOM : ATOM_ENTRY;
    }

    public static ContentType getAtomFeed() {
        return Service.getVersion().isCompatible(Service.Versions.V1) ? ATOM : ATOM_FEED;
    }

    public static ContentType getBestContentType(String str, List<ContentType> list) {
        ContentType next;
        float f2;
        ContentType contentType;
        String attribute;
        float fFloatValue;
        if (str == null) {
            return list.get(0);
        }
        String[] strArrSplit = str.split(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR);
        int length = strArrSplit.length;
        int i = 0;
        ContentType contentType2 = null;
        float f3 = 0.0f;
        while (i < length) {
            try {
                contentType = new ContentType(strArrSplit[i].trim());
                try {
                    attribute = contentType.getAttribute("q");
                } catch (NumberFormatException e2) {
                    next = contentType2;
                    f2 = f3;
                }
            } catch (IllegalArgumentException e3) {
                next = contentType2;
                f2 = f3;
            }
            if (attribute != null) {
                fFloatValue = Float.valueOf(attribute).floatValue();
                if (fFloatValue <= 0.0f || fFloatValue > 1.0f) {
                    next = contentType2;
                    f2 = f3;
                }
                i++;
                f3 = f2;
                contentType2 = next;
            } else {
                fFloatValue = 1.0f;
            }
            if (fFloatValue >= f3) {
                Iterator<ContentType> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = contentType2;
                        f2 = f3;
                        break;
                    }
                    next = it.next();
                    if (fFloatValue == f3 && contentType2 == next) {
                        next = contentType2;
                        f2 = f3;
                        break;
                    }
                    if (next.match(contentType)) {
                        f2 = fFloatValue;
                        break;
                    }
                }
            } else {
                next = contentType2;
                f2 = f3;
            }
            i++;
            f3 = f2;
            contentType2 = next;
        }
        if (f3 != 0.0f) {
            return contentType2;
        }
        return null;
    }

    public ContentType() {
        this(null);
    }

    public ContentType(String str) {
        this.inferredCharset = false;
        this.attributes = new HashMap<>();
        if (str == null) {
            this.type = "application";
            this.subType = "octet-stream";
            this.attributes.put(ATTR_CHARSET, "iso-8859-1");
            return;
        }
        Matcher matcher = TYPE_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw new IllegalArgumentException("Invalid media type:" + str);
        }
        this.type = matcher.group(1).toLowerCase();
        this.subType = matcher.group(2).toLowerCase();
        if (matcher.groupCount() >= 3) {
            Matcher matcher2 = ATTR_PATTERN.matcher(matcher.group(3));
            while (matcher2.find()) {
                String strGroup = matcher2.group(2);
                if (strGroup == null && (strGroup = matcher2.group(3)) == null) {
                    strGroup = "";
                }
                this.attributes.put(matcher2.group(1).toLowerCase(), strGroup);
            }
            if (!this.attributes.containsKey(ATTR_CHARSET)) {
                this.inferredCharset = true;
                if (this.subType.endsWith("xml")) {
                    if (this.type.equals("application")) {
                        this.attributes.put(ATTR_CHARSET, "utf-8");
                        return;
                    } else {
                        this.attributes.put(ATTR_CHARSET, "us-ascii");
                        return;
                    }
                }
                if (this.subType.equals("json")) {
                    this.attributes.put(ATTR_CHARSET, "utf-8");
                } else {
                    this.attributes.put(ATTR_CHARSET, "iso-8859-1");
                }
            }
        }
    }

    public String getType() {
        return this.type;
    }

    public void setType(String str) {
        assertNotLocked();
        this.type = str;
    }

    public String getSubType() {
        return this.subType;
    }

    public void setSubType(String str) {
        assertNotLocked();
        this.subType = str;
    }

    public String getMediaType() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.type);
        sb.append(URIUtil.SLASH);
        sb.append(this.subType);
        if (this.attributes.containsKey("type")) {
            sb.append(";type=").append(this.attributes.get("type"));
        }
        return sb.toString();
    }

    public ContentType lock() {
        this.locked = true;
        return this;
    }

    private void assertNotLocked() {
        if (this.locked) {
            throw new IllegalStateException("Unmodifiable instance");
        }
    }

    public Map<String, String> getAttributes() {
        return this.locked ? Collections.unmodifiableMap(this.attributes) : this.attributes;
    }

    public String getAttribute(String str) {
        return this.attributes.get(str);
    }

    public String getCharset() {
        return this.attributes.get(ATTR_CHARSET);
    }

    public boolean match(ContentType contentType) {
        String type = contentType.getType();
        String subType = contentType.getSubType();
        return "*".equals(type) || (this.type.equals(type) && (("*".equals(subType) || this.subType.equals(subType)) && (!isAtom() || matchAtom(contentType))));
    }

    private boolean isAtom() {
        return "application".equals(this.type) && "atom+xml".equals(this.subType);
    }

    private boolean matchAtom(ContentType contentType) {
        String attribute = getAttribute("type");
        String attribute2 = contentType.getAttribute("type");
        return attribute == null || attribute2 == null || attribute.equals(attribute2);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.type);
        stringBuffer.append(URIUtil.SLASH);
        stringBuffer.append(this.subType);
        for (String str : this.attributes.keySet()) {
            if (!this.inferredCharset || !ATTR_CHARSET.equals(str)) {
                stringBuffer.append(";");
                stringBuffer.append(str);
                stringBuffer.append(Engagement.Comparison.EQ);
                String str2 = this.attributes.get(str);
                if (TOKEN_PATTERN.matcher(str2).matches()) {
                    stringBuffer.append(str2);
                } else {
                    stringBuffer.append("\"" + str2 + "\"");
                }
            }
        }
        return stringBuffer.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ContentType contentType = (ContentType) obj;
        return this.type.equals(contentType.type) && this.subType.equals(contentType.subType) && this.attributes.equals(contentType.attributes);
    }

    public int hashCode() {
        return (((this.type.hashCode() * 31) + this.subType.hashCode()) * 31) + this.attributes.hashCode();
    }
}
