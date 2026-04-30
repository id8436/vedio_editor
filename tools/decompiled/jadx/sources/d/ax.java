package d;

import com.google.gdata.data.Category;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes.dex */
public final class ax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ai f4580a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f4581b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ag f4582c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    final az f4583d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Object f4584e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile e f4585f;

    ax(ay ayVar) {
        this.f4580a = ayVar.f4586a;
        this.f4581b = ayVar.f4587b;
        this.f4582c = ayVar.f4588c.a();
        this.f4583d = ayVar.f4589d;
        this.f4584e = ayVar.f4590e != null ? ayVar.f4590e : this;
    }

    public ai a() {
        return this.f4580a;
    }

    public String b() {
        return this.f4581b;
    }

    public ag c() {
        return this.f4582c;
    }

    public String a(String str) {
        return this.f4582c.a(str);
    }

    @Nullable
    public az d() {
        return this.f4583d;
    }

    public ay e() {
        return new ay(this);
    }

    public e f() {
        e eVar = this.f4585f;
        if (eVar != null) {
            return eVar;
        }
        e eVarA = e.a(this.f4582c);
        this.f4585f = eVarA;
        return eVarA;
    }

    public boolean g() {
        return this.f4580a.c();
    }

    public String toString() {
        return "Request{method=" + this.f4581b + ", url=" + this.f4580a + ", tag=" + (this.f4584e != this ? this.f4584e : null) + Category.SCHEME_SUFFIX;
    }
}
