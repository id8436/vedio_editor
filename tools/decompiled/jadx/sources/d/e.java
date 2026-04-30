package d;

import android.support.v7.widget.ActivityChooserView;
import com.google.gdata.data.photos.GphotoAccess;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: compiled from: CacheControl.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e f4634a = new f().a().c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e f4635b = new f().b().a(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, TimeUnit.SECONDS).c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    String f4636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f4637d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f4638e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f4639f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f4640g;
    private final boolean h;
    private final boolean i;
    private final boolean j;
    private final int k;
    private final int l;
    private final boolean m;
    private final boolean n;
    private final boolean o;

    private e(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.f4637d = z;
        this.f4638e = z2;
        this.f4639f = i;
        this.f4640g = i2;
        this.h = z3;
        this.i = z4;
        this.j = z5;
        this.k = i3;
        this.l = i4;
        this.m = z6;
        this.n = z7;
        this.o = z8;
        this.f4636c = str;
    }

    e(f fVar) {
        this.f4637d = fVar.f4641a;
        this.f4638e = fVar.f4642b;
        this.f4639f = fVar.f4643c;
        this.f4640g = -1;
        this.h = false;
        this.i = false;
        this.j = false;
        this.k = fVar.f4644d;
        this.l = fVar.f4645e;
        this.m = fVar.f4646f;
        this.n = fVar.f4647g;
        this.o = fVar.h;
    }

    public boolean a() {
        return this.f4637d;
    }

    public boolean b() {
        return this.f4638e;
    }

    public int c() {
        return this.f4639f;
    }

    public boolean d() {
        return this.h;
    }

    public boolean e() {
        return this.i;
    }

    public boolean f() {
        return this.j;
    }

    public int g() {
        return this.k;
    }

    public int h() {
        return this.l;
    }

    public boolean i() {
        return this.m;
    }

    public boolean j() {
        return this.o;
    }

    public static e a(ag agVar) {
        boolean z;
        String str;
        boolean z2 = false;
        boolean z3 = false;
        int iB = -1;
        int iB2 = -1;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        int iB3 = -1;
        int iB4 = -1;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = true;
        int iA = agVar.a();
        int i = 0;
        String str2 = null;
        while (true) {
            z = z2;
            if (i >= iA) {
                break;
            }
            String strA = agVar.a(i);
            String strB = agVar.b(i);
            if (strA.equalsIgnoreCase("Cache-Control")) {
                if (str2 != null) {
                    z10 = false;
                } else {
                    str2 = strB;
                }
            } else if (!strA.equalsIgnoreCase("Pragma")) {
                z2 = z;
                i++;
            } else {
                z10 = false;
            }
            z2 = z;
            int i2 = 0;
            while (i2 < strB.length()) {
                int iA2 = d.a.c.g.a(strB, i2, "=,;");
                String strTrim = strB.substring(i2, iA2).trim();
                if (iA2 == strB.length() || strB.charAt(iA2) == ',' || strB.charAt(iA2) == ';') {
                    i2 = iA2 + 1;
                    str = null;
                } else {
                    int iA3 = d.a.c.g.a(strB, iA2 + 1);
                    if (iA3 < strB.length() && strB.charAt(iA3) == '\"') {
                        int i3 = iA3 + 1;
                        int iA4 = d.a.c.g.a(strB, i3, "\"");
                        String strSubstring = strB.substring(i3, iA4);
                        i2 = iA4 + 1;
                        str = strSubstring;
                    } else {
                        int iA5 = d.a.c.g.a(strB, iA3, ",;");
                        String strTrim2 = strB.substring(iA3, iA5).trim();
                        i2 = iA5;
                        str = strTrim2;
                    }
                }
                if (HttpHeaderValues.NO_CACHE.equalsIgnoreCase(strTrim)) {
                    z2 = true;
                } else if ("no-store".equalsIgnoreCase(strTrim)) {
                    z3 = true;
                } else if ("max-age".equalsIgnoreCase(strTrim)) {
                    iB = d.a.c.g.b(str, -1);
                } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                    iB2 = d.a.c.g.b(str, -1);
                } else if (GphotoAccess.Value.PRIVATE.equalsIgnoreCase(strTrim)) {
                    z4 = true;
                } else if ("public".equalsIgnoreCase(strTrim)) {
                    z5 = true;
                } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                    z6 = true;
                } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                    iB3 = d.a.c.g.b(str, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                    iB4 = d.a.c.g.b(str, -1);
                } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                    z7 = true;
                } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                    z8 = true;
                } else if ("immutable".equalsIgnoreCase(strTrim)) {
                    z9 = true;
                }
            }
            i++;
        }
        return new e(z, z3, iB, iB2, z4, z5, z6, iB3, iB4, z7, z8, z9, !z10 ? null : str2);
    }

    public String toString() {
        String str = this.f4636c;
        if (str != null) {
            return str;
        }
        String strK = k();
        this.f4636c = strK;
        return strK;
    }

    private String k() {
        StringBuilder sb = new StringBuilder();
        if (this.f4637d) {
            sb.append("no-cache, ");
        }
        if (this.f4638e) {
            sb.append("no-store, ");
        }
        if (this.f4639f != -1) {
            sb.append("max-age=").append(this.f4639f).append(", ");
        }
        if (this.f4640g != -1) {
            sb.append("s-maxage=").append(this.f4640g).append(", ");
        }
        if (this.h) {
            sb.append("private, ");
        }
        if (this.i) {
            sb.append("public, ");
        }
        if (this.j) {
            sb.append("must-revalidate, ");
        }
        if (this.k != -1) {
            sb.append("max-stale=").append(this.k).append(", ");
        }
        if (this.l != -1) {
            sb.append("min-fresh=").append(this.l).append(", ");
        }
        if (this.m) {
            sb.append("only-if-cached, ");
        }
        if (this.n) {
            sb.append("no-transform, ");
        }
        if (this.o) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        return sb.toString();
    }
}
