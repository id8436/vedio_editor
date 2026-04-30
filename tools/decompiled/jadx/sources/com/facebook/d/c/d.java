package com.facebook.d.c;

import java.io.IOException;

/* JADX INFO: compiled from: FileUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends IOException {
    public d(String str) {
        super(str);
    }

    public d(String str, Throwable th) {
        super(str);
        initCause(th);
    }
}
