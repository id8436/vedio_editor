package com.b.a.d.b.b;

import android.util.Log;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: DiskLruCacheWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class k implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static k f827a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f828b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f829c = new t();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f830d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.b.a.a.a f832f;

    public static synchronized a a(File file, int i) {
        if (f827a == null) {
            f827a = new k(file, i);
        }
        return f827a;
    }

    protected k(File file, int i) {
        this.f830d = file;
        this.f831e = i;
    }

    private synchronized com.b.a.a.a a() throws IOException {
        if (this.f832f == null) {
            this.f832f = com.b.a.a.a.a(this.f830d, 1, 1, this.f831e);
        }
        return this.f832f;
    }

    @Override // com.b.a.d.b.b.a
    public File a(com.b.a.d.c cVar) {
        try {
            com.b.a.a.e eVarA = a().a(this.f829c.a(cVar));
            if (eVarA == null) {
                return null;
            }
            return eVarA.a(0);
        } catch (IOException e2) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e2);
            return null;
        }
    }

    @Override // com.b.a.d.b.b.a
    public void a(com.b.a.d.c cVar, c cVar2) {
        String strA = this.f829c.a(cVar);
        this.f828b.a(cVar);
        try {
            com.b.a.a.c cVarB = a().b(strA);
            if (cVarB != null) {
                try {
                    if (cVar2.a(cVarB.a(0))) {
                        cVarB.a();
                    }
                } finally {
                    cVarB.c();
                }
            }
        } catch (IOException e2) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e2);
            }
        } finally {
            this.f828b.b(cVar);
        }
    }

    @Override // com.b.a.d.b.b.a
    public void b(com.b.a.d.c cVar) {
        try {
            a().c(this.f829c.a(cVar));
        } catch (IOException e2) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to delete from disk cache", e2);
            }
        }
    }
}
