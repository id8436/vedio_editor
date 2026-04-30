package d.a.e;

/* JADX INFO: compiled from: Header.java */
/* JADX INFO: loaded from: classes3.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e.k f4359a = e.k.a(":");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e.k f4360b = e.k.a(":status");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e.k f4361c = e.k.a(":method");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e.k f4362d = e.k.a(":path");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final e.k f4363e = e.k.a(":scheme");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final e.k f4364f = e.k.a(":authority");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final e.k f4365g;
    public final e.k h;
    final int i;

    public c(String str, String str2) {
        this(e.k.a(str), e.k.a(str2));
    }

    public c(e.k kVar, String str) {
        this(kVar, e.k.a(str));
    }

    public c(e.k kVar, e.k kVar2) {
        this.f4365g = kVar;
        this.h = kVar2;
        this.i = kVar.g() + 32 + kVar2.g();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f4365g.equals(cVar.f4365g) && this.h.equals(cVar.h);
    }

    public int hashCode() {
        return ((this.f4365g.hashCode() + 527) * 31) + this.h.hashCode();
    }

    public String toString() {
        return d.a.c.a("%s: %s", this.f4365g.a(), this.h.a());
    }
}
