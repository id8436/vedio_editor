package com.facebook.i;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: Utility.java */
/* JADX INFO: loaded from: classes2.dex */
final class av implements FilenameFilter {
    av() {
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return Pattern.matches("cpu[0-9]+", str);
    }
}
