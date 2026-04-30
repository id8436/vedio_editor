package c.a.a.a.a.a;

import android.content.Context;

/* JADX INFO: compiled from: AbstractValueCache.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c<T> f116a;

    protected abstract T a(Context context);

    protected abstract void a(Context context, T t);

    public a(c<T> cVar) {
        this.f116a = cVar;
    }

    @Override // c.a.a.a.a.a.c
    public final synchronized T a(Context context, d<T> dVar) throws Exception {
        T tA;
        tA = a(context);
        if (tA == null) {
            tA = this.f116a != null ? this.f116a.a(context, dVar) : dVar.load(context);
            b(context, tA);
        }
        return tA;
    }

    private void b(Context context, T t) {
        if (t == null) {
            throw new NullPointerException();
        }
        a(context, t);
    }
}
