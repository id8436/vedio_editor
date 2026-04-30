package d;

import com.google.gdata.data.Category;
import java.io.Closeable;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: classes.dex */
public final class bd implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ax f4600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final au f4601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4602c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f4603d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    final af f4604e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final ag f4605f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    final bf f4606g;

    @Nullable
    final bd h;

    @Nullable
    final bd i;

    @Nullable
    final bd j;
    final long k;
    final long l;
    private volatile e m;

    bd(be beVar) {
        this.f4600a = beVar.f4607a;
        this.f4601b = beVar.f4608b;
        this.f4602c = beVar.f4609c;
        this.f4603d = beVar.f4610d;
        this.f4604e = beVar.f4611e;
        this.f4605f = beVar.f4612f.a();
        this.f4606g = beVar.f4613g;
        this.h = beVar.h;
        this.i = beVar.i;
        this.j = beVar.j;
        this.k = beVar.k;
        this.l = beVar.l;
    }

    public ax a() {
        return this.f4600a;
    }

    public int b() {
        return this.f4602c;
    }

    public boolean c() {
        return this.f4602c >= 200 && this.f4602c < 300;
    }

    public af d() {
        return this.f4604e;
    }

    @Nullable
    public String a(String str) {
        return a(str, null);
    }

    @Nullable
    public String a(String str, @Nullable String str2) {
        String strA = this.f4605f.a(str);
        return strA != null ? strA : str2;
    }

    public ag e() {
        return this.f4605f;
    }

    @Nullable
    public bf f() {
        return this.f4606g;
    }

    public be g() {
        return new be(this);
    }

    @Nullable
    public bd h() {
        return this.j;
    }

    public e i() {
        e eVar = this.m;
        if (eVar != null) {
            return eVar;
        }
        e eVarA = e.a(this.f4605f);
        this.m = eVarA;
        return eVarA;
    }

    public long j() {
        return this.k;
    }

    public long k() {
        return this.l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f4606g == null) {
            throw new IllegalStateException("response is not eligible for a body and must not be closed");
        }
        this.f4606g.close();
    }

    public String toString() {
        return "Response{protocol=" + this.f4601b + ", code=" + this.f4602c + ", message=" + this.f4603d + ", url=" + this.f4600a.a() + Category.SCHEME_SUFFIX;
    }
}
