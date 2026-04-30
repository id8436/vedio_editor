package org.apache.http.client.entity;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.utils.URLEncodedUtilsHC4;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntityHC4;

/* JADX INFO: loaded from: classes3.dex */
@NotThreadSafe
public class UrlEncodedFormEntityHC4 extends StringEntityHC4 {
    public UrlEncodedFormEntityHC4(List<? extends NameValuePair> list, String str) throws UnsupportedEncodingException {
        super(URLEncodedUtilsHC4.format(list, str != null ? str : Charset.forName("ISO-8859-1").name()), ContentType.create("application/x-www-form-urlencoded", str));
    }

    public UrlEncodedFormEntityHC4(Iterable<? extends NameValuePair> iterable, Charset charset) {
        super(URLEncodedUtilsHC4.format(iterable, charset != null ? charset : Charset.forName("ISO-8859-1")), ContentType.create("application/x-www-form-urlencoded", charset));
    }

    public UrlEncodedFormEntityHC4(List<? extends NameValuePair> list) throws UnsupportedEncodingException {
        this(list, (Charset) null);
    }

    public UrlEncodedFormEntityHC4(Iterable<? extends NameValuePair> iterable) {
        this(iterable, (Charset) null);
    }
}
