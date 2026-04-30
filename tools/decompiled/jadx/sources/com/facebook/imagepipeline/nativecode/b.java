package com.facebook.imagepipeline.nativecode;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: WebpTranscoder.java */
/* JADX INFO: loaded from: classes2.dex */
public interface b {
    void a(InputStream inputStream, OutputStream outputStream) throws IOException;

    void a(InputStream inputStream, OutputStream outputStream, int i) throws IOException;

    boolean a(com.facebook.g.c cVar);
}
