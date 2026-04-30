package d.a.c;

import d.al;
import d.am;
import d.ax;
import d.bd;
import d.o;
import d.z;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: RealInterceptorChain.java */
/* JADX INFO: loaded from: classes3.dex */
public final class i implements am {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<al> f4267a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d.a.b.h f4268b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f4269c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d.a.b.c f4270d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f4271e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ax f4272f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final d.g f4273g;
    private final z h;
    private final int i;
    private final int j;
    private final int k;
    private int l;

    public i(List<al> list, d.a.b.h hVar, d dVar, d.a.b.c cVar, int i, ax axVar, d.g gVar, z zVar, int i2, int i3, int i4) {
        this.f4267a = list;
        this.f4270d = cVar;
        this.f4268b = hVar;
        this.f4269c = dVar;
        this.f4271e = i;
        this.f4272f = axVar;
        this.f4273g = gVar;
        this.h = zVar;
        this.i = i2;
        this.j = i3;
        this.k = i4;
    }

    public o e() {
        return this.f4270d;
    }

    @Override // d.am
    public int b() {
        return this.i;
    }

    @Override // d.am
    public int c() {
        return this.j;
    }

    @Override // d.am
    public int d() {
        return this.k;
    }

    public d.a.b.h f() {
        return this.f4268b;
    }

    public d g() {
        return this.f4269c;
    }

    public d.g h() {
        return this.f4273g;
    }

    public z i() {
        return this.h;
    }

    @Override // d.am
    public ax a() {
        return this.f4272f;
    }

    @Override // d.am
    public bd a(ax axVar) throws IOException {
        return a(axVar, this.f4268b, this.f4269c, this.f4270d);
    }

    public bd a(ax axVar, d.a.b.h hVar, d dVar, d.a.b.c cVar) throws IOException {
        if (this.f4271e >= this.f4267a.size()) {
            throw new AssertionError();
        }
        this.l++;
        if (this.f4269c != null && !this.f4270d.a(axVar.a())) {
            throw new IllegalStateException("network interceptor " + this.f4267a.get(this.f4271e - 1) + " must retain the same host and port");
        }
        if (this.f4269c != null && this.l > 1) {
            throw new IllegalStateException("network interceptor " + this.f4267a.get(this.f4271e - 1) + " must call proceed() exactly once");
        }
        i iVar = new i(this.f4267a, hVar, dVar, cVar, this.f4271e + 1, axVar, this.f4273g, this.h, this.i, this.j, this.k);
        al alVar = this.f4267a.get(this.f4271e);
        bd bdVarIntercept = alVar.intercept(iVar);
        if (dVar != null && this.f4271e + 1 < this.f4267a.size() && iVar.l != 1) {
            throw new IllegalStateException("network interceptor " + alVar + " must call proceed() exactly once");
        }
        if (bdVarIntercept == null) {
            throw new NullPointerException("interceptor " + alVar + " returned null");
        }
        if (bdVarIntercept.f() == null) {
            throw new IllegalStateException("interceptor " + alVar + " returned a response with no body");
        }
        return bdVarIntercept;
    }
}
