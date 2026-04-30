package com.facebook.c.b;

import java.io.File;

/* JADX INFO: compiled from: DefaultDiskStorage.java */
/* JADX INFO: loaded from: classes2.dex */
class i implements com.facebook.d.c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1878a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1879b;

    private i(a aVar) {
        this.f1878a = aVar;
    }

    @Override // com.facebook.d.c.b
    public void a(File file) {
        if (!this.f1879b && file.equals(this.f1878a.f1851e)) {
            this.f1879b = true;
        }
    }

    @Override // com.facebook.d.c.b
    public void b(File file) {
        if (!this.f1879b || !d(file)) {
            file.delete();
        }
    }

    @Override // com.facebook.d.c.b
    public void c(File file) {
        if (!this.f1878a.f1849c.equals(file) && !this.f1879b) {
            file.delete();
        }
        if (this.f1879b && file.equals(this.f1878a.f1851e)) {
            this.f1879b = false;
        }
    }

    private boolean d(File file) {
        e eVarB = this.f1878a.b(file);
        if (eVarB == null) {
            return false;
        }
        if (eVarB.f1867a == f.TEMP) {
            return e(file);
        }
        com.facebook.d.d.k.b(eVarB.f1867a == f.CONTENT);
        return true;
    }

    private boolean e(File file) {
        return file.lastModified() > this.f1878a.f1853g.a() - a.f1847a;
    }
}
