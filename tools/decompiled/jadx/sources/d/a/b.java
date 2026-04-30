package d.a;

/* JADX INFO: compiled from: NamedRunnable.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final String f4221b;

    protected abstract void b();

    public b(String str, Object... objArr) {
        this.f4221b = c.a(str, objArr);
    }

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f4221b);
        try {
            b();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
