package com.crashlytics.android.core;

import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes2.dex */
final class Utils {
    private Utils() {
    }

    public static void capFileCount(File file, FilenameFilter filenameFilter, int i, Comparator<File> comparator) {
        File[] fileArrListFiles = file.listFiles(filenameFilter);
        if (fileArrListFiles != null && fileArrListFiles.length > i) {
            Arrays.sort(fileArrListFiles, comparator);
            int length = fileArrListFiles.length;
            for (File file2 : fileArrListFiles) {
                if (length > i) {
                    file2.delete();
                    length--;
                } else {
                    return;
                }
            }
        }
    }
}
