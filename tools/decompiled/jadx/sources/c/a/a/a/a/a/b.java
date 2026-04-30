package c.a.a.a.a.a;

import android.content.Context;

/* JADX INFO: compiled from: MemoryValueCache.java */
/* JADX INFO: loaded from: classes.dex */
public class b<T> extends a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T f117a;

    public b() {
        this(null);
    }

    public b(c<T> cVar) {
        super(cVar);
    }

    @Override // c.a.a.a.a.a.a
    protected T a(Context context) {
        return this.f117a;
    }

    @Override // c.a.a.a.a.a.a
    protected void a(Context context, T t) {
        this.f117a = t;
    }
}
