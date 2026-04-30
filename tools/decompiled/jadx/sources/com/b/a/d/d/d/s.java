package com.b.a.d.d.d;

import android.graphics.Bitmap;
import android.util.Log;
import com.b.a.d.b.z;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: GifResourceEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class s implements com.b.a.d.f<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final t f1078a = new t();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.b.b f1079b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.d.b.a.e f1080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t f1081d;

    public s(com.b.a.d.b.a.e eVar) {
        this(eVar, f1078a);
    }

    s(com.b.a.d.b.a.e eVar, t tVar) {
        this.f1080c = eVar;
        this.f1079b = new a(eVar);
        this.f1081d = tVar;
    }

    @Override // com.b.a.d.b
    public boolean a(z<b> zVar, OutputStream outputStream) {
        long jA = com.b.a.j.d.a();
        b bVarB = zVar.b();
        com.b.a.d.g<Bitmap> gVarC = bVarB.c();
        if (gVarC instanceof com.b.a.d.d.d) {
            return a(bVarB.d(), outputStream);
        }
        com.b.a.b.a aVarA = a(bVarB.d());
        com.b.a.c.a aVarB = this.f1081d.b();
        if (!aVarB.a(outputStream)) {
            return false;
        }
        for (int i = 0; i < aVarA.c(); i++) {
            z<Bitmap> zVarA = a(aVarA.f(), gVarC, bVarB);
            try {
                if (!aVarB.a(zVarA.b())) {
                    return false;
                }
                aVarB.a(aVarA.a(aVarA.d()));
                aVarA.a();
                zVarA.d();
            } finally {
                zVarA.d();
            }
        }
        boolean zA = aVarB.a();
        if (Log.isLoggable("GifEncoder", 2)) {
            Log.v("GifEncoder", "Encoded gif with " + aVarA.c() + " frames and " + bVarB.d().length + " bytes in " + com.b.a.j.d.a(jA) + " ms");
            return zA;
        }
        return zA;
    }

    private boolean a(byte[] bArr, OutputStream outputStream) {
        try {
            outputStream.write(bArr);
            return true;
        } catch (IOException e2) {
            if (Log.isLoggable("GifEncoder", 3)) {
                Log.d("GifEncoder", "Failed to write data to output stream in GifResourceEncoder", e2);
            }
            return false;
        }
    }

    private com.b.a.b.a a(byte[] bArr) {
        com.b.a.b.e eVarA = this.f1081d.a();
        eVarA.a(bArr);
        com.b.a.b.d dVarB = eVarA.b();
        com.b.a.b.a aVarA = this.f1081d.a(this.f1079b);
        aVarA.a(dVarB, bArr);
        aVarA.a();
        return aVarA;
    }

    private z<Bitmap> a(Bitmap bitmap, com.b.a.d.g<Bitmap> gVar, b bVar) {
        z<Bitmap> zVarA = this.f1081d.a(bitmap, this.f1080c);
        z<Bitmap> zVarA2 = gVar.a(zVarA, bVar.getIntrinsicWidth(), bVar.getIntrinsicHeight());
        if (!zVarA.equals(zVarA2)) {
            zVarA.d();
        }
        return zVarA2;
    }

    @Override // com.b.a.d.b
    public String a() {
        return "";
    }
}
