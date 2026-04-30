package com.facebook.imagepipeline.nativecode;

import com.facebook.d.d.k;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes2.dex */
public class JpegTranscoder {
    private static native void nativeTranscodeJpeg(InputStream inputStream, OutputStream outputStream, int i, int i2, int i3) throws IOException;

    static {
        a.a();
    }

    public static boolean a(int i) {
        return i >= 0 && i <= 270 && i % 90 == 0;
    }

    public static void a(InputStream inputStream, OutputStream outputStream, int i, int i2, int i3) throws IOException {
        k.a(i2 >= 1);
        k.a(i2 <= 16);
        k.a(i3 >= 0);
        k.a(i3 <= 100);
        k.a(a(i));
        k.a((i2 == 8 && i == 0) ? false : true, "no transformation requested");
        nativeTranscodeJpeg((InputStream) k.a(inputStream), (OutputStream) k.a(outputStream), i, i2, i3);
    }
}
