package e;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: ForwardingTimeout.java */
/* JADX INFO: loaded from: classes3.dex */
public class n extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ac f4728a;

    public n(ac acVar) {
        if (acVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f4728a = acVar;
    }

    public final ac a() {
        return this.f4728a;
    }

    public final n a(ac acVar) {
        if (acVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f4728a = acVar;
        return this;
    }

    @Override // e.ac
    public ac a(long j, TimeUnit timeUnit) {
        return this.f4728a.a(j, timeUnit);
    }

    @Override // e.ac
    public long b_() {
        return this.f4728a.b_();
    }

    @Override // e.ac
    public boolean c_() {
        return this.f4728a.c_();
    }

    @Override // e.ac
    public long d() {
        return this.f4728a.d();
    }

    @Override // e.ac
    public ac a(long j) {
        return this.f4728a.a(j);
    }

    @Override // e.ac
    public ac d_() {
        return this.f4728a.d_();
    }

    @Override // e.ac
    public ac f() {
        return this.f4728a.f();
    }

    @Override // e.ac
    public void g() throws IOException {
        this.f4728a.g();
    }
}
