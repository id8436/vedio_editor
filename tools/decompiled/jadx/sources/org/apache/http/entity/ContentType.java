package org.apache.http.entity;

import com.adobe.creativesdk.foundation.internal.net.AdobeNetworkHttpRequestParameters;
import com.google.gdata.data.sites.SitesLink;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.Locale;
import org.apache.http.Consts;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.ParseException;
import org.apache.http.annotation.Immutable;
import org.apache.http.message.BasicHeaderValueFormatterHC4;
import org.apache.http.message.BasicHeaderValueParserHC4;
import org.apache.http.message.ParserCursor;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.TextUtils;
import org.mortbay.jetty.MimeTypes;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class ContentType implements Serializable {
    private static final long serialVersionUID = -7768694718232371896L;
    private final Charset charset;
    private final String mimeType;
    private final NameValuePair[] params;
    public static final ContentType APPLICATION_ATOM_XML = create("application/atom+xml", Consts.ISO_8859_1);
    public static final ContentType APPLICATION_FORM_URLENCODED = create("application/x-www-form-urlencoded", Consts.ISO_8859_1);
    public static final ContentType APPLICATION_JSON = create("application/json", Consts.UTF_8);
    public static final ContentType APPLICATION_OCTET_STREAM = create("application/octet-stream", (Charset) null);
    public static final ContentType APPLICATION_SVG_XML = create("application/svg+xml", Consts.ISO_8859_1);
    public static final ContentType APPLICATION_XHTML_XML = create(SitesLink.Type.APPLICATION_XHTML_XML, Consts.ISO_8859_1);
    public static final ContentType APPLICATION_XML = create(AdobeNetworkHttpRequestParameters.HTTP_CONTENT_TYPE_APPLICATION_XML, Consts.ISO_8859_1);
    public static final ContentType MULTIPART_FORM_DATA = create("multipart/form-data", Consts.ISO_8859_1);
    public static final ContentType TEXT_HTML = create(MimeTypes.TEXT_HTML, Consts.ISO_8859_1);
    public static final ContentType TEXT_PLAIN = create(MimeTypes.TEXT_PLAIN, Consts.ISO_8859_1);
    public static final ContentType TEXT_XML = create(MimeTypes.TEXT_XML, Consts.ISO_8859_1);
    public static final ContentType WILDCARD = create("*/*", (Charset) null);
    public static final ContentType DEFAULT_TEXT = TEXT_PLAIN;
    public static final ContentType DEFAULT_BINARY = APPLICATION_OCTET_STREAM;

    ContentType(String str, Charset charset) {
        this.mimeType = str;
        this.charset = charset;
        this.params = null;
    }

    ContentType(String str, NameValuePair[] nameValuePairArr) throws UnsupportedCharsetException {
        this.mimeType = str;
        this.params = nameValuePairArr;
        String parameter = getParameter(com.google.gdata.util.ContentType.ATTR_CHARSET);
        this.charset = !TextUtils.isBlank(parameter) ? Charset.forName(parameter) : null;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public String getParameter(String str) {
        Args.notEmpty(str, "Parameter name");
        if (this.params == null) {
            return null;
        }
        for (NameValuePair nameValuePair : this.params) {
            if (nameValuePair.getName().equalsIgnoreCase(str)) {
                return nameValuePair.getValue();
            }
        }
        return null;
    }

    public String toString() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        charArrayBuffer.append(this.mimeType);
        if (this.params != null) {
            charArrayBuffer.append("; ");
            BasicHeaderValueFormatterHC4.INSTANCE.formatParameters(charArrayBuffer, this.params, false);
        } else if (this.charset != null) {
            charArrayBuffer.append("; charset=");
            charArrayBuffer.append(this.charset.name());
        }
        return charArrayBuffer.toString();
    }

    private static boolean valid(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '\"' || cCharAt == ',' || cCharAt == ';') {
                return false;
            }
        }
        return true;
    }

    public static ContentType create(String str, Charset charset) {
        String lowerCase = ((String) Args.notBlank(str, "MIME type")).toLowerCase(Locale.US);
        Args.check(valid(lowerCase), "MIME type may not contain reserved characters");
        return new ContentType(lowerCase, charset);
    }

    public static ContentType create(String str) {
        return new ContentType(str, (Charset) null);
    }

    public static ContentType create(String str, String str2) throws UnsupportedCharsetException {
        return create(str, !TextUtils.isBlank(str2) ? Charset.forName(str2) : null);
    }

    private static ContentType create(HeaderElement headerElement) {
        String name = headerElement.getName();
        NameValuePair[] parameters = headerElement.getParameters();
        if (parameters == null || parameters.length <= 0) {
            parameters = null;
        }
        return new ContentType(name, parameters);
    }

    public static ContentType parse(String str) throws ParseException, UnsupportedCharsetException {
        Args.notNull(str, "Content type");
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(str.length());
        charArrayBuffer.append(str);
        HeaderElement[] elements = BasicHeaderValueParserHC4.INSTANCE.parseElements(charArrayBuffer, new ParserCursor(0, str.length()));
        if (elements.length > 0) {
            return create(elements[0]);
        }
        throw new ParseException("Invalid content type: " + str);
    }

    public static ContentType get(HttpEntity httpEntity) throws ParseException, UnsupportedCharsetException {
        Header contentType;
        if (httpEntity == null || (contentType = httpEntity.getContentType()) == null) {
            return null;
        }
        HeaderElement[] elements = contentType.getElements();
        if (elements.length > 0) {
            return create(elements[0]);
        }
        return null;
    }

    public static ContentType getOrDefault(HttpEntity httpEntity) throws ParseException, UnsupportedCharsetException {
        ContentType contentType = get(httpEntity);
        return contentType != null ? contentType : DEFAULT_TEXT;
    }

    public ContentType withCharset(Charset charset) {
        return create(getMimeType(), charset);
    }

    public ContentType withCharset(String str) {
        return create(getMimeType(), str);
    }
}
