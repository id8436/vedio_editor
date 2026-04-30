package org.mortbay.jetty;

import java.io.UnsupportedEncodingException;
import org.mortbay.util.MultiMap;
import org.mortbay.util.StringUtil;
import org.mortbay.util.TypeUtil;
import org.mortbay.util.UrlEncoded;
import org.mortbay.util.Utf8StringBuffer;

/* JADX INFO: loaded from: classes3.dex */
public class HttpURI {
    private static final int ASTERISK = 10;
    private static final int AUTH = 4;
    private static final int AUTH_OR_PATH = 1;
    private static final int IPV6 = 5;
    private static final int PARAM = 8;
    private static final int PATH = 7;
    private static final int PORT = 6;
    private static final int QUERY = 9;
    private static final int SCHEME_OR_PATH = 2;
    private static final int START = 0;
    private static byte[] __empty = new byte[0];
    int _authority;
    int _end;
    int _fragment;
    int _host;
    int _param;
    boolean _partial;
    int _path;
    int _port;
    int _query;
    byte[] _raw;
    String _rawString;
    int _scheme;
    Utf8StringBuffer _utf8b;

    public HttpURI() {
        this._partial = false;
        this._raw = __empty;
        this._utf8b = new Utf8StringBuffer(64);
    }

    public HttpURI(boolean z) {
        this._partial = false;
        this._raw = __empty;
        this._utf8b = new Utf8StringBuffer(64);
        this._partial = z;
    }

    public HttpURI(String str) {
        this._partial = false;
        this._raw = __empty;
        this._utf8b = new Utf8StringBuffer(64);
        this._rawString = str;
        byte[] bytes = str.getBytes();
        parse(bytes, 0, bytes.length);
    }

    public HttpURI(byte[] bArr, int i, int i2) {
        this._partial = false;
        this._raw = __empty;
        this._utf8b = new Utf8StringBuffer(64);
        parse2(bArr, i, i2);
    }

    public void parse(String str) {
        byte[] bytes = str.getBytes();
        parse2(bytes, 0, bytes.length);
        this._rawString = str;
    }

    public void parse(byte[] bArr, int i, int i2) {
        this._rawString = null;
        parse2(bArr, i, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:74:0x0187. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:79:0x01a1. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void parse2(byte[] r10, int r11, int r12) {
        /*
            Method dump skipped, instruction units count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mortbay.jetty.HttpURI.parse2(byte[], int, int):void");
    }

    private String toUtf8String(int i, int i2) {
        this._utf8b.reset();
        this._utf8b.append(this._raw, i, i2);
        return this._utf8b.toString();
    }

    public String getScheme() {
        if (this._scheme == this._authority) {
            return null;
        }
        int i = this._authority - this._scheme;
        if (i == 5 && this._raw[this._scheme] == 104 && this._raw[this._scheme + 1] == 116 && this._raw[this._scheme + 2] == 116 && this._raw[this._scheme + 3] == 112) {
            return "http";
        }
        if (i == 6 && this._raw[this._scheme] == 104 && this._raw[this._scheme + 1] == 116 && this._raw[this._scheme + 2] == 116 && this._raw[this._scheme + 3] == 112 && this._raw[this._scheme + 4] == 115) {
            return "https";
        }
        return toUtf8String(this._scheme, (this._authority - this._scheme) - 1);
    }

    public String getAuthority() {
        if (this._authority == this._path) {
            return null;
        }
        return toUtf8String(this._authority, this._path - this._authority);
    }

    public String getHost() {
        if (this._host == this._port) {
            return null;
        }
        return toUtf8String(this._host, this._port - this._host);
    }

    public int getPort() {
        if (this._port == this._path) {
            return -1;
        }
        return TypeUtil.parseInt(this._raw, this._port + 1, (this._path - this._port) - 1, 10);
    }

    public String getPath() {
        if (this._path == this._param) {
            return null;
        }
        return toUtf8String(this._path, this._param - this._path);
    }

    public String getDecodedPath() {
        byte b2;
        int i;
        byte[] bArr = null;
        if (this._path == this._param) {
            return null;
        }
        int i2 = this._param - this._path;
        int i3 = this._path;
        int i4 = 0;
        while (i3 < this._param) {
            byte b3 = this._raw[i3];
            if (b3 == 37 && i3 + 2 < this._param) {
                byte b4 = (byte) (TypeUtil.parseInt(this._raw, i3 + 1, 2, 16) & 255);
                i3 += 2;
                b2 = b4;
            } else if (bArr == null) {
                i = i4 + 1;
                int i5 = i3;
                i4 = i;
                i3 = i5 + 1;
                bArr = bArr;
            } else {
                b2 = b3;
            }
            if (bArr == null) {
                bArr = new byte[i2];
                for (int i6 = 0; i6 < i4; i6++) {
                    bArr[i6] = this._raw[this._path + i6];
                }
            }
            i = i4 + 1;
            bArr[i4] = b2;
            int i52 = i3;
            i4 = i;
            i3 = i52 + 1;
            bArr = bArr;
        }
        if (bArr == null) {
            return toUtf8String(this._path, i2);
        }
        this._utf8b.reset();
        this._utf8b.append(bArr, 0, i4);
        return this._utf8b.toString();
    }

    public String getPathAndParam() {
        if (this._path == this._query) {
            return null;
        }
        return toUtf8String(this._path, this._query - this._path);
    }

    public String getCompletePath() {
        if (this._path == this._end) {
            return null;
        }
        return toUtf8String(this._path, this._end - this._path);
    }

    public String getParam() {
        if (this._param == this._query) {
            return null;
        }
        return toUtf8String(this._param + 1, (this._query - this._param) - 1);
    }

    public String getQuery() {
        if (this._query == this._fragment) {
            return null;
        }
        return toUtf8String(this._query + 1, (this._fragment - this._query) - 1);
    }

    public String getQuery(String str) {
        if (this._query == this._fragment) {
            return null;
        }
        return StringUtil.toString(this._raw, this._query + 1, (this._fragment - this._query) - 1, str);
    }

    public boolean hasQuery() {
        return this._fragment > this._query;
    }

    public String getFragment() {
        if (this._fragment == this._end) {
            return null;
        }
        return toUtf8String(this._fragment + 1, (this._end - this._fragment) - 1);
    }

    public void decodeQueryTo(MultiMap multiMap) {
        if (this._query != this._fragment) {
            this._utf8b.reset();
            UrlEncoded.decodeUtf8To(this._raw, this._query + 1, (this._fragment - this._query) - 1, multiMap, this._utf8b);
        }
    }

    public void decodeQueryTo(MultiMap multiMap, String str) throws UnsupportedEncodingException {
        if (this._query != this._fragment) {
            if (str == null || StringUtil.isUTF8(str)) {
                UrlEncoded.decodeUtf8To(this._raw, this._query + 1, (this._fragment - this._query) - 1, multiMap);
            } else {
                UrlEncoded.decodeTo(toUtf8String(this._query + 1, (this._fragment - this._query) - 1), multiMap, str);
            }
        }
    }

    public void clear() {
        this._end = 0;
        this._fragment = 0;
        this._query = 0;
        this._param = 0;
        this._path = 0;
        this._port = 0;
        this._host = 0;
        this._authority = 0;
        this._scheme = 0;
        this._raw = __empty;
        this._rawString = "";
    }

    public String toString() {
        if (this._rawString == null) {
            this._rawString = toUtf8String(this._scheme, this._end - this._scheme);
        }
        return this._rawString;
    }

    public void writeTo(Utf8StringBuffer utf8StringBuffer) {
        utf8StringBuffer.append(this._raw, this._scheme, this._end - this._scheme);
    }
}
