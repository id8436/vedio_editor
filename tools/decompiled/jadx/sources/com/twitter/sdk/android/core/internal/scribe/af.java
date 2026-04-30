package com.twitter.sdk.android.core.internal.scribe;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ScribeFilesSender.java */
/* JADX INFO: loaded from: classes3.dex */
class af implements x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ boolean[] f4010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ ByteArrayOutputStream f4011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ ScribeFilesSender f4012c;

    af(ScribeFilesSender scribeFilesSender, boolean[] zArr, ByteArrayOutputStream byteArrayOutputStream) {
        this.f4012c = scribeFilesSender;
        this.f4010a = zArr;
        this.f4011b = byteArrayOutputStream;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.x
    public void a(InputStream inputStream, int i) throws IOException {
        byte[] bArr = new byte[i];
        inputStream.read(bArr);
        if (this.f4010a[0]) {
            this.f4011b.write(ScribeFilesSender.f3987b);
        } else {
            this.f4010a[0] = true;
        }
        this.f4011b.write(bArr);
    }
}
