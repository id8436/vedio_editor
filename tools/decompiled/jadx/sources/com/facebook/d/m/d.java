package com.facebook.d.m;

import com.facebook.d.d.k;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamUtil.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static long a(InputStream inputStream, long j) throws IOException {
        k.a(inputStream);
        k.a(j >= 0);
        long j2 = j;
        while (j2 > 0) {
            long jSkip = inputStream.skip(j2);
            if (jSkip > 0) {
                j2 -= jSkip;
            } else if (inputStream.read() != -1) {
                j2--;
            } else {
                return j - j2;
            }
        }
        return j;
    }
}
