package com.b.a.d.c;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoModelLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class h<A> implements s<A, j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s<A, InputStream> f928a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s<A, ParcelFileDescriptor> f929b;

    public h(s<A, InputStream> sVar, s<A, ParcelFileDescriptor> sVar2) {
        if (sVar == null && sVar2 == null) {
            throw new NullPointerException("At least one of streamLoader and fileDescriptorLoader must be non null");
        }
        this.f928a = sVar;
        this.f929b = sVar2;
    }

    @Override // com.b.a.d.c.s
    public com.b.a.d.a.c<j> a(A a2, int i, int i2) {
        com.b.a.d.a.c<InputStream> cVarA = this.f928a != null ? this.f928a.a(a2, i, i2) : null;
        com.b.a.d.a.c<ParcelFileDescriptor> cVarA2 = this.f929b != null ? this.f929b.a(a2, i, i2) : null;
        if (cVarA == null && cVarA2 == null) {
            return null;
        }
        return new i(cVarA, cVarA2);
    }
}
