package d;

import javax.annotation.Nullable;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: classes.dex */
public class be {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ax f4607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    au f4608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f4610d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    af f4611e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ah f4612f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    bf f4613g;
    bd h;
    bd i;
    bd j;
    long k;
    long l;

    public be() {
        this.f4609c = -1;
        this.f4612f = new ah();
    }

    be(bd bdVar) {
        this.f4609c = -1;
        this.f4607a = bdVar.f4600a;
        this.f4608b = bdVar.f4601b;
        this.f4609c = bdVar.f4602c;
        this.f4610d = bdVar.f4603d;
        this.f4611e = bdVar.f4604e;
        this.f4612f = bdVar.f4605f.c();
        this.f4613g = bdVar.f4606g;
        this.h = bdVar.h;
        this.i = bdVar.i;
        this.j = bdVar.j;
        this.k = bdVar.k;
        this.l = bdVar.l;
    }

    public be a(ax axVar) {
        this.f4607a = axVar;
        return this;
    }

    public be a(au auVar) {
        this.f4608b = auVar;
        return this;
    }

    public be a(int i) {
        this.f4609c = i;
        return this;
    }

    public be a(String str) {
        this.f4610d = str;
        return this;
    }

    public be a(@Nullable af afVar) {
        this.f4611e = afVar;
        return this;
    }

    public be a(String str, String str2) {
        this.f4612f.a(str, str2);
        return this;
    }

    public be a(ag agVar) {
        this.f4612f = agVar.c();
        return this;
    }

    public be a(@Nullable bf bfVar) {
        this.f4613g = bfVar;
        return this;
    }

    public be a(@Nullable bd bdVar) {
        if (bdVar != null) {
            a("networkResponse", bdVar);
        }
        this.h = bdVar;
        return this;
    }

    public be b(@Nullable bd bdVar) {
        if (bdVar != null) {
            a("cacheResponse", bdVar);
        }
        this.i = bdVar;
        return this;
    }

    private void a(String str, bd bdVar) {
        if (bdVar.f4606g != null) {
            throw new IllegalArgumentException(str + ".body != null");
        }
        if (bdVar.h != null) {
            throw new IllegalArgumentException(str + ".networkResponse != null");
        }
        if (bdVar.i != null) {
            throw new IllegalArgumentException(str + ".cacheResponse != null");
        }
        if (bdVar.j != null) {
            throw new IllegalArgumentException(str + ".priorResponse != null");
        }
    }

    public be c(@Nullable bd bdVar) {
        if (bdVar != null) {
            d(bdVar);
        }
        this.j = bdVar;
        return this;
    }

    private void d(bd bdVar) {
        if (bdVar.f4606g != null) {
            throw new IllegalArgumentException("priorResponse.body != null");
        }
    }

    public be a(long j) {
        this.k = j;
        return this;
    }

    public be b(long j) {
        this.l = j;
        return this;
    }

    public bd a() {
        if (this.f4607a == null) {
            throw new IllegalStateException("request == null");
        }
        if (this.f4608b == null) {
            throw new IllegalStateException("protocol == null");
        }
        if (this.f4609c < 0) {
            throw new IllegalStateException("code < 0: " + this.f4609c);
        }
        if (this.f4610d == null) {
            throw new IllegalStateException("message == null");
        }
        return new bd(this);
    }
}
