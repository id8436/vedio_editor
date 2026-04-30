package com.b.a.d.d.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: GifResourceDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class p implements com.b.a.d.e<InputStream, b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final r f1069a = new r();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final q f1070b = new q();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f1071c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final r f1072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.b.a.d.b.a.e f1073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final q f1074f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f1075g;

    public p(Context context, com.b.a.d.b.a.e eVar) {
        this(context, eVar, f1069a, f1070b);
    }

    p(Context context, com.b.a.d.b.a.e eVar, r rVar, q qVar) {
        this.f1071c = context.getApplicationContext();
        this.f1073e = eVar;
        this.f1074f = qVar;
        this.f1075g = new a(eVar);
        this.f1072d = rVar;
    }

    @Override // com.b.a.d.e
    public e a(InputStream inputStream, int i, int i2) {
        byte[] bArrA = a(inputStream);
        com.b.a.b.e eVarA = this.f1072d.a(bArrA);
        com.b.a.b.a aVarA = this.f1074f.a(this.f1075g);
        try {
            return a(bArrA, i, i2, eVarA, aVarA);
        } finally {
            this.f1072d.a(eVarA);
            this.f1074f.a(aVarA);
        }
    }

    private e a(byte[] bArr, int i, int i2, com.b.a.b.e eVar, com.b.a.b.a aVar) {
        Bitmap bitmapA;
        com.b.a.b.d dVarB = eVar.b();
        if (dVarB.a() <= 0 || dVarB.b() != 0 || (bitmapA = a(aVar, dVarB, bArr)) == null) {
            return null;
        }
        return new e(new b(this.f1071c, this.f1075g, this.f1073e, com.b.a.d.d.d.b(), i, i2, dVarB, bArr, bitmapA));
    }

    private Bitmap a(com.b.a.b.a aVar, com.b.a.b.d dVar, byte[] bArr) {
        aVar.a(dVar, bArr);
        aVar.a();
        return aVar.f();
    }

    @Override // com.b.a.d.e
    public String a() {
        return "";
    }

    private static byte[] a(InputStream inputStream) {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            bArr = new byte[16384];
        } catch (IOException e2) {
            Log.w("GifResourceDecoder", "Error reading data from stream", e2);
        }
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, i);
            return byteArrayOutputStream.toByteArray();
        }
        byteArrayOutputStream.flush();
        return byteArrayOutputStream.toByteArray();
    }
}
