package e;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: ByteString.java */
/* JADX INFO: loaded from: classes.dex */
public class k implements Serializable, Comparable<k> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final char[] f4721a = {'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f4722b = a(new byte[0]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final byte[] f4723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient int f4724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    transient String f4725e;

    k(byte[] bArr) {
        this.f4723c = bArr;
    }

    public static k a(byte... bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        return new k((byte[]) bArr.clone());
    }

    public static k a(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        ae.a(bArr.length, i, i2);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new k(bArr2);
    }

    public static k a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        k kVar = new k(str.getBytes(ae.f4709a));
        kVar.f4725e = str;
        return kVar;
    }

    public String a() {
        String str = this.f4725e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f4723c, ae.f4709a);
        this.f4725e = str2;
        return str2;
    }

    public String b() {
        return e.a(this.f4723c);
    }

    public k c() {
        return d("SHA-1");
    }

    public k d() {
        return d("SHA-256");
    }

    private k d(String str) {
        try {
            return a(MessageDigest.getInstance(str).digest(this.f4723c));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    @Nullable
    public static k b(String str) {
        if (str == null) {
            throw new IllegalArgumentException("base64 == null");
        }
        byte[] bArrA = e.a(str);
        if (bArrA != null) {
            return new k(bArrA);
        }
        return null;
    }

    public String e() {
        char[] cArr = new char[this.f4723c.length * 2];
        int i = 0;
        for (byte b2 : this.f4723c) {
            int i2 = i + 1;
            cArr[i] = f4721a[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = f4721a[b2 & Ascii.SI];
        }
        return new String(cArr);
    }

    public static k c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("hex == null");
        }
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Unexpected hex string: " + str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) ((a(str.charAt(i * 2)) << 4) + a(str.charAt((i * 2) + 1)));
        }
        return a(bArr);
    }

    private static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return (c2 - 'a') + 10;
        }
        if (c2 < 'A' || c2 > 'F') {
            throw new IllegalArgumentException("Unexpected hex digit: " + c2);
        }
        return (c2 - 'A') + 10;
    }

    public k f() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f4723c.length) {
                byte b2 = this.f4723c[i2];
                if (b2 < 65 || b2 > 90) {
                    i = i2 + 1;
                } else {
                    byte[] bArr = (byte[]) this.f4723c.clone();
                    bArr[i2] = (byte) (b2 + 32);
                    for (int i3 = i2 + 1; i3 < bArr.length; i3++) {
                        byte b3 = bArr[i3];
                        if (b3 >= 65 && b3 <= 90) {
                            bArr[i3] = (byte) (b3 + 32);
                        }
                    }
                    return new k(bArr);
                }
            } else {
                return this;
            }
        }
    }

    public k a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (i2 > this.f4723c.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f4723c.length + ")");
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i != 0 || i2 != this.f4723c.length) {
            byte[] bArr = new byte[i3];
            System.arraycopy(this.f4723c, i, bArr, 0, i3);
            return new k(bArr);
        }
        return this;
    }

    public byte a(int i) {
        return this.f4723c[i];
    }

    public int g() {
        return this.f4723c.length;
    }

    public byte[] h() {
        return (byte[]) this.f4723c.clone();
    }

    void a(f fVar) {
        fVar.c(this.f4723c, 0, this.f4723c.length);
    }

    public boolean a(int i, k kVar, int i2, int i3) {
        return kVar.a(i2, this.f4723c, i, i3);
    }

    public boolean a(int i, byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= this.f4723c.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && ae.a(this.f4723c, i, bArr, i2, i3);
    }

    public final boolean a(k kVar) {
        return a(0, kVar, 0, kVar.g());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof k) && ((k) obj).g() == this.f4723c.length && ((k) obj).a(0, this.f4723c, 0, this.f4723c.length);
    }

    public int hashCode() {
        int i = this.f4724d;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.f4723c);
        this.f4724d = iHashCode;
        return iHashCode;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public int compareTo(k kVar) {
        int iG = g();
        int iG2 = kVar.g();
        int iMin = Math.min(iG, iG2);
        for (int i = 0; i < iMin; i++) {
            int iA = a(i) & UnsignedBytes.MAX_VALUE;
            int iA2 = kVar.a(i) & UnsignedBytes.MAX_VALUE;
            if (iA != iA2) {
                return iA < iA2 ? -1 : 1;
            }
        }
        if (iG == iG2) {
            return 0;
        }
        return iG >= iG2 ? 1 : -1;
    }

    public String toString() {
        if (this.f4723c.length == 0) {
            return "[size=0]";
        }
        String strA = a();
        int iA = a(strA, 64);
        if (iA == -1) {
            if (this.f4723c.length <= 64) {
                return "[hex=" + e() + "]";
            }
            return "[size=" + this.f4723c.length + " hex=" + a(0, 64).e() + "…]";
        }
        String strReplace = strA.substring(0, iA).replace("\\", "\\\\").replace(IOUtils.LINE_SEPARATOR_UNIX, "\\n").replace("\r", "\\r");
        if (iA < strA.length()) {
            return "[size=" + this.f4723c.length + " text=" + strReplace + "…]";
        }
        return "[text=" + strReplace + "]";
    }

    static int a(String str, int i) {
        int iCharCount = 0;
        int length = str.length();
        int i2 = 0;
        while (iCharCount < length) {
            if (i2 != i) {
                int iCodePointAt = str.codePointAt(iCharCount);
                if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                    return -1;
                }
                i2++;
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                return iCharCount;
            }
        }
        return str.length();
    }
}
