package com.facebook.d.h;

import java.io.Closeable;
import java.io.IOException;

/* JADX INFO: compiled from: CloseableReference.java */
/* JADX INFO: loaded from: classes2.dex */
final class b implements i<Closeable> {
    b() {
    }

    @Override // com.facebook.d.h.i
    public void a(Closeable closeable) {
        try {
            com.facebook.d.d.b.a(closeable, true);
        } catch (IOException e2) {
        }
    }
}
