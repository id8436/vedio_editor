package com.google.gdata.util.common.net;

import com.google.gdata.util.common.base.CharEscapers;
import com.google.gdata.util.common.base.Charsets;
import com.google.gdata.util.common.base.Preconditions;
import com.google.gdata.util.httputil.FastURLEncoder;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes3.dex */
public final class UriEncoder {
    public static final Charset DEFAULT_ENCODING = Charsets.UTF_8;

    private UriEncoder() {
    }

    public static String encode(String str) {
        return CharEscapers.uriEscaper().escape(str);
    }

    public static String encode(String str, Charset charset) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(charset);
        if (charset.equals(DEFAULT_ENCODING)) {
            return encode(str);
        }
        try {
            return FastURLEncoder.encode(str, charset.name());
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    public static String decode(String str) {
        return decode(str, DEFAULT_ENCODING);
    }

    public static String decode(String str, Charset charset) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(charset);
        try {
            return URLDecoder.decode(str, charset.name());
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException(e2);
        }
    }
}
