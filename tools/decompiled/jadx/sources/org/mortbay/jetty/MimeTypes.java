package org.mortbay.jetty;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferCache;
import org.mortbay.log.Log;
import org.mortbay.util.StringUtil;

/* JADX INFO: loaded from: classes3.dex */
public class MimeTypes {
    public static final String FORM_ENCODED = "application/x-www-form-urlencoded";
    private static final int FORM_ENCODED_ORDINAL = 1;
    private static final int MESSAGE_HTTP_ORDINAL = 2;
    private static final int MULTIPART_BYTERANGES_ORDINAL = 3;
    private static final int TEXT_HTML_8859_1_ORDINAL = 7;
    private static final int TEXT_HTML_ORDINAL = 4;
    private static final int TEXT_HTML_UTF_8_ORDINAL = 10;
    private static final int TEXT_JSON_ORDINAL = 13;
    private static final int TEXT_JSON_UTF_8_ORDINAL = 14;
    private static final int TEXT_PLAIN_8859_1_ORDINAL = 8;
    private static final int TEXT_PLAIN_ORDINAL = 5;
    private static final int TEXT_PLAIN_UTF_8_ORDINAL = 11;
    private static final int TEXT_XML_8859_1_ORDINAL = 9;
    private static final int TEXT_XML_ORDINAL = 6;
    private static final int TEXT_XML_UTF_8_ORDINAL = 12;
    private Map _mimeMap;
    private static int __index = 15;
    public static final BufferCache CACHE = new BufferCache();
    public static final BufferCache.CachedBuffer FORM_ENCODED_BUFFER = CACHE.add("application/x-www-form-urlencoded", 1);
    public static final String MESSAGE_HTTP = "message/http";
    public static final BufferCache.CachedBuffer MESSAGE_HTTP_BUFFER = CACHE.add(MESSAGE_HTTP, 2);
    public static final String MULTIPART_BYTERANGES = "multipart/byteranges";
    public static final BufferCache.CachedBuffer MULTIPART_BYTERANGES_BUFFER = CACHE.add(MULTIPART_BYTERANGES, 3);
    public static final String TEXT_HTML = "text/html";
    public static final BufferCache.CachedBuffer TEXT_HTML_BUFFER = CACHE.add(TEXT_HTML, 4);
    public static final String TEXT_PLAIN = "text/plain";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_BUFFER = CACHE.add(TEXT_PLAIN, 5);
    public static final String TEXT_XML = "text/xml";
    public static final BufferCache.CachedBuffer TEXT_XML_BUFFER = CACHE.add(TEXT_XML, 6);
    public static final String TEXT_HTML_8859_1 = "text/html; charset=iso-8859-1";
    public static final BufferCache.CachedBuffer TEXT_HTML_8859_1_BUFFER = new BufferCache.CachedBuffer(TEXT_HTML_8859_1, 7);
    public static final String TEXT_PLAIN_8859_1 = "text/plain; charset=iso-8859-1";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_8859_1_BUFFER = new BufferCache.CachedBuffer(TEXT_PLAIN_8859_1, 8);
    public static final String TEXT_XML_8859_1 = "text/xml; charset=iso-8859-1";
    public static final BufferCache.CachedBuffer TEXT_XML_8859_1_BUFFER = new BufferCache.CachedBuffer(TEXT_XML_8859_1, 9);
    public static final String TEXT_HTML_UTF_8 = "text/html; charset=utf-8";
    public static final BufferCache.CachedBuffer TEXT_HTML_UTF_8_BUFFER = new BufferCache.CachedBuffer(TEXT_HTML_UTF_8, 10);
    public static final String TEXT_PLAIN_UTF_8 = "text/plain; charset=utf-8";
    public static final BufferCache.CachedBuffer TEXT_PLAIN_UTF_8_BUFFER = new BufferCache.CachedBuffer(TEXT_PLAIN_UTF_8, 11);
    public static final String TEXT_XML_UTF_8 = "text/xml; charset=utf-8";
    public static final BufferCache.CachedBuffer TEXT_XML_UTF_8_BUFFER = new BufferCache.CachedBuffer(TEXT_XML_UTF_8, 12);
    public static final String TEXT_JSON = "text/json";
    public static final BufferCache.CachedBuffer TEXT_JSON_BUFFER = CACHE.add(TEXT_JSON, 13);
    public static final String TEXT_JSON_UTF_8 = "text/json;charset=UTF-8";
    public static final BufferCache.CachedBuffer TEXT_JSON_UTF_8_BUFFER = CACHE.add(TEXT_JSON_UTF_8, 14);
    private static final Map __dftMimeMap = new HashMap();
    private static final Map __encodings = new HashMap();

    static {
        try {
            ResourceBundle bundle = ResourceBundle.getBundle("org/mortbay/jetty/mime");
            Enumeration<String> keys = bundle.getKeys();
            while (keys.hasMoreElements()) {
                String strNextElement = keys.nextElement();
                __dftMimeMap.put(StringUtil.asciiToLowerCase(strNextElement), normalizeMimeType(bundle.getString(strNextElement)));
            }
        } catch (MissingResourceException e2) {
            Log.warn(e2.toString());
            Log.debug(e2);
        }
        try {
            ResourceBundle bundle2 = ResourceBundle.getBundle("org/mortbay/jetty/encoding");
            Enumeration<String> keys2 = bundle2.getKeys();
            while (keys2.hasMoreElements()) {
                Buffer bufferNormalizeMimeType = normalizeMimeType(keys2.nextElement());
                __encodings.put(bufferNormalizeMimeType, bundle2.getString(bufferNormalizeMimeType.toString()));
            }
        } catch (MissingResourceException e3) {
            Log.warn(e3.toString());
            Log.debug(e3);
        }
        TEXT_HTML_BUFFER.setAssociate("ISO-8859-1", TEXT_HTML_8859_1_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("ISO_8859_1", TEXT_HTML_8859_1_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("iso-8859-1", TEXT_HTML_8859_1_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("ISO-8859-1", TEXT_PLAIN_8859_1_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("ISO_8859_1", TEXT_PLAIN_8859_1_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("iso-8859-1", TEXT_PLAIN_8859_1_BUFFER);
        TEXT_XML_BUFFER.setAssociate("ISO-8859-1", TEXT_XML_8859_1_BUFFER);
        TEXT_XML_BUFFER.setAssociate("ISO_8859_1", TEXT_XML_8859_1_BUFFER);
        TEXT_XML_BUFFER.setAssociate("iso-8859-1", TEXT_XML_8859_1_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("UTF-8", TEXT_HTML_UTF_8_BUFFER);
        TEXT_HTML_BUFFER.setAssociate(StringUtil.__UTF8Alt, TEXT_HTML_UTF_8_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("utf8", TEXT_HTML_UTF_8_BUFFER);
        TEXT_HTML_BUFFER.setAssociate("utf-8", TEXT_HTML_UTF_8_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("UTF-8", TEXT_PLAIN_UTF_8_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate(StringUtil.__UTF8Alt, TEXT_PLAIN_UTF_8_BUFFER);
        TEXT_PLAIN_BUFFER.setAssociate("utf-8", TEXT_PLAIN_UTF_8_BUFFER);
        TEXT_XML_BUFFER.setAssociate("UTF-8", TEXT_XML_UTF_8_BUFFER);
        TEXT_XML_BUFFER.setAssociate("utf8", TEXT_XML_UTF_8_BUFFER);
        TEXT_XML_BUFFER.setAssociate(StringUtil.__UTF8Alt, TEXT_XML_UTF_8_BUFFER);
        TEXT_XML_BUFFER.setAssociate("utf-8", TEXT_XML_UTF_8_BUFFER);
        TEXT_JSON_BUFFER.setAssociate("UTF-8", TEXT_JSON_UTF_8_BUFFER);
        TEXT_JSON_BUFFER.setAssociate("utf8", TEXT_JSON_UTF_8_BUFFER);
        TEXT_JSON_BUFFER.setAssociate(StringUtil.__UTF8Alt, TEXT_JSON_UTF_8_BUFFER);
        TEXT_JSON_BUFFER.setAssociate("utf-8", TEXT_JSON_UTF_8_BUFFER);
    }

    public synchronized Map getMimeMap() {
        return this._mimeMap;
    }

    public void setMimeMap(Map map) {
        if (map == null) {
            this._mimeMap = null;
            return;
        }
        HashMap map2 = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            map2.put(entry.getKey(), normalizeMimeType(entry.getValue().toString()));
        }
        this._mimeMap = map2;
    }

    public Buffer getMimeByExtension(String str) {
        Buffer buffer = null;
        if (str != null) {
            int iIndexOf = -1;
            while (buffer == null) {
                iIndexOf = str.indexOf(".", iIndexOf + 1);
                if (iIndexOf < 0 || iIndexOf >= str.length()) {
                    break;
                }
                String strAsciiToLowerCase = StringUtil.asciiToLowerCase(str.substring(iIndexOf + 1));
                if (this._mimeMap != null) {
                    buffer = (Buffer) this._mimeMap.get(strAsciiToLowerCase);
                }
                if (buffer == null) {
                    buffer = (Buffer) __dftMimeMap.get(strAsciiToLowerCase);
                }
            }
        }
        if (buffer == null) {
            if (this._mimeMap != null) {
                buffer = (Buffer) this._mimeMap.get("*");
            }
            if (buffer == null) {
                return (Buffer) __dftMimeMap.get("*");
            }
            return buffer;
        }
        return buffer;
    }

    public void addMimeMapping(String str, String str2) {
        if (this._mimeMap == null) {
            this._mimeMap = new HashMap();
        }
        this._mimeMap.put(StringUtil.asciiToLowerCase(str), normalizeMimeType(str2));
    }

    private static synchronized Buffer normalizeMimeType(String str) {
        BufferCache.CachedBuffer cachedBufferAdd;
        cachedBufferAdd = CACHE.get(str);
        if (cachedBufferAdd == null) {
            BufferCache bufferCache = CACHE;
            int i = __index;
            __index = i + 1;
            cachedBufferAdd = bufferCache.add(str, i);
        }
        return cachedBufferAdd;
    }

    /* JADX WARN: Code restructure failed: missing block: B:104:0x002e, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getCharsetFromContentType(org.mortbay.io.Buffer r12) {
        /*
            Method dump skipped, instruction units count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.MimeTypes.getCharsetFromContentType(org.mortbay.io.Buffer):java.lang.String");
    }
}
