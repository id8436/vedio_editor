package com.facebook.d.d;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: ByteStreams.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        k.a(inputStream);
        k.a(outputStream);
        byte[] bArr = new byte[4096];
        long j = 0;
        while (true) {
            int i = inputStream.read(bArr);
            if (i != -1) {
                outputStream.write(bArr, 0, i);
                j += (long) i;
            } else {
                return j;
            }
        }
    }

    public static int a(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        k.a(inputStream);
        k.a(bArr);
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("len is negative");
        }
        int i3 = 0;
        while (i3 < i2) {
            int i4 = inputStream.read(bArr, i + i3, i2 - i3);
            if (i4 == -1) {
                break;
            }
            i3 += i4;
        }
        return i3;
    }
}
