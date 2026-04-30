package com.facebook.d.h;

import java.lang.ref.SoftReference;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: OOMSoftReference.java */
/* JADX INFO: loaded from: classes.dex */
public class h<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    SoftReference<T> f1963a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    SoftReference<T> f1964b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    SoftReference<T> f1965c = null;

    public void a(@Nonnull T t) {
        this.f1963a = new SoftReference<>(t);
        this.f1964b = new SoftReference<>(t);
        this.f1965c = new SoftReference<>(t);
    }

    @Nullable
    public T a() {
        if (this.f1963a == null) {
            return null;
        }
        return this.f1963a.get();
    }

    public void b() {
        if (this.f1963a != null) {
            this.f1963a.clear();
            this.f1963a = null;
        }
        if (this.f1964b != null) {
            this.f1964b.clear();
            this.f1964b = null;
        }
        if (this.f1965c != null) {
            this.f1965c.clear();
            this.f1965c = null;
        }
    }
}
