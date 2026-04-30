package com.b.a.d.c.b;

import com.b.a.d.c.p;
import java.io.InputStream;

/* JADX INFO: compiled from: HttpUrlGlideUrlLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements g<com.b.a.d.c.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p<com.b.a.d.c.e, com.b.a.d.c.e> f914a;

    public a() {
        this(null);
    }

    public a(p<com.b.a.d.c.e, com.b.a.d.c.e> pVar) {
        this.f914a = pVar;
    }

    @Override // com.b.a.d.c.s
    public com.b.a.d.a.c<InputStream> a(com.b.a.d.c.e eVar, int i, int i2) {
        if (this.f914a != null) {
            com.b.a.d.c.e eVarA = this.f914a.a(eVar, 0, 0);
            if (eVarA == null) {
                this.f914a.a(eVar, 0, 0, eVar);
            } else {
                eVar = eVarA;
            }
        }
        return new com.b.a.d.a.f(eVar);
    }
}
