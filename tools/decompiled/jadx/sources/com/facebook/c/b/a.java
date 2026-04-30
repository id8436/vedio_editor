package com.facebook.c.b;

import android.os.Environment;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: DefaultDiskStorage.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements p {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f1849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f1850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f1851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.facebook.c.a.a f1852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.d.l.a f1853g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?> f1848b = a.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final long f1847a = TimeUnit.MINUTES.toMillis(30);

    public a(File file, int i, com.facebook.c.a.a aVar) {
        com.facebook.d.d.k.a(file);
        this.f1849c = file;
        this.f1850d = a(file, aVar);
        this.f1851e = new File(this.f1849c, a(i));
        this.f1852f = aVar;
        g();
        this.f1853g = com.facebook.d.l.c.b();
    }

    private static boolean a(File file, com.facebook.c.a.a aVar) {
        String canonicalPath = null;
        try {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory == null) {
                return false;
            }
            String string = externalStorageDirectory.toString();
            try {
                canonicalPath = file.getCanonicalPath();
                if (!canonicalPath.contains(string)) {
                    return false;
                }
                return true;
            } catch (IOException e2) {
                aVar.a(com.facebook.c.a.b.OTHER, f1848b, "failed to read folder to check if external: " + canonicalPath, e2);
                return false;
            }
        } catch (Exception e3) {
            aVar.a(com.facebook.c.a.b.OTHER, f1848b, "failed to get the external storage directory!", e3);
            return false;
        }
    }

    static String a(int i) {
        return String.format((Locale) null, "%s.ols%d.%d", "v2", 100, Integer.valueOf(i));
    }

    @Override // com.facebook.c.b.p
    public boolean a() {
        return this.f1850d;
    }

    @Override // com.facebook.c.b.p
    public String b() {
        String absolutePath = this.f1849c.getAbsolutePath();
        return c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR + absolutePath.substring(absolutePath.lastIndexOf(47) + 1, absolutePath.length()) + c.a.a.a.a.d.d.ROLL_OVER_FILE_NAME_SEPARATOR + absolutePath.hashCode();
    }

    private void g() {
        boolean z = true;
        if (this.f1849c.exists()) {
            if (this.f1851e.exists()) {
                z = false;
            } else {
                com.facebook.d.c.a.b(this.f1849c);
            }
        }
        if (z) {
            try {
                com.facebook.d.c.c.a(this.f1851e);
            } catch (com.facebook.d.c.d e2) {
                this.f1852f.a(com.facebook.c.a.b.WRITE_CREATE_DIR, f1848b, "version directory could not be created: " + this.f1851e, null);
            }
        }
    }

    File a(String str) {
        return new File(d(str));
    }

    private String b(String str) {
        return this.f1851e + File.separator + String.valueOf(Math.abs(str.hashCode() % 100));
    }

    private File c(String str) {
        return new File(b(str));
    }

    @Override // com.facebook.c.b.p
    public void c() {
        com.facebook.d.c.a.a(this.f1849c, new i(this));
    }

    private void a(File file, String str) throws IOException {
        try {
            com.facebook.d.c.c.a(file);
        } catch (com.facebook.d.c.d e2) {
            this.f1852f.a(com.facebook.c.a.b.WRITE_CREATE_DIR, f1848b, str, e2);
            throw e2;
        }
    }

    @Override // com.facebook.c.b.p
    public r a(String str, Object obj) throws IOException {
        e eVar = new e(f.TEMP, str);
        File fileC = c(eVar.f1868b);
        if (!fileC.exists()) {
            a(fileC, "insert");
        }
        try {
            return new h(this, str, eVar.a(fileC));
        } catch (IOException e2) {
            this.f1852f.a(com.facebook.c.a.b.WRITE_CREATE_TEMPFILE, f1848b, "insert", e2);
            throw e2;
        }
    }

    @Override // com.facebook.c.b.p
    public com.facebook.b.a b(String str, Object obj) {
        File fileA = a(str);
        if (!fileA.exists()) {
            return null;
        }
        fileA.setLastModified(this.f1853g.a());
        return com.facebook.b.b.a(fileA);
    }

    private String d(String str) {
        e eVar = new e(f.CONTENT, str);
        return eVar.a(b(eVar.f1868b));
    }

    @Override // com.facebook.c.b.p
    public long a(q qVar) {
        return a(((d) qVar).c().c());
    }

    private long a(File file) {
        if (!file.exists()) {
            return 0L;
        }
        long length = file.length();
        if (!file.delete()) {
            return -1L;
        }
        return length;
    }

    @Override // com.facebook.c.b.p
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public List<q> e() throws IOException {
        c cVar = new c(this);
        com.facebook.d.c.a.a(this.f1851e, cVar);
        return cVar.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public e b(File file) {
        e eVarB = e.b(file);
        if (eVarB == null) {
            return null;
        }
        if (!c(eVarB.f1868b).equals(file.getParentFile())) {
            eVarB = null;
        }
        return eVarB;
    }
}
