package com.b.a.d.b.b;

import android.annotation.SuppressLint;
import com.b.a.d.b.z;

/* JADX INFO: compiled from: LruResourceCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class n extends com.b.a.j.e<com.b.a.d.c, z<?>> implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private p f835a;

    @Override // com.b.a.d.b.b.o
    public /* synthetic */ z a(com.b.a.d.c cVar) {
        return (z) super.c(cVar);
    }

    @Override // com.b.a.d.b.b.o
    public /* bridge */ /* synthetic */ z b(com.b.a.d.c cVar, z zVar) {
        return (z) super.b(cVar, zVar);
    }

    public n(int i) {
        super(i);
    }

    @Override // com.b.a.d.b.b.o
    public void a(p pVar) {
        this.f835a = pVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.j.e
    public void a(com.b.a.d.c cVar, z<?> zVar) {
        if (this.f835a != null) {
            this.f835a.b(zVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.b.a.j.e
    public int a(z<?> zVar) {
        return zVar.c();
    }

    @Override // com.b.a.d.b.b.o
    @SuppressLint({"InlinedApi"})
    public void a(int i) {
        if (i >= 60) {
            a();
        } else if (i >= 40) {
            b(b() / 2);
        }
    }
}
