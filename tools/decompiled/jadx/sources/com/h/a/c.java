package com.h.a;

import android.graphics.Typeface;

/* JADX INFO: compiled from: TypefaceCollection.java */
/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Typeface f3184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f3185b = new a();

    public c a(int i, Typeface typeface) {
        a.c(i);
        if (this.f3184a == null) {
            this.f3184a = typeface;
        }
        this.f3185b.f3183a.put(i, typeface);
        return this;
    }

    public a a() {
        if (this.f3184a != null) {
            if (this.f3185b.f3183a.get(0) == null) {
                this.f3185b.f3183a.put(0, this.f3184a);
            }
            if (this.f3185b.f3183a.get(1) == null) {
                this.f3185b.f3183a.put(1, this.f3184a);
            }
            if (this.f3185b.f3183a.get(2) == null) {
                this.f3185b.f3183a.put(2, this.f3184a);
            }
            if (this.f3185b.f3183a.get(3) == null) {
                this.f3185b.f3183a.put(3, this.f3184a);
            }
            a aVar = this.f3185b;
            this.f3185b = null;
            return aVar;
        }
        throw new IllegalStateException("At least one typeface style have to be set!");
    }
}
