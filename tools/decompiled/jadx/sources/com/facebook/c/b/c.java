package com.facebook.c.b;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: DefaultDiskStorage.java */
/* JADX INFO: loaded from: classes2.dex */
class c implements com.facebook.d.c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<q> f1862b;

    private c(a aVar) {
        this.f1861a = aVar;
        this.f1862b = new ArrayList();
    }

    @Override // com.facebook.d.c.b
    public void a(File file) {
    }

    @Override // com.facebook.d.c.b
    public void b(File file) {
        e eVarB = this.f1861a.b(file);
        if (eVarB != null && eVarB.f1867a == f.CONTENT) {
            this.f1862b.add(new d(eVarB.f1868b, file));
        }
    }

    @Override // com.facebook.d.c.b
    public void c(File file) {
    }

    public List<q> a() {
        return Collections.unmodifiableList(this.f1862b);
    }
}
