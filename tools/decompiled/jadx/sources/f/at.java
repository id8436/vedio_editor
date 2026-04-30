package f;

import com.adobe.creativesdk.foundation.internal.cache.AdobeCommonCacheAvailabilityFlag;
import com.google.common.primitives.UnsignedBytes;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: RequestBuilder.java */
/* JADX INFO: loaded from: classes.dex */
final class at {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f4797a = {'0', '1', '2', '3', '4', '5', '6', AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_OFFLINE_FLAG, AdobeCommonCacheAvailabilityFlag.ADOBE_COMMON_CACHE_ONLINE_FLAG, '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d.ai f4799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private String f4800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private d.aj f4801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final d.ay f4802f = new d.ay();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private d.an f4803g;
    private final boolean h;

    @Nullable
    private d.ap i;

    @Nullable
    private d.ae j;

    @Nullable
    private d.az k;

    at(String str, d.ai aiVar, @Nullable String str2, @Nullable d.ag agVar, @Nullable d.an anVar, boolean z, boolean z2, boolean z3) {
        this.f4798b = str;
        this.f4799c = aiVar;
        this.f4800d = str2;
        this.f4803g = anVar;
        this.h = z;
        if (agVar != null) {
            this.f4802f.a(agVar);
        }
        if (z2) {
            this.j = new d.ae();
        } else if (z3) {
            this.i = new d.ap();
            this.i.a(d.ao.f4544e);
        }
    }

    void a(Object obj) {
        this.f4800d = obj.toString();
    }

    void a(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            d.an anVarA = d.an.a(str2);
            if (anVarA == null) {
                throw new IllegalArgumentException("Malformed content type: " + str2);
            }
            this.f4803g = anVarA;
            return;
        }
        this.f4802f.b(str, str2);
    }

    void a(String str, String str2, boolean z) {
        if (this.f4800d == null) {
            throw new AssertionError();
        }
        this.f4800d = this.f4800d.replace("{" + str + "}", a(str2, z));
    }

    private static String a(String str, boolean z) {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt < 127 && " \"<>^`{}|\\?#".indexOf(iCodePointAt) == -1 && (z || (iCodePointAt != 47 && iCodePointAt != 37))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                e.f fVar = new e.f();
                fVar.a(str, 0, iCharCount);
                a(fVar, str, iCharCount, length, z);
                return fVar.p();
            }
        }
        return str;
    }

    private static void a(e.f fVar, String str, int i, int i2, boolean z) {
        e.f fVar2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (fVar2 == null) {
                        fVar2 = new e.f();
                    }
                    fVar2.a(iCodePointAt);
                    while (!fVar2.f()) {
                        int i3 = fVar2.i() & UnsignedBytes.MAX_VALUE;
                        fVar.i(37);
                        fVar.i((int) f4797a[(i3 >> 4) & 15]);
                        fVar.i((int) f4797a[i3 & 15]);
                    }
                } else {
                    fVar.a(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    void b(String str, @Nullable String str2, boolean z) {
        if (this.f4800d != null) {
            this.f4801e = this.f4799c.d(this.f4800d);
            if (this.f4801e == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f4799c + ", Relative: " + this.f4800d);
            }
            this.f4800d = null;
        }
        if (z) {
            this.f4801e.b(str, str2);
        } else {
            this.f4801e.a(str, str2);
        }
    }

    void c(String str, String str2, boolean z) {
        if (z) {
            this.j.b(str, str2);
        } else {
            this.j.a(str, str2);
        }
    }

    void a(d.ag agVar, d.az azVar) {
        this.i.a(agVar, azVar);
    }

    void a(d.aq aqVar) {
        this.i.a(aqVar);
    }

    void a(d.az azVar) {
        this.k = azVar;
    }

    d.ax a() {
        d.ai aiVarC;
        d.aj ajVar = this.f4801e;
        if (ajVar != null) {
            aiVarC = ajVar.c();
        } else {
            aiVarC = this.f4799c.c(this.f4800d);
            if (aiVarC == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f4799c + ", Relative: " + this.f4800d);
            }
        }
        d.az auVar = this.k;
        if (auVar == null) {
            if (this.j != null) {
                auVar = this.j.a();
            } else if (this.i != null) {
                auVar = this.i.a();
            } else if (this.h) {
                auVar = d.az.create((d.an) null, new byte[0]);
            }
        }
        d.an anVar = this.f4803g;
        if (anVar != null) {
            if (auVar != null) {
                auVar = new au(auVar, anVar);
            } else {
                this.f4802f.b("Content-Type", anVar.toString());
            }
        }
        return this.f4802f.a(aiVarC).a(this.f4798b, auVar).b();
    }
}
