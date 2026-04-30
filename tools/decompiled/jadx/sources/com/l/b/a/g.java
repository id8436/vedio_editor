package com.l.b.a;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: QDecoderStream.java */
/* JADX INFO: loaded from: classes3.dex */
public class g extends i {
    public g(InputStream inputStream) {
        super(inputStream);
    }

    @Override // com.l.b.a.i, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i = this.in.read();
        if (i == 95) {
            return 32;
        }
        if (i == 61) {
            this.f3615a[0] = (byte) this.in.read();
            this.f3615a[1] = (byte) this.in.read();
            try {
                return a.a(this.f3615a, 0, 2, 16);
            } catch (NumberFormatException e2) {
                throw new IOException(new StringBuffer().append("Error in QP stream ").append(e2.getMessage()).toString());
            }
        }
        return i;
    }
}
