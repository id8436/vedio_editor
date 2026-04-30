package e;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.exoplayer.text.eia608.ClosedCaptionCtrl;
import com.google.common.primitives.UnsignedBytes;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Buffer.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements i, j, Cloneable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f4716c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    x f4717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f4718b;

    public long b() {
        return this.f4718b;
    }

    @Override // e.i, e.j
    public f c() {
        return this;
    }

    public OutputStream d() {
        return new g(this);
    }

    @Override // e.i
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public f v() {
        return this;
    }

    @Override // e.j
    public boolean f() {
        return this.f4718b == 0;
    }

    @Override // e.j
    public void a(long j) throws EOFException {
        if (this.f4718b < j) {
            throw new EOFException();
        }
    }

    @Override // e.j
    public InputStream g() {
        return new h(this);
    }

    public f a(f fVar, long j, long j2) {
        if (fVar == null) {
            throw new IllegalArgumentException("out == null");
        }
        ae.a(this.f4718b, j, j2);
        if (j2 != 0) {
            fVar.f4718b += j2;
            x xVar = this.f4717a;
            while (j >= xVar.f4753c - xVar.f4752b) {
                j -= (long) (xVar.f4753c - xVar.f4752b);
                xVar = xVar.f4756f;
            }
            while (j2 > 0) {
                x xVar2 = new x(xVar);
                xVar2.f4752b = (int) (((long) xVar2.f4752b) + j);
                xVar2.f4753c = Math.min(xVar2.f4752b + ((int) j2), xVar2.f4753c);
                if (fVar.f4717a == null) {
                    xVar2.f4757g = xVar2;
                    xVar2.f4756f = xVar2;
                    fVar.f4717a = xVar2;
                } else {
                    fVar.f4717a.f4757g.a(xVar2);
                }
                j2 -= (long) (xVar2.f4753c - xVar2.f4752b);
                xVar = xVar.f4756f;
                j = 0;
            }
        }
        return this;
    }

    public long h() {
        long j = this.f4718b;
        if (j == 0) {
            return 0L;
        }
        x xVar = this.f4717a.f4757g;
        if (xVar.f4753c < 8192 && xVar.f4755e) {
            return j - ((long) (xVar.f4753c - xVar.f4752b));
        }
        return j;
    }

    @Override // e.j
    public byte i() {
        if (this.f4718b == 0) {
            throw new IllegalStateException("size == 0");
        }
        x xVar = this.f4717a;
        int i = xVar.f4752b;
        int i2 = xVar.f4753c;
        int i3 = i + 1;
        byte b2 = xVar.f4751a[i];
        this.f4718b--;
        if (i3 == i2) {
            this.f4717a = xVar.a();
            y.a(xVar);
        } else {
            xVar.f4752b = i3;
        }
        return b2;
    }

    public byte b(long j) {
        ae.a(this.f4718b, j, 1L);
        x xVar = this.f4717a;
        while (true) {
            int i = xVar.f4753c - xVar.f4752b;
            if (j < i) {
                return xVar.f4751a[xVar.f4752b + ((int) j)];
            }
            j -= (long) i;
            xVar = xVar.f4756f;
        }
    }

    @Override // e.j
    public short j() {
        if (this.f4718b < 2) {
            throw new IllegalStateException("size < 2: " + this.f4718b);
        }
        x xVar = this.f4717a;
        int i = xVar.f4752b;
        int i2 = xVar.f4753c;
        if (i2 - i < 2) {
            return (short) (((i() & UnsignedBytes.MAX_VALUE) << 8) | (i() & UnsignedBytes.MAX_VALUE));
        }
        byte[] bArr = xVar.f4751a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i3] & UnsignedBytes.MAX_VALUE);
        this.f4718b -= 2;
        if (i4 == i2) {
            this.f4717a = xVar.a();
            y.a(xVar);
        } else {
            xVar.f4752b = i4;
        }
        return (short) i5;
    }

    @Override // e.j
    public int k() {
        if (this.f4718b < 4) {
            throw new IllegalStateException("size < 4: " + this.f4718b);
        }
        x xVar = this.f4717a;
        int i = xVar.f4752b;
        int i2 = xVar.f4753c;
        if (i2 - i < 4) {
            return ((i() & UnsignedBytes.MAX_VALUE) << 24) | ((i() & UnsignedBytes.MAX_VALUE) << 16) | ((i() & UnsignedBytes.MAX_VALUE) << 8) | (i() & UnsignedBytes.MAX_VALUE);
        }
        byte[] bArr = xVar.f4751a;
        int i3 = i + 1;
        int i4 = i3 + 1;
        int i5 = ((bArr[i] & UnsignedBytes.MAX_VALUE) << 24) | ((bArr[i3] & UnsignedBytes.MAX_VALUE) << 16);
        int i6 = i4 + 1;
        int i7 = i5 | ((bArr[i4] & UnsignedBytes.MAX_VALUE) << 8);
        int i8 = i6 + 1;
        int i9 = i7 | (bArr[i6] & UnsignedBytes.MAX_VALUE);
        this.f4718b -= 4;
        if (i8 == i2) {
            this.f4717a = xVar.a();
            y.a(xVar);
            return i9;
        }
        xVar.f4752b = i8;
        return i9;
    }

    @Override // e.j
    public short l() {
        return ae.a(j());
    }

    @Override // e.j
    public int m() {
        return ae.a(k());
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b4 A[EDGE_INSN: B:43:0x00b4->B:37:0x00b4 BREAK  A[LOOP:0: B:7:0x0017->B:45:?], SYNTHETIC] */
    @Override // e.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long n() {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.f.n():long");
    }

    public k o() {
        return new k(r());
    }

    @Override // e.j
    public k c(long j) throws EOFException {
        return new k(g(j));
    }

    @Override // e.j
    public long a(aa aaVar) throws IOException {
        long j = this.f4718b;
        if (j > 0) {
            aaVar.a_(this, j);
        }
        return j;
    }

    public String p() {
        try {
            return a(this.f4718b, ae.f4709a);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public String d(long j) throws EOFException {
        return a(j, ae.f4709a);
    }

    @Override // e.j
    public String a(Charset charset) {
        try {
            return a(this.f4718b, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public String a(long j, Charset charset) throws EOFException {
        ae.a(this.f4718b, 0L, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        if (j == 0) {
            return "";
        }
        x xVar = this.f4717a;
        if (((long) xVar.f4752b) + j > xVar.f4753c) {
            return new String(g(j), charset);
        }
        String str = new String(xVar.f4751a, xVar.f4752b, (int) j, charset);
        xVar.f4752b = (int) (((long) xVar.f4752b) + j);
        this.f4718b -= j;
        if (xVar.f4752b == xVar.f4753c) {
            this.f4717a = xVar.a();
            y.a(xVar);
            return str;
        }
        return str;
    }

    @Override // e.j
    public String q() throws EOFException {
        return e(Long.MAX_VALUE);
    }

    @Override // e.j
    public String e(long j) throws EOFException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long jA = a((byte) 10, 0L, j2);
        if (jA != -1) {
            return f(jA);
        }
        if (j2 < b() && b(j2 - 1) == 13 && b(j2) == 10) {
            return f(j2);
        }
        f fVar = new f();
        a(fVar, 0L, Math.min(32L, b()));
        throw new EOFException("\\n not found: limit=" + Math.min(b(), j) + " content=" + fVar.o().e() + (char) 8230);
    }

    String f(long j) throws EOFException {
        if (j > 0 && b(j - 1) == 13) {
            String strD = d(j - 1);
            h(2L);
            return strD;
        }
        String strD2 = d(j);
        h(1L);
        return strD2;
    }

    @Override // e.j
    public byte[] r() {
        try {
            return g(this.f4718b);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // e.j
    public byte[] g(long j) throws EOFException {
        ae.a(this.f4718b, 0L, j);
        if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j);
        }
        byte[] bArr = new byte[(int) j];
        a(bArr);
        return bArr;
    }

    @Override // e.j
    public void a(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int iA = a(bArr, i, bArr.length - i);
            if (iA == -1) {
                throw new EOFException();
            }
            i += iA;
        }
    }

    public int a(byte[] bArr, int i, int i2) {
        ae.a(bArr.length, i, i2);
        x xVar = this.f4717a;
        if (xVar == null) {
            return -1;
        }
        int iMin = Math.min(i2, xVar.f4753c - xVar.f4752b);
        System.arraycopy(xVar.f4751a, xVar.f4752b, bArr, i, iMin);
        xVar.f4752b += iMin;
        this.f4718b -= (long) iMin;
        if (xVar.f4752b == xVar.f4753c) {
            this.f4717a = xVar.a();
            y.a(xVar);
            return iMin;
        }
        return iMin;
    }

    public void s() {
        try {
            h(this.f4718b);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // e.j
    public void h(long j) throws EOFException {
        while (j > 0) {
            if (this.f4717a == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j, this.f4717a.f4753c - this.f4717a.f4752b);
            this.f4718b -= (long) iMin;
            j -= (long) iMin;
            x xVar = this.f4717a;
            xVar.f4752b = iMin + xVar.f4752b;
            if (this.f4717a.f4752b == this.f4717a.f4753c) {
                x xVar2 = this.f4717a;
                this.f4717a = xVar2.a();
                y.a(xVar2);
            }
        }
    }

    @Override // e.i
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f b(k kVar) {
        if (kVar == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        kVar.a(this);
        return this;
    }

    @Override // e.i
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f b(String str) {
        return a(str, 0, str.length());
    }

    public f a(String str, int i, int i2) {
        int i3;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt < 128) {
                x xVarE = e(1);
                byte[] bArr = xVarE.f4751a;
                int i4 = xVarE.f4753c - i;
                int iMin = Math.min(i2, 8192 - i4);
                i3 = i + 1;
                bArr[i4 + i] = (byte) cCharAt;
                while (i3 < iMin) {
                    char cCharAt2 = str.charAt(i3);
                    if (cCharAt2 >= 128) {
                        break;
                    }
                    bArr[i3 + i4] = (byte) cCharAt2;
                    i3++;
                }
                int i5 = (i3 + i4) - xVarE.f4753c;
                xVarE.f4753c += i5;
                this.f4718b += (long) i5;
            } else if (cCharAt < 2048) {
                i((cCharAt >> 6) | 192);
                i((cCharAt & '?') | 128);
                i3 = i + 1;
            } else if (cCharAt < 55296 || cCharAt > 57343) {
                i((cCharAt >> '\f') | 224);
                i(((cCharAt >> 6) & 63) | 128);
                i((cCharAt & '?') | 128);
                i3 = i + 1;
            } else {
                char cCharAt3 = i + 1 < i2 ? str.charAt(i + 1) : (char) 0;
                if (cCharAt > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                    i(63);
                    i++;
                } else {
                    int i6 = ((cCharAt3 & 9215) | ((cCharAt & 10239) << 10)) + 65536;
                    i((i6 >> 18) | 240);
                    i(((i6 >> 12) & 63) | 128);
                    i(((i6 >> 6) & 63) | 128);
                    i((i6 & 63) | 128);
                    i3 = i + 2;
                }
            }
            i = i3;
        }
        return this;
    }

    public f a(int i) {
        if (i < 128) {
            i(i);
        } else if (i < 2048) {
            i((i >> 6) | 192);
            i((i & 63) | 128);
        } else if (i < 65536) {
            if (i >= 55296 && i <= 57343) {
                i(63);
            } else {
                i((i >> 12) | 224);
                i(((i >> 6) & 63) | 128);
                i((i & 63) | 128);
            }
        } else if (i <= 1114111) {
            i((i >> 18) | 240);
            i(((i >> 12) & 63) | 128);
            i(((i >> 6) & 63) | 128);
            i((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    @Override // e.i
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f b(String str, Charset charset) {
        return a(str, 0, str.length(), charset);
    }

    public f a(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i);
        }
        if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        }
        if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (charset.equals(ae.f4709a)) {
            return a(str, i, i2);
        }
        byte[] bytes = str.substring(i, i2).getBytes(charset);
        return c(bytes, 0, bytes.length);
    }

    @Override // e.i
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f c(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        return c(bArr, 0, bArr.length);
    }

    @Override // e.i
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f c(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("source == null");
        }
        ae.a(bArr.length, i, i2);
        int i3 = i + i2;
        while (i < i3) {
            x xVarE = e(1);
            int iMin = Math.min(i3 - i, 8192 - xVarE.f4753c);
            System.arraycopy(bArr, i, xVarE.f4751a, xVarE.f4753c, iMin);
            i += iMin;
            xVarE.f4753c = iMin + xVarE.f4753c;
        }
        this.f4718b += (long) i2;
        return this;
    }

    @Override // e.i
    public long a(ab abVar) throws IOException {
        if (abVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j = 0;
        while (true) {
            long jA = abVar.a(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (jA != -1) {
                j += jA;
            } else {
                return j;
            }
        }
    }

    @Override // e.i
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f i(int i) {
        x xVarE = e(1);
        byte[] bArr = xVarE.f4751a;
        int i2 = xVarE.f4753c;
        xVarE.f4753c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f4718b++;
        return this;
    }

    @Override // e.i
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public f h(int i) {
        x xVarE = e(2);
        byte[] bArr = xVarE.f4751a;
        int i2 = xVarE.f4753c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        xVarE.f4753c = i3 + 1;
        this.f4718b += 2;
        return this;
    }

    @Override // e.i
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public f g(int i) {
        x xVarE = e(4);
        byte[] bArr = xVarE.f4751a;
        int i2 = xVarE.f4753c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        xVarE.f4753c = i5 + 1;
        this.f4718b += 4;
        return this;
    }

    @Override // e.i
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public f l(long j) {
        boolean z;
        long j2;
        int i;
        if (j == 0) {
            return i(48);
        }
        if (j >= 0) {
            z = false;
            j2 = j;
        } else {
            j2 = -j;
            if (j2 < 0) {
                return b("-9223372036854775808");
            }
            z = true;
        }
        if (j2 >= 100000000) {
            i = j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= 10000) {
            i = j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 < 100) {
            i = j2 < 10 ? 1 : 2;
        } else {
            i = j2 < 1000 ? 3 : 4;
        }
        if (z) {
            i++;
        }
        x xVarE = e(i);
        byte[] bArr = xVarE.f4751a;
        int i2 = xVarE.f4753c + i;
        while (j2 != 0) {
            i2--;
            bArr[i2] = f4716c[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z) {
            bArr[i2 - 1] = ClosedCaptionCtrl.CARRIAGE_RETURN;
        }
        xVarE.f4753c += i;
        this.f4718b = ((long) i) + this.f4718b;
        return this;
    }

    @Override // e.i
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public f k(long j) {
        if (j == 0) {
            return i(48);
        }
        int iNumberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        x xVarE = e(iNumberOfTrailingZeros);
        byte[] bArr = xVarE.f4751a;
        int i = xVarE.f4753c;
        for (int i2 = (xVarE.f4753c + iNumberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = f4716c[(int) (15 & j)];
            j >>>= 4;
        }
        xVarE.f4753c += iNumberOfTrailingZeros;
        this.f4718b = ((long) iNumberOfTrailingZeros) + this.f4718b;
        return this;
    }

    x e(int i) {
        if (i < 1 || i > 8192) {
            throw new IllegalArgumentException();
        }
        if (this.f4717a == null) {
            this.f4717a = y.a();
            x xVar = this.f4717a;
            x xVar2 = this.f4717a;
            x xVar3 = this.f4717a;
            xVar2.f4757g = xVar3;
            xVar.f4756f = xVar3;
            return xVar3;
        }
        x xVar4 = this.f4717a.f4757g;
        if (xVar4.f4753c + i > 8192 || !xVar4.f4755e) {
            return xVar4.a(y.a());
        }
        return xVar4;
    }

    @Override // e.aa
    public void a_(f fVar, long j) {
        if (fVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (fVar == this) {
            throw new IllegalArgumentException("source == this");
        }
        ae.a(fVar.f4718b, 0L, j);
        while (j > 0) {
            if (j < fVar.f4717a.f4753c - fVar.f4717a.f4752b) {
                x xVar = this.f4717a != null ? this.f4717a.f4757g : null;
                if (xVar != null && xVar.f4755e) {
                    if ((((long) xVar.f4753c) + j) - ((long) (xVar.f4754d ? 0 : xVar.f4752b)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                        fVar.f4717a.a(xVar, (int) j);
                        fVar.f4718b -= j;
                        this.f4718b += j;
                        return;
                    }
                }
                fVar.f4717a = fVar.f4717a.a((int) j);
            }
            x xVar2 = fVar.f4717a;
            long j2 = xVar2.f4753c - xVar2.f4752b;
            fVar.f4717a = xVar2.a();
            if (this.f4717a == null) {
                this.f4717a = xVar2;
                x xVar3 = this.f4717a;
                x xVar4 = this.f4717a;
                x xVar5 = this.f4717a;
                xVar4.f4757g = xVar5;
                xVar3.f4756f = xVar5;
            } else {
                this.f4717a.f4757g.a(xVar2).b();
            }
            fVar.f4718b -= j2;
            this.f4718b += j2;
            j -= j2;
        }
    }

    @Override // e.ab
    public long a(f fVar, long j) {
        if (fVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        }
        if (this.f4718b == 0) {
            return -1L;
        }
        if (j > this.f4718b) {
            j = this.f4718b;
        }
        fVar.a_(this, j);
        return j;
    }

    @Override // e.j
    public long a(byte b2) {
        return a(b2, 0L, Long.MAX_VALUE);
    }

    public long a(byte b2, long j, long j2) {
        x xVar;
        long j3;
        x xVar2;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f4718b), Long.valueOf(j), Long.valueOf(j2)));
        }
        if (j2 > this.f4718b) {
            j2 = this.f4718b;
        }
        if (j == j2 || (xVar = this.f4717a) == null) {
            return -1L;
        }
        if (this.f4718b - j < j) {
            j3 = this.f4718b;
            xVar2 = xVar;
            while (j3 > j) {
                xVar2 = xVar2.f4757g;
                j3 -= (long) (xVar2.f4753c - xVar2.f4752b);
            }
        } else {
            j3 = 0;
            xVar2 = xVar;
            while (true) {
                long j4 = ((long) (xVar2.f4753c - xVar2.f4752b)) + j3;
                if (j4 >= j) {
                    break;
                }
                xVar2 = xVar2.f4756f;
                j3 = j4;
            }
        }
        long j5 = j3;
        while (j5 < j2) {
            byte[] bArr = xVar2.f4751a;
            int iMin = (int) Math.min(xVar2.f4753c, (((long) xVar2.f4752b) + j2) - j5);
            for (int i = (int) ((((long) xVar2.f4752b) + j) - j5); i < iMin; i++) {
                if (bArr[i] == b2) {
                    return ((long) (i - xVar2.f4752b)) + j5;
                }
            }
            long j6 = ((long) (xVar2.f4753c - xVar2.f4752b)) + j5;
            xVar2 = xVar2.f4756f;
            j5 = j6;
            j = j6;
        }
        return -1L;
    }

    @Override // e.j
    public boolean a(long j, k kVar) {
        return a(j, kVar, 0, kVar.g());
    }

    public boolean a(long j, k kVar, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f4718b - j < i2 || kVar.g() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (b(((long) i3) + j) != kVar.a(i + i3)) {
                return false;
            }
        }
        return true;
    }

    @Override // e.i, e.aa, java.io.Flushable
    public void flush() {
    }

    @Override // e.aa, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // e.aa
    public ac a() {
        return ac.f4705c;
    }

    public boolean equals(Object obj) {
        long j = 0;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f4718b != fVar.f4718b) {
            return false;
        }
        if (this.f4718b == 0) {
            return true;
        }
        x xVar = this.f4717a;
        x xVar2 = fVar.f4717a;
        int i = xVar.f4752b;
        int i2 = xVar2.f4752b;
        while (j < this.f4718b) {
            long jMin = Math.min(xVar.f4753c - i, xVar2.f4753c - i2);
            int i3 = 0;
            while (i3 < jMin) {
                int i4 = i + 1;
                byte b2 = xVar.f4751a[i];
                int i5 = i2 + 1;
                if (b2 != xVar2.f4751a[i2]) {
                    return false;
                }
                i3++;
                i2 = i5;
                i = i4;
            }
            if (i == xVar.f4753c) {
                xVar = xVar.f4756f;
                i = xVar.f4752b;
            }
            if (i2 == xVar2.f4753c) {
                xVar2 = xVar2.f4756f;
                i2 = xVar2.f4752b;
            }
            j += jMin;
        }
        return true;
    }

    public int hashCode() {
        x xVar = this.f4717a;
        if (xVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = xVar.f4752b;
            int i3 = xVar.f4753c;
            while (i2 < i3) {
                int i4 = xVar.f4751a[i2] + (i * 31);
                i2++;
                i = i4;
            }
            xVar = xVar.f4756f;
        } while (xVar != this.f4717a);
        return i;
    }

    public String toString() {
        return u().toString();
    }

    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public f clone() {
        f fVar = new f();
        if (this.f4718b == 0) {
            return fVar;
        }
        fVar.f4717a = new x(this.f4717a);
        x xVar = fVar.f4717a;
        x xVar2 = fVar.f4717a;
        x xVar3 = fVar.f4717a;
        xVar2.f4757g = xVar3;
        xVar.f4756f = xVar3;
        for (x xVar4 = this.f4717a.f4756f; xVar4 != this.f4717a; xVar4 = xVar4.f4756f) {
            fVar.f4717a.f4757g.a(new x(xVar4));
        }
        fVar.f4718b = this.f4718b;
        return fVar;
    }

    public k u() {
        if (this.f4718b > 2147483647L) {
            throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f4718b);
        }
        return f((int) this.f4718b);
    }

    public k f(int i) {
        return i == 0 ? k.f4722b : new z(this, i);
    }
}
