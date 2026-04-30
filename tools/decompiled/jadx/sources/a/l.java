package a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Task.java */
/* JADX INFO: loaded from: classes.dex */
public class l<TResult> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile s f23d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f26g;
    private TResult h;
    private Exception i;
    private boolean j;
    private u k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExecutorService f20a = d.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Executor f22c = d.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Executor f21b = a.b();
    private static l<?> m = new l<>((Object) null);
    private static l<Boolean> n = new l<>(true);
    private static l<Boolean> o = new l<>(false);
    private static l<?> p = new l<>(true);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f24e = new Object();
    private List<j<TResult, Void>> l = new ArrayList();

    public static s a() {
        return f23d;
    }

    l() {
    }

    private l(TResult tresult) {
        b(tresult);
    }

    private l(boolean z) {
        if (z) {
            g();
        } else {
            b((Object) null);
        }
    }

    public boolean b() {
        boolean z;
        synchronized (this.f24e) {
            z = this.f25f;
        }
        return z;
    }

    public boolean c() {
        boolean z;
        synchronized (this.f24e) {
            z = this.f26g;
        }
        return z;
    }

    public boolean d() {
        boolean z;
        synchronized (this.f24e) {
            z = f() != null;
        }
        return z;
    }

    public TResult e() {
        TResult tresult;
        synchronized (this.f24e) {
            tresult = this.h;
        }
        return tresult;
    }

    public Exception f() {
        Exception exc;
        synchronized (this.f24e) {
            if (this.i != null) {
                this.j = true;
                if (this.k != null) {
                    this.k.a();
                    this.k = null;
                }
            }
            exc = this.i;
        }
        return exc;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <TResult> l<TResult> a(TResult tresult) {
        if (tresult == 0) {
            return (l<TResult>) m;
        }
        if (tresult instanceof Boolean) {
            return ((Boolean) tresult).booleanValue() ? (l<TResult>) n : (l<TResult>) o;
        }
        t tVar = new t();
        tVar.b(tresult);
        return tVar.a();
    }

    public static <TResult> l<TResult> a(Exception exc) {
        t tVar = new t();
        tVar.b(exc);
        return tVar.a();
    }

    public static <TResult> l<TResult> a(Callable<TResult> callable, Executor executor) {
        return a(callable, executor, (g) null);
    }

    public static <TResult> l<TResult> a(Callable<TResult> callable, Executor executor, g gVar) {
        t tVar = new t();
        try {
            executor.execute(new r(gVar, tVar, callable));
        } catch (Exception e2) {
            tVar.b((Exception) new k(e2));
        }
        return tVar.a();
    }

    public <TContinuationResult> l<TContinuationResult> a(j<TResult, TContinuationResult> jVar, Executor executor, g gVar) {
        boolean zB;
        t tVar = new t();
        synchronized (this.f24e) {
            zB = b();
            if (!zB) {
                this.l.add(new m(this, tVar, jVar, executor, gVar));
            }
        }
        if (zB) {
            c(tVar, jVar, this, executor, gVar);
        }
        return tVar.a();
    }

    public <TContinuationResult> l<TContinuationResult> a(j<TResult, TContinuationResult> jVar) {
        return a(jVar, f22c, (g) null);
    }

    public <TContinuationResult> l<TContinuationResult> b(j<TResult, l<TContinuationResult>> jVar, Executor executor, g gVar) {
        boolean zB;
        t tVar = new t();
        synchronized (this.f24e) {
            zB = b();
            if (!zB) {
                this.l.add(new n(this, tVar, jVar, executor, gVar));
            }
        }
        if (zB) {
            d(tVar, jVar, this, executor, gVar);
        }
        return tVar.a();
    }

    public <TContinuationResult> l<TContinuationResult> b(j<TResult, l<TContinuationResult>> jVar) {
        return b(jVar, f22c, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void c(t<TContinuationResult> tVar, j<TResult, TContinuationResult> jVar, l<TResult> lVar, Executor executor, g gVar) {
        try {
            executor.execute(new o(gVar, tVar, jVar, lVar));
        } catch (Exception e2) {
            tVar.b(new k(e2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void d(t<TContinuationResult> tVar, j<TResult, l<TContinuationResult>> jVar, l<TResult> lVar, Executor executor, g gVar) {
        try {
            executor.execute(new p(gVar, tVar, jVar, lVar));
        } catch (Exception e2) {
            tVar.b(new k(e2));
        }
    }

    private void h() {
        synchronized (this.f24e) {
            Iterator<j<TResult, Void>> it = this.l.iterator();
            while (it.hasNext()) {
                try {
                    it.next().a(this);
                } catch (RuntimeException e2) {
                    throw e2;
                } catch (Exception e3) {
                    throw new RuntimeException(e3);
                }
            }
            this.l = null;
        }
    }

    boolean g() {
        boolean z = true;
        synchronized (this.f24e) {
            if (this.f25f) {
                z = false;
            } else {
                this.f25f = true;
                this.f26g = true;
                this.f24e.notifyAll();
                h();
            }
        }
        return z;
    }

    boolean b(TResult tresult) {
        boolean z = true;
        synchronized (this.f24e) {
            if (this.f25f) {
                z = false;
            } else {
                this.f25f = true;
                this.h = tresult;
                this.f24e.notifyAll();
                h();
            }
        }
        return z;
    }

    boolean b(Exception exc) {
        synchronized (this.f24e) {
            if (this.f25f) {
                return false;
            }
            this.f25f = true;
            this.i = exc;
            this.j = false;
            this.f24e.notifyAll();
            h();
            if (!this.j && a() != null) {
                this.k = new u(this);
            }
            return true;
        }
    }
}
