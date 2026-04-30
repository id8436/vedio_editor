package d.a.a;

import d.ag;
import d.ah;
import d.ax;
import d.bd;
import d.be;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.apache.commons.lang3.time.DateUtils;

/* JADX INFO: compiled from: CacheStrategy.java */
/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final long f4196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ax f4197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final bd f4198c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Date f4199d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f4200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Date f4201f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f4202g;
    private Date h;
    private long i;
    private long j;
    private String k;
    private int l;

    public e(long j, ax axVar, bd bdVar) {
        this.l = -1;
        this.f4196a = j;
        this.f4197b = axVar;
        this.f4198c = bdVar;
        if (bdVar != null) {
            this.i = bdVar.j();
            this.j = bdVar.k();
            ag agVarE = bdVar.e();
            int iA = agVarE.a();
            for (int i = 0; i < iA; i++) {
                String strA = agVarE.a(i);
                String strB = agVarE.b(i);
                if ("Date".equalsIgnoreCase(strA)) {
                    this.f4199d = d.a.c.e.a(strB);
                    this.f4200e = strB;
                } else if ("Expires".equalsIgnoreCase(strA)) {
                    this.h = d.a.c.e.a(strB);
                } else if ("Last-Modified".equalsIgnoreCase(strA)) {
                    this.f4201f = d.a.c.e.a(strB);
                    this.f4202g = strB;
                } else if ("ETag".equalsIgnoreCase(strA)) {
                    this.k = strB;
                } else if ("Age".equalsIgnoreCase(strA)) {
                    this.l = d.a.c.g.b(strB, -1);
                }
            }
        }
    }

    public d a() {
        d dVarB = b();
        if (dVarB.f4194a != null && this.f4197b.f().i()) {
            return new d(null, null);
        }
        return dVarB;
    }

    private d b() {
        String str;
        String str2;
        long millis = 0;
        if (this.f4198c == null) {
            return new d(this.f4197b, null);
        }
        if (this.f4197b.g() && this.f4198c.d() == null) {
            return new d(this.f4197b, null);
        }
        if (!d.a(this.f4198c, this.f4197b)) {
            return new d(this.f4197b, null);
        }
        d.e eVarF = this.f4197b.f();
        if (eVarF.a() || a(this.f4197b)) {
            return new d(this.f4197b, null);
        }
        d.e eVarI = this.f4198c.i();
        if (eVarI.j()) {
            return new d(null, this.f4198c);
        }
        long jD = d();
        long jC = c();
        if (eVarF.c() != -1) {
            jC = Math.min(jC, TimeUnit.SECONDS.toMillis(eVarF.c()));
        }
        long millis2 = eVarF.h() != -1 ? TimeUnit.SECONDS.toMillis(eVarF.h()) : 0L;
        if (!eVarI.f() && eVarF.g() != -1) {
            millis = TimeUnit.SECONDS.toMillis(eVarF.g());
        }
        if (!eVarI.a() && jD + millis2 < millis + jC) {
            be beVarG = this.f4198c.g();
            if (millis2 + jD >= jC) {
                beVarG.a("Warning", "110 HttpURLConnection \"Response is stale\"");
            }
            if (jD > DateUtils.MILLIS_PER_DAY && e()) {
                beVarG.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
            }
            return new d(null, beVarG.a());
        }
        if (this.k != null) {
            str = "If-None-Match";
            str2 = this.k;
        } else if (this.f4201f != null) {
            str = "If-Modified-Since";
            str2 = this.f4202g;
        } else if (this.f4199d != null) {
            str = "If-Modified-Since";
            str2 = this.f4200e;
        } else {
            return new d(this.f4197b, null);
        }
        ah ahVarC = this.f4197b.c().c();
        d.a.a.f4187a.a(ahVarC, str, str2);
        return new d(this.f4197b.e().a(ahVarC.a()).b(), this.f4198c);
    }

    private long c() {
        long time;
        long time2;
        if (this.f4198c.i().c() != -1) {
            return TimeUnit.SECONDS.toMillis(r0.c());
        }
        if (this.h != null) {
            if (this.f4199d != null) {
                time2 = this.f4199d.getTime();
            } else {
                time2 = this.j;
            }
            long time3 = this.h.getTime() - time2;
            if (time3 <= 0) {
                time3 = 0;
            }
            return time3;
        }
        if (this.f4201f == null || this.f4198c.a().a().l() != null) {
            return 0L;
        }
        if (this.f4199d != null) {
            time = this.f4199d.getTime();
        } else {
            time = this.i;
        }
        long time4 = time - this.f4201f.getTime();
        if (time4 > 0) {
            return time4 / 10;
        }
        return 0L;
    }

    private long d() {
        long jMax = this.f4199d != null ? Math.max(0L, this.j - this.f4199d.getTime()) : 0L;
        if (this.l != -1) {
            jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(this.l));
        }
        return jMax + (this.j - this.i) + (this.f4196a - this.j);
    }

    private boolean e() {
        return this.f4198c.i().c() == -1 && this.h == null;
    }

    private static boolean a(ax axVar) {
        return (axVar.a("If-Modified-Since") == null && axVar.a("If-None-Match") == null) ? false : true;
    }
}
