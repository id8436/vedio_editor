package com.facebook.e;

/* JADX INFO: compiled from: SimpleDataSource.java */
/* JADX INFO: loaded from: classes2.dex */
public class q<T> extends a<T> {
    private q() {
    }

    public static <T> q<T> j() {
        return new q<>();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.e.a
    public boolean a(T t, boolean z) {
        return super.a(com.facebook.d.d.k.a(t), z);
    }

    @Override // com.facebook.e.a
    public boolean a(Throwable th) {
        return super.a((Throwable) com.facebook.d.d.k.a(th));
    }

    @Override // com.facebook.e.a
    public boolean a(float f2) {
        return super.a(f2);
    }
}
