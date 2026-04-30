package c.a.a.a.a.e;

import com.google.gdata.util.ContentType;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.apache.commons.io.IOUtils;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: compiled from: HttpRequest.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f259b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static h f260c = h.f271a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final URL f261a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private l f264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f265g;
    private String k;
    private int l;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private HttpURLConnection f262d = null;
    private boolean h = true;
    private boolean i = false;
    private int j = 8192;

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(String str) {
        return (str == null || str.length() <= 0) ? "UTF-8" : str;
    }

    private static StringBuilder a(String str, StringBuilder sb) {
        if (str.indexOf(58) + 2 == str.lastIndexOf(47)) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
        return sb;
    }

    private static StringBuilder b(String str, StringBuilder sb) {
        int iIndexOf = str.indexOf(63);
        int length = sb.length() - 1;
        if (iIndexOf == -1) {
            sb.append('?');
        } else if (iIndexOf < length && str.charAt(length) != '&') {
            sb.append('&');
        }
        return sb;
    }

    public static String a(CharSequence charSequence) throws j {
        try {
            URL url = new URL(charSequence.toString());
            String host = url.getHost();
            int port = url.getPort();
            if (port != -1) {
                host = host + ':' + Integer.toString(port);
            }
            try {
                String aSCIIString = new URI(url.getProtocol(), host, url.getPath(), url.getQuery(), null).toASCIIString();
                int iIndexOf = aSCIIString.indexOf(63);
                if (iIndexOf > 0 && iIndexOf + 1 < aSCIIString.length()) {
                    return aSCIIString.substring(0, iIndexOf + 1) + aSCIIString.substring(iIndexOf + 1).replace("+", "%2B");
                }
                return aSCIIString;
            } catch (URISyntaxException e2) {
                IOException iOException = new IOException("Parsing URI failed");
                iOException.initCause(e2);
                throw new j(iOException);
            }
        } catch (IOException e3) {
            throw new j(e3);
        }
    }

    public static String a(CharSequence charSequence, Map<?, ?> map) {
        String string = charSequence.toString();
        if (map != null && !map.isEmpty()) {
            StringBuilder sb = new StringBuilder(string);
            a(string, sb);
            b(string, sb);
            Iterator<Map.Entry<?, ?>> it = map.entrySet().iterator();
            Map.Entry<?, ?> next = it.next();
            sb.append(next.getKey().toString());
            sb.append('=');
            Object value = next.getValue();
            if (value != null) {
                sb.append(value);
            }
            while (it.hasNext()) {
                sb.append('&');
                Map.Entry<?, ?> next2 = it.next();
                sb.append(next2.getKey().toString());
                sb.append('=');
                Object value2 = next2.getValue();
                if (value2 != null) {
                    sb.append(value2);
                }
            }
            return sb.toString();
        }
        return string;
    }

    public static e b(CharSequence charSequence) throws j {
        return new e(charSequence, "GET");
    }

    public static e a(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String strA = a(charSequence, map);
        if (z) {
            strA = a((CharSequence) strA);
        }
        return b((CharSequence) strA);
    }

    public static e c(CharSequence charSequence) throws j {
        return new e(charSequence, "POST");
    }

    public static e b(CharSequence charSequence, Map<?, ?> map, boolean z) {
        String strA = a(charSequence, map);
        if (z) {
            strA = a((CharSequence) strA);
        }
        return c((CharSequence) strA);
    }

    public static e d(CharSequence charSequence) throws j {
        return new e(charSequence, "PUT");
    }

    public static e e(CharSequence charSequence) throws j {
        return new e(charSequence, "DELETE");
    }

    public e(CharSequence charSequence, String str) throws j {
        try {
            this.f261a = new URL(charSequence.toString());
            this.f263e = str;
        } catch (MalformedURLException e2) {
            throw new j(e2);
        }
    }

    private Proxy q() {
        return new Proxy(Proxy.Type.HTTP, new InetSocketAddress(this.k, this.l));
    }

    private HttpURLConnection r() {
        HttpURLConnection httpURLConnectionA;
        try {
            if (this.k != null) {
                httpURLConnectionA = f260c.a(this.f261a, q());
            } else {
                httpURLConnectionA = f260c.a(this.f261a);
            }
            httpURLConnectionA.setRequestMethod(this.f263e);
            return httpURLConnectionA;
        } catch (IOException e2) {
            throw new j(e2);
        }
    }

    public String toString() {
        return p() + ' ' + o();
    }

    public HttpURLConnection a() {
        if (this.f262d == null) {
            this.f262d = r();
        }
        return this.f262d;
    }

    public int b() throws j {
        try {
            k();
            return a().getResponseCode();
        } catch (IOException e2) {
            throw new j(e2);
        }
    }

    public boolean c() throws j {
        return 200 == b();
    }

    protected ByteArrayOutputStream d() {
        int iJ = j();
        return iJ > 0 ? new ByteArrayOutputStream(iJ) : new ByteArrayOutputStream();
    }

    public String a(String str) throws j {
        ByteArrayOutputStream byteArrayOutputStreamD = d();
        try {
            a(f(), byteArrayOutputStreamD);
            return byteArrayOutputStreamD.toString(f(str));
        } catch (IOException e2) {
            throw new j(e2);
        }
    }

    public String e() throws j {
        return a(h());
    }

    public BufferedInputStream f() throws j {
        return new BufferedInputStream(g(), this.j);
    }

    public InputStream g() throws j {
        InputStream inputStream;
        if (b() < 400) {
            try {
                inputStream = a().getInputStream();
            } catch (IOException e2) {
                throw new j(e2);
            }
        } else {
            inputStream = a().getErrorStream();
            if (inputStream == null) {
                try {
                    inputStream = a().getInputStream();
                } catch (IOException e3) {
                    throw new j(e3);
                }
            }
        }
        if (!this.i || !HttpHeaderValues.GZIP.equals(i())) {
            return inputStream;
        }
        try {
            return new GZIPInputStream(inputStream);
        } catch (IOException e4) {
            throw new j(e4);
        }
    }

    public e a(int i) {
        a().setConnectTimeout(i);
        return this;
    }

    public e a(String str, String str2) {
        a().setRequestProperty(str, str2);
        return this;
    }

    public e a(Map.Entry<String, String> entry) {
        return a(entry.getKey(), entry.getValue());
    }

    public String b(String str) throws j {
        l();
        return a().getHeaderField(str);
    }

    public int c(String str) throws j {
        return a(str, -1);
    }

    public int a(String str, int i) throws j {
        l();
        return a().getHeaderFieldInt(str, i);
    }

    public String b(String str, String str2) {
        return c(b(str), str2);
    }

    protected String c(String str, String str2) {
        int i;
        int i2;
        String strTrim;
        int length;
        if (str == null || str.length() == 0) {
            return null;
        }
        int length2 = str.length();
        int iIndexOf = str.indexOf(59) + 1;
        if (iIndexOf == 0 || iIndexOf == length2) {
            return null;
        }
        int iIndexOf2 = str.indexOf(59, iIndexOf);
        if (iIndexOf2 == -1) {
            i = iIndexOf;
            i2 = length2;
        } else {
            i = iIndexOf;
            i2 = iIndexOf2;
        }
        while (i < i2) {
            int iIndexOf3 = str.indexOf(61, i);
            if (iIndexOf3 != -1 && iIndexOf3 < i2 && str2.equals(str.substring(i, iIndexOf3).trim()) && (length = (strTrim = str.substring(iIndexOf3 + 1, i2).trim()).length()) != 0) {
                if (length > 2 && '\"' == strTrim.charAt(0) && '\"' == strTrim.charAt(length - 1)) {
                    return strTrim.substring(1, length - 1);
                }
                return strTrim;
            }
            int i3 = i2 + 1;
            int iIndexOf4 = str.indexOf(59, i3);
            if (iIndexOf4 == -1) {
                iIndexOf4 = length2;
            }
            int i4 = iIndexOf4;
            i = i3;
            i2 = i4;
        }
        return null;
    }

    public String h() {
        return b("Content-Type", ContentType.ATTR_CHARSET);
    }

    public e a(boolean z) {
        a().setUseCaches(z);
        return this;
    }

    public String i() {
        return b("Content-Encoding");
    }

    public e d(String str) {
        return d(str, null);
    }

    public e d(String str, String str2) {
        return (str2 == null || str2.length() <= 0) ? a("Content-Type", str) : a("Content-Type", str + "; charset=" + str2);
    }

    public int j() {
        return c("Content-Length");
    }

    protected e a(InputStream inputStream, OutputStream outputStream) throws IOException {
        return new f(this, inputStream, this.h, inputStream, outputStream).call();
    }

    protected e k() throws IOException {
        if (this.f264f != null) {
            if (this.f265g) {
                this.f264f.a("\r\n--00content0boundary00--\r\n");
            }
            if (this.h) {
                try {
                    this.f264f.close();
                } catch (IOException e2) {
                }
            } else {
                this.f264f.close();
            }
            this.f264f = null;
        }
        return this;
    }

    protected e l() throws j {
        try {
            return k();
        } catch (IOException e2) {
            throw new j(e2);
        }
    }

    protected e m() throws IOException {
        if (this.f264f == null) {
            a().setDoOutput(true);
            this.f264f = new l(a().getOutputStream(), c(a().getRequestProperty("Content-Type"), ContentType.ATTR_CHARSET), this.j);
        }
        return this;
    }

    protected e n() throws IOException {
        if (!this.f265g) {
            this.f265g = true;
            d("multipart/form-data; boundary=00content0boundary00").m();
            this.f264f.a("--00content0boundary00\r\n");
        } else {
            this.f264f.a("\r\n--00content0boundary00\r\n");
        }
        return this;
    }

    protected e a(String str, String str2, String str3) throws IOException {
        StringBuilder sb = new StringBuilder();
        sb.append("form-data; name=\"").append(str);
        if (str2 != null) {
            sb.append("\"; filename=\"").append(str2);
        }
        sb.append('\"');
        f("Content-Disposition", sb.toString());
        if (str3 != null) {
            f("Content-Type", str3);
        }
        return f("\r\n");
    }

    public e e(String str, String str2) {
        return b(str, (String) null, str2);
    }

    public e b(String str, String str2, String str3) throws j {
        return a(str, str2, (String) null, str3);
    }

    public e a(String str, String str2, String str3, String str4) throws j {
        try {
            n();
            a(str, str2, str3);
            this.f264f.a(str4);
            return this;
        } catch (IOException e2) {
            throw new j(e2);
        }
    }

    public e a(String str, Number number) throws j {
        return a(str, (String) null, number);
    }

    public e a(String str, String str2, Number number) throws j {
        return b(str, str2, number != null ? number.toString() : null);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0020 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c.a.a.a.a.e.e a(java.lang.String r4, java.lang.String r5, java.lang.String r6, java.io.File r7) throws java.lang.Throwable {
        /*
            r3 = this;
            r2 = 0
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch: java.io.IOException -> L15 java.lang.Throwable -> L28
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.io.IOException -> L15 java.lang.Throwable -> L28
            r0.<init>(r7)     // Catch: java.io.IOException -> L15 java.lang.Throwable -> L28
            r1.<init>(r0)     // Catch: java.io.IOException -> L15 java.lang.Throwable -> L28
            c.a.a.a.a.e.e r0 = r3.a(r4, r5, r6, r1)     // Catch: java.lang.Throwable -> L1d java.io.IOException -> L2b
            if (r1 == 0) goto L14
            r1.close()     // Catch: java.io.IOException -> L24
        L14:
            return r0
        L15:
            r0 = move-exception
            r1 = r2
        L17:
            c.a.a.a.a.e.j r2 = new c.a.a.a.a.e.j     // Catch: java.lang.Throwable -> L1d
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L1d
            throw r2     // Catch: java.lang.Throwable -> L1d
        L1d:
            r0 = move-exception
        L1e:
            if (r1 == 0) goto L23
            r1.close()     // Catch: java.io.IOException -> L26
        L23:
            throw r0
        L24:
            r1 = move-exception
            goto L14
        L26:
            r1 = move-exception
            goto L23
        L28:
            r0 = move-exception
            r1 = r2
            goto L1e
        L2b:
            r0 = move-exception
            goto L17
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.a.a.e.e.a(java.lang.String, java.lang.String, java.lang.String, java.io.File):c.a.a.a.a.e.e");
    }

    public e a(String str, String str2, String str3, InputStream inputStream) throws j {
        try {
            n();
            a(str, str2, str3);
            a(inputStream, this.f264f);
            return this;
        } catch (IOException e2) {
            throw new j(e2);
        }
    }

    public e f(String str, String str2) throws j {
        return f((CharSequence) str).f(": ").f((CharSequence) str2).f("\r\n");
    }

    public e f(CharSequence charSequence) throws j {
        try {
            m();
            this.f264f.a(charSequence.toString());
            return this;
        } catch (IOException e2) {
            throw new j(e2);
        }
    }

    public URL o() {
        return a().getURL();
    }

    public String p() {
        return a().getRequestMethod();
    }
}
