package com.b.a.d.b;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: DecodeJob.java */
/* JADX INFO: loaded from: classes2.dex */
class c {
    c() {
    }

    public OutputStream a(File file) throws FileNotFoundException {
        return new BufferedOutputStream(new FileOutputStream(file));
    }
}
