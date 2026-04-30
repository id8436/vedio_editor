package com.i.a.a.a.a.a;

import android.graphics.Bitmap;
import android.support.v7.widget.ActivityChooserView;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: LruDiscCache.java */
/* JADX INFO: loaded from: classes3.dex */
public class h implements com.i.a.a.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Bitmap.CompressFormat f3220a = Bitmap.CompressFormat.PNG;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected a f3221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final com.i.a.a.a.b.a f3222c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f3223d = 32768;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Bitmap.CompressFormat f3224e = f3220a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f3225f = 100;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private File f3226g;

    public h(File file, com.i.a.a.a.b.a aVar, long j, int i) {
        if (file == null) {
            throw new IllegalArgumentException("cacheDir argument must be not null");
        }
        if (j < 0) {
            throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
        }
        if (i < 0) {
            throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        }
        long j2 = j == 0 ? Long.MAX_VALUE : j;
        int i2 = i == 0 ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : i;
        this.f3222c = aVar;
        a(file, this.f3226g, j2, i2);
    }

    private void a(File file, File file2, long j, int i) {
        try {
            this.f3221b = a.a(file, 1, 1, j, i);
        } catch (IOException e2) {
            com.i.a.c.e.a(e2);
            if (file2 != null) {
                a(file2, null, j, i);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0029  */
    @Override // com.i.a.a.a.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File a(java.lang.String r4) throws java.lang.Throwable {
        /*
            r3 = this;
            r0 = 0
            com.i.a.a.a.a.a.a r1 = r3.f3221b     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L24
            java.lang.String r2 = r3.b(r4)     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L24
            com.i.a.a.a.a.a.g r2 = r1.a(r2)     // Catch: java.io.IOException -> L19 java.lang.Throwable -> L24
            if (r2 != 0) goto L13
        Ld:
            if (r2 == 0) goto L12
            r2.close()
        L12:
            return r0
        L13:
            r1 = 0
            java.io.File r0 = r2.a(r1)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L2f
            goto Ld
        L19:
            r1 = move-exception
            r2 = r0
        L1b:
            com.i.a.c.e.a(r1)     // Catch: java.lang.Throwable -> L2d
            if (r2 == 0) goto L12
            r2.close()
            goto L12
        L24:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L27:
            if (r2 == 0) goto L2c
            r2.close()
        L2c:
            throw r0
        L2d:
            r0 = move-exception
            goto L27
        L2f:
            r1 = move-exception
            goto L1b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.i.a.a.a.a.a.h.a(java.lang.String):java.io.File");
    }

    @Override // com.i.a.a.a.a
    public boolean a(String str, InputStream inputStream, com.i.a.c.d dVar) throws IOException {
        boolean zA = false;
        d dVarB = this.f3221b.b(b(str));
        if (dVarB != null) {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(dVarB.a(0), this.f3223d);
            try {
                zA = com.i.a.c.c.a(inputStream, bufferedOutputStream, dVar, this.f3223d);
                com.i.a.c.c.a(bufferedOutputStream);
                if (zA) {
                    dVarB.a();
                } else {
                    dVarB.b();
                }
            } catch (Throwable th) {
                com.i.a.c.c.a(bufferedOutputStream);
                dVarB.b();
                throw th;
            }
        }
        return zA;
    }

    @Override // com.i.a.a.a.a
    public boolean a(String str, Bitmap bitmap) throws IOException {
        boolean zCompress = false;
        d dVarB = this.f3221b.b(b(str));
        if (dVarB != null) {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(dVarB.a(0), this.f3223d);
            try {
                zCompress = bitmap.compress(this.f3224e, this.f3225f, bufferedOutputStream);
                if (zCompress) {
                    dVarB.a();
                } else {
                    dVarB.b();
                }
            } finally {
                com.i.a.c.c.a(bufferedOutputStream);
            }
        }
        return zCompress;
    }

    private String b(String str) {
        return this.f3222c.a(str);
    }

    public void a(File file) {
        this.f3226g = file;
    }
}
