package com.facebook;

import java.io.File;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: FacebookSdk.java */
/* JADX INFO: loaded from: classes2.dex */
final class y implements Callable<File> {
    y() {
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public File call() throws Exception {
        return w.m.getCacheDir();
    }
}
