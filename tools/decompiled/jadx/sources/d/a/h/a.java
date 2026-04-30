package d.a.h;

import com.google.common.primitives.UnsignedBytes;
import d.a.c;
import d.a.g.i;
import e.j;
import e.o;
import e.q;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: PublicSuffixDatabase.java */
/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f4484a = {42};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f4485b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f4486c = {"*"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a f4487d = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f4488e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final CountDownLatch f4489f = new CountDownLatch(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private byte[] f4490g;
    private byte[] h;

    public static a a() {
        return f4487d;
    }

    public String a(String str) {
        int length;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] strArrSplit = IDN.toUnicode(str).split("\\.");
        String[] strArrA = a(strArrSplit);
        if (strArrSplit.length == strArrA.length && strArrA[0].charAt(0) != '!') {
            return null;
        }
        if (strArrA[0].charAt(0) == '!') {
            length = strArrSplit.length - strArrA.length;
        } else {
            length = strArrSplit.length - (strArrA.length + 1);
        }
        StringBuilder sb = new StringBuilder();
        String[] strArrSplit2 = str.split("\\.");
        while (length < strArrSplit2.length) {
            sb.append(strArrSplit2[length]).append('.');
            length++;
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private String[] a(String[] strArr) {
        String strA;
        String str;
        String[] strArrSplit;
        String[] strArrSplit2;
        String str2 = null;
        int i = 0;
        if (!this.f4488e.get() && this.f4488e.compareAndSet(false, true)) {
            b();
        } else {
            try {
                this.f4489f.await();
            } catch (InterruptedException e2) {
            }
        }
        synchronized (this) {
            if (this.f4490g == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        byte[][] bArr = new byte[strArr.length][];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            bArr[i2] = strArr[i2].getBytes(c.f4257e);
        }
        int i3 = 0;
        while (true) {
            if (i3 >= bArr.length) {
                strA = null;
                break;
            }
            strA = a(this.f4490g, bArr, i3);
            if (strA != null) {
                break;
            }
            i3++;
        }
        if (bArr.length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i4 = 0; i4 < bArr2.length - 1; i4++) {
                bArr2[i4] = f4484a;
                String strA2 = a(this.f4490g, bArr2, i4);
                if (strA2 != null) {
                    str = strA2;
                    break;
                }
            }
            str = null;
        } else {
            str = null;
        }
        if (str != null) {
            while (true) {
                if (i >= bArr.length - 1) {
                    break;
                }
                String strA3 = a(this.h, bArr, i);
                if (strA3 != null) {
                    str2 = strA3;
                    break;
                }
                i++;
            }
        }
        if (str2 != null) {
            return ("!" + str2).split("\\.");
        }
        if (strA == null && str == null) {
            return f4486c;
        }
        if (strA != null) {
            strArrSplit = strA.split("\\.");
        } else {
            strArrSplit = f4485b;
        }
        if (str != null) {
            strArrSplit2 = str.split("\\.");
        } else {
            strArrSplit2 = f4485b;
        }
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    private static String a(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 0;
        int length = bArr.length;
        while (i8 < length) {
            int i9 = (i8 + length) / 2;
            while (i9 > -1 && bArr[i9] != 10) {
                i9--;
            }
            int i10 = i9 + 1;
            int i11 = 1;
            while (bArr[i10 + i11] != 10) {
                i11++;
            }
            int i12 = (i10 + i11) - i10;
            int i13 = 0;
            int i14 = 0;
            boolean z = false;
            int i15 = i;
            while (true) {
                if (z) {
                    i2 = 46;
                    z = false;
                } else {
                    i2 = bArr2[i15][i13] & UnsignedBytes.MAX_VALUE;
                }
                i3 = i2 - (bArr[i10 + i14] & UnsignedBytes.MAX_VALUE);
                if (i3 != 0) {
                    i4 = i14;
                    i5 = i13;
                    break;
                }
                i14++;
                int i16 = i13 + 1;
                if (i14 == i12) {
                    i5 = i16;
                    i4 = i14;
                    break;
                }
                if (bArr2[i15].length == i16) {
                    if (i15 == bArr2.length - 1) {
                        i5 = i16;
                        i4 = i14;
                        break;
                    }
                    i15++;
                    i16 = -1;
                    z = true;
                }
                i13 = i16;
            }
            if (i3 < 0) {
                i7 = i10 - 1;
                i6 = i8;
            } else if (i3 > 0) {
                i6 = i11 + i10 + 1;
                i7 = length;
            } else {
                int i17 = i12 - i4;
                int length2 = bArr2[i15].length - i5;
                for (int i18 = i15 + 1; i18 < bArr2.length; i18++) {
                    length2 += bArr2[i18].length;
                }
                if (length2 < i17) {
                    i7 = i10 - 1;
                    i6 = i8;
                } else if (length2 > i17) {
                    i6 = i11 + i10 + 1;
                    i7 = length;
                } else {
                    return new String(bArr, i10, i12, c.f4257e);
                }
            }
            length = i7;
            i8 = i6;
        }
        return null;
    }

    private void b() {
        boolean z;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    z = z2;
                    c();
                    break;
                } catch (InterruptedIOException e2) {
                    z2 = true;
                } catch (IOException e3) {
                    i.b().a(5, "Failed to read public suffix list", e3);
                    if (!z) {
                        return;
                    }
                    Thread.currentThread().interrupt();
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (!z) {
            return;
        }
        Thread.currentThread().interrupt();
    }

    private void c() throws IOException {
        InputStream resourceAsStream = a.class.getResourceAsStream("publicsuffixes.gz");
        if (resourceAsStream != null) {
            j jVarA = q.a(new o(q.a(resourceAsStream)));
            try {
                byte[] bArr = new byte[jVarA.k()];
                jVarA.a(bArr);
                byte[] bArr2 = new byte[jVarA.k()];
                jVarA.a(bArr2);
                synchronized (this) {
                    this.f4490g = bArr;
                    this.h = bArr2;
                }
                this.f4489f.countDown();
            } finally {
                c.a(jVarA);
            }
        }
    }
}
