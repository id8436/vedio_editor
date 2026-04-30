package a;

/* JADX INFO: compiled from: TaskCompletionSource.java */
/* JADX INFO: loaded from: classes.dex */
public class t<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<TResult> f49a = new l<>();

    public l<TResult> a() {
        return this.f49a;
    }

    public boolean b() {
        return this.f49a.g();
    }

    public boolean a(TResult tresult) {
        return this.f49a.b(tresult);
    }

    public boolean a(Exception exc) {
        return this.f49a.b(exc);
    }

    public void c() {
        if (!b()) {
            throw new IllegalStateException("Cannot cancel a completed task.");
        }
    }

    public void b(TResult tresult) {
        if (!a(tresult)) {
            throw new IllegalStateException("Cannot set the result of a completed task.");
        }
    }

    public void b(Exception exc) {
        if (!a(exc)) {
            throw new IllegalStateException("Cannot set the error on a completed task.");
        }
    }
}
