package com.facebook.d.c;

import java.io.IOException;

/* JADX INFO: compiled from: FileUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends IOException {
    public g(String str, Throwable th) {
        super(str);
        initCause(th);
    }
}
