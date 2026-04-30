package f;

import d.bf;
import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: OkHttpCall.java */
/* JADX INFO: loaded from: classes.dex */
final class u<T> implements g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final az<T, ?> f4866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final Object[] f4867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f4868c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private d.g f4869d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private Throwable f4870e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f4871f;

    u(az<T, ?> azVar, @Nullable Object[] objArr) {
        this.f4866a = azVar;
        this.f4867b = objArr;
    }

    @Override // f.g
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public u<T> clone() {
        return new u<>(this.f4866a, this.f4867b);
    }

    @Override // f.g
    public void a(j<T> jVar) {
        Throwable th;
        d.g gVarE;
        bb.a(jVar, "callback == null");
        synchronized (this) {
            if (this.f4871f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f4871f = true;
            d.g gVar = this.f4869d;
            th = this.f4870e;
            if (gVar == null && th == null) {
                try {
                    gVarE = e();
                    this.f4869d = gVarE;
                } catch (Throwable th2) {
                    th = th2;
                    this.f4870e = th;
                    gVarE = gVar;
                }
            } else {
                gVarE = gVar;
            }
        }
        if (th != null) {
            jVar.onFailure(this, th);
            return;
        }
        if (this.f4868c) {
            gVarE.b();
        }
        gVarE.a(new v(this, jVar));
    }

    @Override // f.g
    public av<T> a() throws IOException {
        d.g gVarE;
        synchronized (this) {
            if (this.f4871f) {
                throw new IllegalStateException("Already executed.");
            }
            this.f4871f = true;
            if (this.f4870e != null) {
                if (this.f4870e instanceof IOException) {
                    throw ((IOException) this.f4870e);
                }
                throw ((RuntimeException) this.f4870e);
            }
            gVarE = this.f4869d;
            if (gVarE == null) {
                try {
                    gVarE = e();
                    this.f4869d = gVarE;
                } catch (IOException | RuntimeException e2) {
                    this.f4870e = e2;
                    throw e2;
                }
            }
        }
        if (this.f4868c) {
            gVarE.b();
        }
        return a(gVarE.a());
    }

    private d.g e() throws IOException {
        d.g gVarA = this.f4866a.f4828c.a(this.f4866a.a(this.f4867b));
        if (gVarA == null) {
            throw new NullPointerException("Call.Factory returned null.");
        }
        return gVarA;
    }

    av<T> a(d.bd bdVar) throws IOException {
        bf bfVarF = bdVar.f();
        d.bd bdVarA = bdVar.g().a(new y(bfVarF.a(), bfVarF.b())).a();
        int iB = bdVarA.b();
        if (iB < 200 || iB >= 300) {
            try {
                return av.a(bb.a(bfVarF), bdVarA);
            } finally {
                bfVarF.close();
            }
        }
        if (iB == 204 || iB == 205) {
            bfVarF.close();
            return av.a((Object) null, bdVarA);
        }
        w wVar = new w(bfVarF);
        try {
            return av.a(this.f4866a.a(wVar), bdVarA);
        } catch (RuntimeException e2) {
            wVar.g();
            throw e2;
        }
    }

    @Override // f.g
    public boolean b() {
        if (!this.f4868c) {
            synchronized (this) {
                z = this.f4869d != null && this.f4869d.c();
            }
        }
        return z;
    }
}
