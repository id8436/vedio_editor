package com.facebook.d.h;

import java.lang.ref.ReferenceQueue;

/* JADX INFO: compiled from: CloseableReference.java */
/* JADX INFO: loaded from: classes2.dex */
class d<T> extends a<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ReferenceQueue<a> f1956d = new ReferenceQueue<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f1957e;

    /* synthetic */ d(j jVar, b bVar) {
        this(jVar);
    }

    /* synthetic */ d(Object obj, i iVar, b bVar) {
        this(obj, (i<Object>) iVar);
    }

    @Override // com.facebook.d.h.a
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    static {
        new Thread(new e(), "CloseableReferenceDestructorThread").start();
    }

    private d(j<T> jVar) {
        super((j) jVar, (b) null);
        this.f1957e = new f(this, f1956d);
    }

    private d(T t, i<T> iVar) {
        super(t, iVar, null);
        this.f1957e = new f(this, f1956d);
    }

    @Override // com.facebook.d.h.a, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f1957e.a(true);
    }
}
