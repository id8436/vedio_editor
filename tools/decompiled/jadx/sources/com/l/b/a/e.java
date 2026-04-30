package com.l.b.a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* JADX INFO: compiled from: LineInputStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class e extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private char[] f3610a;

    public e(InputStream inputStream) {
        super(inputStream);
        this.f3610a = null;
    }

    public String a() throws IOException {
        int i;
        InputStream pushbackInputStream;
        char[] cArr;
        int length;
        InputStream inputStream = this.in;
        char[] cArr2 = this.f3610a;
        if (cArr2 == null) {
            cArr2 = new char[128];
            this.f3610a = cArr2;
        }
        char[] cArr3 = cArr2;
        int length2 = cArr2.length;
        int i2 = 0;
        while (true) {
            i = inputStream.read();
            if (i == -1 || i == 10) {
                break;
            }
            if (i == 13) {
                int i3 = inputStream.read();
                int i4 = i3 == 13 ? inputStream.read() : i3;
                if (i4 != 10) {
                    if (inputStream instanceof PushbackInputStream) {
                        pushbackInputStream = inputStream;
                    } else {
                        pushbackInputStream = new PushbackInputStream(inputStream);
                        this.in = pushbackInputStream;
                    }
                    ((PushbackInputStream) pushbackInputStream).unread(i4);
                }
            } else {
                int i5 = length2 - 1;
                if (i5 < 0) {
                    cArr = new char[i2 + 128];
                    length = (cArr.length - i2) - 1;
                    System.arraycopy(this.f3610a, 0, cArr, 0, i2);
                    this.f3610a = cArr;
                } else {
                    cArr = cArr3;
                    length = i5;
                }
                cArr[i2] = (char) i;
                i2++;
                length2 = length;
                cArr3 = cArr;
            }
        }
        if (i == -1 && i2 == 0) {
            return null;
        }
        return String.copyValueOf(cArr3, 0, i2);
    }
}
