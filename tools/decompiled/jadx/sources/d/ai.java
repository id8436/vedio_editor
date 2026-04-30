package d;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.primitives.UnsignedBytes;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: HttpUrl.java */
/* JADX INFO: loaded from: classes.dex */
public final class ai {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final char[] f4514d = {'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f4515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4517c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f4518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f4519f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<String> f4520g;

    @Nullable
    private final List<String> h;

    @Nullable
    private final String i;
    private final String j;

    ai(aj ajVar) {
        this.f4515a = ajVar.f4521a;
        this.f4518e = a(ajVar.f4522b, false);
        this.f4519f = a(ajVar.f4523c, false);
        this.f4516b = ajVar.f4524d;
        this.f4517c = ajVar.a();
        this.f4520g = a(ajVar.f4526f, false);
        this.h = ajVar.f4527g != null ? a(ajVar.f4527g, true) : null;
        this.i = ajVar.h != null ? a(ajVar.h, false) : null;
        this.j = ajVar.toString();
    }

    public URI a() {
        String string = p().b().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e2) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e3) {
                throw new RuntimeException(e2);
            }
        }
    }

    public String b() {
        return this.f4515a;
    }

    public boolean c() {
        return this.f4515a.equals("https");
    }

    public String d() {
        if (this.f4518e.isEmpty()) {
            return "";
        }
        int length = this.f4515a.length() + 3;
        return this.j.substring(length, d.a.c.a(this.j, length, this.j.length(), ":@"));
    }

    public String e() {
        if (this.f4519f.isEmpty()) {
            return "";
        }
        return this.j.substring(this.j.indexOf(58, this.f4515a.length() + 3) + 1, this.j.indexOf(64));
    }

    public String f() {
        return this.f4516b;
    }

    public int g() {
        return this.f4517c;
    }

    public static int a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        if (str.equals("https")) {
            return 443;
        }
        return -1;
    }

    public String h() {
        int iIndexOf = this.j.indexOf(47, this.f4515a.length() + 3);
        return this.j.substring(iIndexOf, d.a.c.a(this.j, iIndexOf, this.j.length(), "?#"));
    }

    static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append(IOUtils.DIR_SEPARATOR_UNIX);
            sb.append(list.get(i));
        }
    }

    public List<String> i() {
        int iIndexOf = this.j.indexOf(47, this.f4515a.length() + 3);
        int iA = d.a.c.a(this.j, iIndexOf, this.j.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iA) {
            int i = iIndexOf + 1;
            iIndexOf = d.a.c.a(this.j, i, iA, IOUtils.DIR_SEPARATOR_UNIX);
            arrayList.add(this.j.substring(i, iIndexOf));
        }
        return arrayList;
    }

    public List<String> j() {
        return this.f4520g;
    }

    @Nullable
    public String k() {
        if (this.h == null) {
            return null;
        }
        int iIndexOf = this.j.indexOf(63) + 1;
        return this.j.substring(iIndexOf, d.a.c.a(this.j, iIndexOf, this.j.length(), '#'));
    }

    static void b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    static List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int iIndexOf = str.indexOf(38, i);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i = iIndexOf + 1;
        }
        return arrayList;
    }

    @Nullable
    public String l() {
        if (this.h == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        b(sb, this.h);
        return sb.toString();
    }

    public int m() {
        if (this.h != null) {
            return this.h.size() / 2;
        }
        return 0;
    }

    public String a(int i) {
        if (this.h == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.h.get(i * 2);
    }

    public String b(int i) {
        if (this.h == null) {
            throw new IndexOutOfBoundsException();
        }
        return this.h.get((i * 2) + 1);
    }

    @Nullable
    public String n() {
        if (this.i == null) {
            return null;
        }
        return this.j.substring(this.j.indexOf(35) + 1);
    }

    public String o() {
        return d("/...").b("").c("").c().toString();
    }

    @Nullable
    public ai c(String str) {
        aj ajVarD = d(str);
        if (ajVarD != null) {
            return ajVarD.c();
        }
        return null;
    }

    public aj p() {
        aj ajVar = new aj();
        ajVar.f4521a = this.f4515a;
        ajVar.f4522b = d();
        ajVar.f4523c = e();
        ajVar.f4524d = this.f4516b;
        ajVar.f4525e = this.f4517c != a(this.f4515a) ? this.f4517c : -1;
        ajVar.f4526f.clear();
        ajVar.f4526f.addAll(i());
        ajVar.f(k());
        ajVar.h = n();
        return ajVar;
    }

    @Nullable
    public aj d(String str) {
        aj ajVar = new aj();
        if (ajVar.a(this, str) == ak.SUCCESS) {
            return ajVar;
        }
        return null;
    }

    @Nullable
    public static ai e(String str) {
        aj ajVar = new aj();
        if (ajVar.a((ai) null, str) == ak.SUCCESS) {
            return ajVar.c();
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ai) && ((ai) obj).j.equals(this.j);
    }

    public int hashCode() {
        return this.j.hashCode();
    }

    public String toString() {
        return this.j;
    }

    static String a(String str, boolean z) {
        return a(str, 0, str.length(), z);
    }

    private List<String> a(List<String> list, boolean z) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            String str = list.get(i);
            arrayList.add(str != null ? a(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                e.f fVar = new e.f();
                fVar.a(str, i, i3);
                a(fVar, str, i3, i2, z);
                return fVar.p();
            }
        }
        return str.substring(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static void a(e.f r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
            r4 = -1
            r0 = r7
        L2:
            if (r0 >= r8) goto L46
            int r1 = r6.codePointAt(r0)
            r2 = 37
            if (r1 != r2) goto L36
            int r2 = r0 + 2
            if (r2 >= r8) goto L36
            int r2 = r0 + 1
            char r2 = r6.charAt(r2)
            int r2 = d.a.c.a(r2)
            int r3 = r0 + 2
            char r3 = r6.charAt(r3)
            int r3 = d.a.c.a(r3)
            if (r2 == r4) goto L42
            if (r3 == r4) goto L42
            int r2 = r2 << 4
            int r2 = r2 + r3
            r5.i(r2)
            int r0 = r0 + 2
        L30:
            int r1 = java.lang.Character.charCount(r1)
            int r0 = r0 + r1
            goto L2
        L36:
            r2 = 43
            if (r1 != r2) goto L42
            if (r9 == 0) goto L42
            r2 = 32
            r5.i(r2)
            goto L30
        L42:
            r5.a(r1)
            goto L30
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: d.ai.a(e.f, java.lang.String, int, int, boolean):void");
    }

    static boolean a(String str, int i, int i2) {
        return i + 2 < i2 && str.charAt(i) == '%' && d.a.c.a(str.charAt(i + 1)) != -1 && d.a.c.a(str.charAt(i + 2)) != -1;
    }

    static String a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        int iCharCount = i;
        while (iCharCount < i2) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z4) && str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z && (!z2 || a(str, iCharCount, i2)))) && (iCodePointAt != 43 || !z3)))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                e.f fVar = new e.f();
                fVar.a(str, i, iCharCount);
                a(fVar, str, iCharCount, i2, str2, z, z2, z3, z4, charset);
                return fVar.p();
            }
        }
        return str.substring(i, i2);
    }

    static void a(e.f fVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        e.f fVar2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z3) {
                    fVar.b(z ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z4) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z || (z2 && !a(str, i, i2)))))) {
                    if (fVar2 == null) {
                        fVar2 = new e.f();
                    }
                    if (charset == null || charset.equals(d.a.c.f4257e)) {
                        fVar2.a(iCodePointAt);
                    } else {
                        fVar2.a(str, i, Character.charCount(iCodePointAt) + i, charset);
                    }
                    while (!fVar2.f()) {
                        int i3 = fVar2.i() & UnsignedBytes.MAX_VALUE;
                        fVar.i(37);
                        fVar.i((int) f4514d[(i3 >> 4) & 15]);
                        fVar.i((int) f4514d[i3 & 15]);
                    }
                } else {
                    fVar.a(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, charset);
    }

    static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4, null);
    }
}
