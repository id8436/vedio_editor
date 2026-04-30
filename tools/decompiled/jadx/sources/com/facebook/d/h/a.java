package com.facebook.d.h;

import java.io.Closeable;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: CloseableReference.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<T> implements Closeable, Cloneable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static volatile g f1951f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    protected Throwable f1953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    protected boolean f1954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final j<T> f1955c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Class<a> f1949d = a.class;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final i<Closeable> f1950e = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile boolean f1952g = true;

    /* synthetic */ a(j jVar, b bVar) {
        this(jVar);
    }

    /* synthetic */ a(Object obj, i iVar, b bVar) {
        this(obj, (i<Object>) iVar);
    }

    private a(j<T> jVar) {
        this.f1954b = false;
        this.f1955c = (j) com.facebook.d.d.k.a(jVar);
        jVar.c();
        this.f1953a = j();
    }

    private a(T t, i<T> iVar) {
        this.f1954b = false;
        this.f1955c = new j<>(t, iVar);
        this.f1953a = j();
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;)Lcom/facebook/d/h/a<TT;>; */
    @Nullable
    public static a a(@Nullable Closeable closeable) {
        if (closeable == null) {
            return null;
        }
        return b(closeable, f1950e);
    }

    @Nullable
    public static <T> a<T> a(@Nullable T t, i<T> iVar) {
        if (t == null) {
            return null;
        }
        return b(t, iVar);
    }

    private static <T> a<T> b(@Nullable T t, i<T> iVar) {
        b bVar = null;
        return f1952g ? new c(t, iVar, bVar) : new d(t, iVar, bVar);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.f1954b) {
                this.f1954b = true;
                this.f1955c.d();
            }
        }
    }

    public synchronized T a() {
        com.facebook.d.d.k.b(!this.f1954b);
        return this.f1955c.a();
    }

    @Override // 
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public synchronized a<T> clone() {
        this.f1953a = j();
        com.facebook.d.d.k.b(d());
        return i();
    }

    public synchronized a<T> c() {
        this.f1953a = j();
        return d() ? i() : null;
    }

    private a<T> i() {
        b bVar = null;
        return f1952g ? new c((j) this.f1955c, bVar) : new d((j) this.f1955c, bVar);
    }

    public synchronized boolean d() {
        return !this.f1954b;
    }

    public static boolean e() {
        return f1951f != null;
    }

    public void a(Throwable th) {
        this.f1953a = th;
    }

    public synchronized int f() {
        return d() ? System.identityHashCode(this.f1955c.a()) : 0;
    }

    public static boolean a(@Nullable a<?> aVar) {
        return aVar != null && aVar.d();
    }

    @Nullable
    public static <T> a<T> b(@Nullable a<T> aVar) {
        if (aVar != null) {
            return aVar.c();
        }
        return null;
    }

    public static void c(@Nullable a<?> aVar) {
        if (aVar != null) {
            aVar.close();
        }
    }

    @Nullable
    private static Throwable j() {
        if (f1951f != null) {
            return new Throwable();
        }
        return null;
    }
}
