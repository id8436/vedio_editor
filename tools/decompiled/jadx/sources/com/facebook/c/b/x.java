package com.facebook.c.b;

import java.io.File;
import java.io.IOException;
import java.util.Collection;

/* JADX INFO: compiled from: DynamicDefaultDiskStorage.java */
/* JADX INFO: loaded from: classes2.dex */
public class x implements p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?> f1912b = x.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    volatile y f1913a = new y(null, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f1914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.d.d.m<File> f1915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.facebook.c.a.a f1917f;

    public x(int i, com.facebook.d.d.m<File> mVar, String str, com.facebook.c.a.a aVar) {
        this.f1914c = i;
        this.f1917f = aVar;
        this.f1915d = mVar;
        this.f1916e = str;
    }

    @Override // com.facebook.c.b.p
    public boolean a() {
        try {
            return d().a();
        } catch (IOException e2) {
            return false;
        }
    }

    @Override // com.facebook.c.b.p
    public String b() {
        try {
            return d().b();
        } catch (IOException e2) {
            return "";
        }
    }

    @Override // com.facebook.c.b.p
    public com.facebook.b.a b(String str, Object obj) throws IOException {
        return d().b(str, obj);
    }

    @Override // com.facebook.c.b.p
    public void c() {
        try {
            d().c();
        } catch (IOException e2) {
            com.facebook.d.e.a.b(f1912b, "purgeUnexpectedResources", (Throwable) e2);
        }
    }

    @Override // com.facebook.c.b.p
    public r a(String str, Object obj) throws IOException {
        return d().a(str, obj);
    }

    @Override // com.facebook.c.b.p
    public Collection<q> e() throws IOException {
        return d().e();
    }

    @Override // com.facebook.c.b.p
    public long a(q qVar) throws IOException {
        return d().a(qVar);
    }

    synchronized p d() throws IOException {
        if (g()) {
            f();
            h();
        }
        return (p) com.facebook.d.d.k.a(this.f1913a.f1918a);
    }

    private boolean g() {
        y yVar = this.f1913a;
        return yVar.f1918a == null || yVar.f1919b == null || !yVar.f1919b.exists();
    }

    void f() {
        if (this.f1913a.f1918a != null && this.f1913a.f1919b != null) {
            com.facebook.d.c.a.b(this.f1913a.f1919b);
        }
    }

    private void h() throws IOException {
        File file = new File(this.f1915d.b(), this.f1916e);
        a(file);
        this.f1913a = new y(file, new a(file, this.f1914c, this.f1917f));
    }

    void a(File file) throws IOException {
        try {
            com.facebook.d.c.c.a(file);
            com.facebook.d.e.a.b(f1912b, "Created cache directory %s", file.getAbsolutePath());
        } catch (com.facebook.d.c.d e2) {
            this.f1917f.a(com.facebook.c.a.b.WRITE_CREATE_DIR, f1912b, "createRootDirectoryIfNecessary", e2);
            throw e2;
        }
    }
}
