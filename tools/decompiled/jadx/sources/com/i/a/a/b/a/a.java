package com.i.a.a.b.a;

import android.graphics.Bitmap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;

/* JADX INFO: compiled from: FuzzyKeyMemoryCache.java */
/* JADX INFO: loaded from: classes3.dex */
public class a implements com.i.a.a.b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.i.a.a.b.a f3235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Comparator<String> f3236b;

    public a(com.i.a.a.b.a aVar, Comparator<String> comparator) {
        this.f3235a = aVar;
        this.f3236b = comparator;
    }

    @Override // com.i.a.a.b.b
    public boolean a(String str, Bitmap bitmap) {
        String next;
        synchronized (this.f3235a) {
            Iterator<String> it = this.f3235a.a().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (this.f3236b.compare(str, next) == 0) {
                    break;
                }
            }
            if (next != null) {
                this.f3235a.b(next);
            }
        }
        return this.f3235a.a(str, bitmap);
    }

    @Override // com.i.a.a.b.b
    public Bitmap a(String str) {
        return this.f3235a.a(str);
    }

    @Override // com.i.a.a.b.b
    public void b(String str) {
        this.f3235a.b(str);
    }

    @Override // com.i.a.a.b.b
    public Collection<String> a() {
        return this.f3235a.a();
    }
}
