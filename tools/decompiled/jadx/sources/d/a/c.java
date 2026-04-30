package d.a;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.common.primitives.UnsignedBytes;
import d.ai;
import d.an;
import d.az;
import d.bf;
import e.ab;
import e.j;
import e.k;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.commons.lang3.CharEncoding;

/* JADX INFO: compiled from: Util.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f4253a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f4254b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final bf f4255c = bf.a(null, f4253a);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final az f4256d = az.create((an) null, f4253a);
    private static final k i = k.c("efbbbf");
    private static final k j = k.c("feff");
    private static final k k = k.c("fffe");
    private static final k l = k.c("0000ffff");
    private static final k m = k.c("ffff0000");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Charset f4257e = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Charset f4258f = Charset.forName("ISO-8859-1");
    private static final Charset n = Charset.forName(CharEncoding.UTF_16BE);
    private static final Charset o = Charset.forName(CharEncoding.UTF_16LE);
    private static final Charset p = Charset.forName("UTF-32BE");
    private static final Charset q = Charset.forName("UTF-32LE");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final TimeZone f4259g = TimeZone.getTimeZone("GMT");
    public static final Comparator<String> h = new d();
    private static final Pattern r = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static void a(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                if (!a(e2)) {
                    throw e2;
                }
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception e4) {
            }
        }
    }

    public static boolean a(ab abVar, int i2, TimeUnit timeUnit) {
        try {
            return b(abVar, i2, timeUnit);
        } catch (IOException e2) {
            return false;
        }
    }

    public static boolean b(ab abVar, int i2, TimeUnit timeUnit) throws IOException {
        long jNanoTime = System.nanoTime();
        long jD = abVar.a().c_() ? abVar.a().d() - jNanoTime : Long.MAX_VALUE;
        abVar.a().a(Math.min(jD, timeUnit.toNanos(i2)) + jNanoTime);
        try {
            e.f fVar = new e.f();
            while (abVar.a(fVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                fVar.s();
            }
            if (jD == Long.MAX_VALUE) {
                abVar.a().f();
            } else {
                abVar.a().a(jD + jNanoTime);
            }
            return true;
        } catch (InterruptedIOException e2) {
            if (jD == Long.MAX_VALUE) {
                abVar.a().f();
            } else {
                abVar.a().a(jD + jNanoTime);
            }
            return false;
        } catch (Throwable th) {
            if (jD == Long.MAX_VALUE) {
                abVar.a().f();
            } else {
                abVar.a().a(jD + jNanoTime);
            }
            throw th;
        }
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory a(String str, boolean z) {
        return new e(str, z);
    }

    public static String[] a(Comparator<? super String> comparator, String[] strArr, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i2]) != 0) {
                    i2++;
                } else {
                    arrayList.add(str);
                    break;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static boolean b(Comparator<String> comparator, String[] strArr, String[] strArr2) {
        if (strArr == null || strArr2 == null || strArr.length == 0 || strArr2.length == 0) {
            return false;
        }
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String a(ai aiVar, boolean z) {
        String strF;
        if (aiVar.f().contains(":")) {
            strF = "[" + aiVar.f() + "]";
        } else {
            strF = aiVar.f();
        }
        if (!z && aiVar.g() == ai.a(aiVar.b())) {
            return strF;
        }
        return strF + ":" + aiVar.g();
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static int a(Comparator<String> comparator, String[] strArr, String str) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (comparator.compare(strArr[i2], str) == 0) {
                return i2;
            }
        }
        return -1;
    }

    public static String[] a(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static int a(String str, int i2, int i3) {
        for (int i4 = i2; i4 < i3; i4++) {
            switch (str.charAt(i4)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    break;
                default:
                    return i4;
            }
        }
        return i3;
    }

    public static int b(String str, int i2, int i3) {
        for (int i4 = i3 - 1; i4 >= i2; i4--) {
            switch (str.charAt(i4)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    break;
                default:
                    return i4 + 1;
            }
        }
        return i2;
    }

    public static String c(String str, int i2, int i3) {
        int iA = a(str, i2, i3);
        return str.substring(iA, b(str, iA, i3));
    }

    public static int a(String str, int i2, int i3, String str2) {
        for (int i4 = i2; i4 < i3; i4++) {
            if (str2.indexOf(str.charAt(i4)) != -1) {
                return i4;
            }
        }
        return i3;
    }

    public static int a(String str, int i2, int i3, char c2) {
        for (int i4 = i2; i4 < i3; i4++) {
            if (str.charAt(i4) == c2) {
                return i4;
            }
        }
        return i3;
    }

    public static String a(String str) {
        InetAddress inetAddressD;
        if (str.contains(":")) {
            if (str.startsWith("[") && str.endsWith("]")) {
                inetAddressD = d(str, 1, str.length() - 1);
            } else {
                inetAddressD = d(str, 0, str.length());
            }
            if (inetAddressD == null) {
                return null;
            }
            byte[] address = inetAddressD.getAddress();
            if (address.length == 16) {
                return a(address);
            }
            throw new AssertionError("Invalid IPv6 address: '" + str + "'");
        }
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (d(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }

    private static boolean d(String str) {
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return true;
            }
            if (" #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static int b(String str) {
        int i2 = 0;
        int length = str.length();
        while (i2 < length) {
            char cCharAt = str.charAt(i2);
            if (cCharAt > 31 && cCharAt < 127) {
                i2++;
            } else {
                return i2;
            }
        }
        return -1;
    }

    public static boolean c(String str) {
        return r.matcher(str).matches();
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    public static Charset a(j jVar, Charset charset) throws IOException {
        if (jVar.a(0L, i)) {
            jVar.h(i.g());
            return f4257e;
        }
        if (jVar.a(0L, j)) {
            jVar.h(j.g());
            return n;
        }
        if (jVar.a(0L, k)) {
            jVar.h(k.g());
            return o;
        }
        if (jVar.a(0L, l)) {
            jVar.h(l.g());
            return p;
        }
        if (jVar.a(0L, m)) {
            jVar.h(m.g());
            return q;
        }
        return charset;
    }

    public static int a(String str, long j2, TimeUnit timeUnit) {
        if (j2 < 0) {
            throw new IllegalArgumentException(str + " < 0");
        }
        if (timeUnit == null) {
            throw new NullPointerException("unit == null");
        }
        long millis = timeUnit.toMillis(j2);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str + " too large.");
        }
        if (millis != 0 || j2 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(str + " too small.");
    }

    public static AssertionError a(String str, Exception exc) {
        return (AssertionError) new AssertionError(str).initCause(exc);
    }

    public static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return (c2 - 'a') + 10;
        }
        if (c2 < 'A' || c2 > 'F') {
            return -1;
        }
        return (c2 - 'A') + 10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
    
        if (r2 == r8.length) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
    
        if (r1 != (-1)) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0088, code lost:
    
        java.lang.System.arraycopy(r8, r1, r8, r8.length - (r2 - r1), r2 - r1);
        java.util.Arrays.fill(r8, r1, (r8.length - r2) + r1, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a3, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
    
        return java.net.InetAddress.getByAddress(r8);
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0044  */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.net.InetAddress d(java.lang.String r12, int r13, int r14) {
        /*
            r11 = 1
            r7 = -1
            r3 = 0
            r5 = 0
            r0 = 16
            byte[] r8 = new byte[r0]
            r0 = r13
            r4 = r7
            r1 = r7
            r2 = r5
        Lc:
            if (r0 >= r14) goto L2c
            int r6 = r8.length
            if (r2 != r6) goto L13
            r0 = r3
        L12:
            return r0
        L13:
            int r6 = r0 + 2
            if (r6 > r14) goto L33
            java.lang.String r6 = "::"
            r9 = 2
            boolean r6 = r12.regionMatches(r0, r6, r5, r9)
            if (r6 == 0) goto L33
            if (r1 == r7) goto L25
            r0 = r3
            goto L12
        L25:
            int r0 = r0 + 2
            int r1 = r2 + 2
            if (r0 != r14) goto La4
            r2 = r1
        L2c:
            int r0 = r8.length
            if (r2 == r0) goto L97
            if (r1 != r7) goto L88
            r0 = r3
            goto L12
        L33:
            if (r2 == 0) goto L40
            java.lang.String r6 = ":"
            boolean r6 = r12.regionMatches(r0, r6, r5, r11)
            if (r6 == 0) goto L57
            int r0 = r0 + 1
        L40:
            r4 = r5
            r6 = r0
        L42:
            if (r6 >= r14) goto L4e
            char r9 = r12.charAt(r6)
            int r9 = a(r9)
            if (r9 != r7) goto L6f
        L4e:
            int r9 = r6 - r0
            if (r9 == 0) goto L55
            r10 = 4
            if (r9 <= r10) goto L75
        L55:
            r0 = r3
            goto L12
        L57:
            java.lang.String r6 = "."
            boolean r0 = r12.regionMatches(r0, r6, r5, r11)
            if (r0 == 0) goto L6d
            int r0 = r2 + (-2)
            boolean r0 = a(r12, r4, r14, r8, r0)
            if (r0 != 0) goto L6a
            r0 = r3
            goto L12
        L6a:
            int r2 = r2 + 2
            goto L2c
        L6d:
            r0 = r3
            goto L12
        L6f:
            int r4 = r4 << 4
            int r4 = r4 + r9
            int r6 = r6 + 1
            goto L42
        L75:
            int r9 = r2 + 1
            int r10 = r4 >>> 8
            r10 = r10 & 255(0xff, float:3.57E-43)
            byte r10 = (byte) r10
            r8[r2] = r10
            int r2 = r9 + 1
            r4 = r4 & 255(0xff, float:3.57E-43)
            byte r4 = (byte) r4
            r8[r9] = r4
            r4 = r0
            r0 = r6
            goto Lc
        L88:
            int r0 = r8.length
            int r3 = r2 - r1
            int r0 = r0 - r3
            int r3 = r2 - r1
            java.lang.System.arraycopy(r8, r1, r8, r0, r3)
            int r0 = r8.length
            int r0 = r0 - r2
            int r0 = r0 + r1
            java.util.Arrays.fill(r8, r1, r0, r5)
        L97:
            java.net.InetAddress r0 = java.net.InetAddress.getByAddress(r8)     // Catch: java.net.UnknownHostException -> L9d
            goto L12
        L9d:
            r0 = move-exception
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        La4:
            r2 = r1
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a.c.d(java.lang.String, int, int):java.net.InetAddress");
    }

    private static boolean a(String str, int i2, int i3, byte[] bArr, int i4) {
        int i5 = i2;
        int i6 = i4;
        while (i5 < i3) {
            if (i6 == bArr.length) {
                return false;
            }
            if (i6 != i4) {
                if (str.charAt(i5) != '.') {
                    return false;
                }
                i5++;
            }
            int i7 = 0;
            int i8 = i5;
            while (i8 < i3) {
                char cCharAt = str.charAt(i8);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                if ((i7 != 0 || i5 == i8) && ((i7 * 10) + cCharAt) - 48 <= 255) {
                    i8++;
                }
                return false;
            }
            if (i8 - i5 == 0) {
                return false;
            }
            bArr[i6] = (byte) i7;
            i6++;
            i5 = i8;
        }
        return i6 == i4 + 4;
    }

    private static String a(byte[] bArr) {
        int i2 = 0;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (i5 < bArr.length) {
            int i6 = i5;
            while (i6 < 16 && bArr[i6] == 0 && bArr[i6 + 1] == 0) {
                i6 += 2;
            }
            int i7 = i6 - i5;
            if (i7 > i3 && i7 >= 4) {
                i3 = i7;
                i4 = i5;
            }
            i5 = i6 + 2;
        }
        e.f fVar = new e.f();
        while (i2 < bArr.length) {
            if (i2 == i4) {
                fVar.i(58);
                i2 += i3;
                if (i2 == 16) {
                    fVar.i(58);
                }
            } else {
                if (i2 > 0) {
                    fVar.i(58);
                }
                fVar.k(((bArr[i2] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i2 + 1] & UnsignedBytes.MAX_VALUE));
                i2 += 2;
            }
        }
        return fVar.p();
    }
}
