package com.facebook.d.h;

/* JADX INFO: compiled from: CloseableReference.java */
/* JADX INFO: loaded from: classes2.dex */
class c<T> extends a<T> {
    /* synthetic */ c(j jVar, b bVar) {
        this(jVar);
    }

    /* synthetic */ c(Object obj, i iVar, b bVar) {
        this(obj, (i<Object>) iVar);
    }

    @Override // com.facebook.d.h.a
    public /* synthetic */ Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    private c(j<T> jVar) {
        super((j) jVar, (b) null);
    }

    private c(T t, i<T> iVar) {
        super(t, iVar, null);
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.f1954b) {
                    g gVar = a.f1951f;
                    if (gVar != null) {
                        gVar.a(this, this.f1953a);
                    } else {
                        com.facebook.d.e.a.b((Class<?>) a.f1949d, "Finalized without closing: %x %x (type = %s)", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(this.f1955c)), this.f1955c.a().getClass().getSimpleName());
                    }
                    close();
                }
            }
        } finally {
            super.finalize();
        }
    }
}
