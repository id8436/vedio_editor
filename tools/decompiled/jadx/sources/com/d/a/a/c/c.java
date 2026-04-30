package com.d.a.a.c;

import com.d.a.a.p;
import com.d.a.a.r;
import java.io.IOException;

/* JADX INFO: compiled from: JsonGeneratorImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c extends com.d.a.a.a.a {
    protected static final int[] n = com.d.a.a.b.a.f();
    protected final com.d.a.a.b.c o;
    protected int[] p;
    protected int q;
    protected com.d.a.a.b.b r;
    protected r s;
    protected boolean t;

    public c(com.d.a.a.b.c cVar, int i, p pVar) {
        super(i, pVar);
        this.p = n;
        this.s = com.d.a.a.e.d.f1469a;
        this.o = cVar;
        if (com.d.a.a.h.ESCAPE_NON_ASCII.a(i)) {
            this.q = 127;
        }
        this.t = !com.d.a.a.h.QUOTE_FIELD_NAMES.a(i);
    }

    @Override // com.d.a.a.g
    public com.d.a.a.g a(int i) {
        if (i < 0) {
            i = 0;
        }
        this.q = i;
        return this;
    }

    @Override // com.d.a.a.g
    public com.d.a.a.g a(com.d.a.a.b.b bVar) {
        this.r = bVar;
        if (bVar == null) {
            this.p = n;
        } else {
            this.p = bVar.a();
        }
        return this;
    }

    @Override // com.d.a.a.g
    public com.d.a.a.g a(r rVar) {
        this.s = rVar;
        return this;
    }

    @Override // com.d.a.a.g
    public final void a(String str, String str2) throws IOException {
        a(str);
        b(str2);
    }
}
