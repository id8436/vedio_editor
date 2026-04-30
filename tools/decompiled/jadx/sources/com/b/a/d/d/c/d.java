package com.b.a.d.d.c;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* JADX INFO: compiled from: FileToStreamDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
class d {
    d() {
    }

    public InputStream a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }
}
