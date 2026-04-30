package com.facebook.d.c;

import java.io.File;

/* JADX INFO: compiled from: FileTree.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static void a(File file, b bVar) {
        bVar.a(file);
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    a(file2, bVar);
                } else {
                    bVar.b(file2);
                }
            }
        }
        bVar.c(file);
    }

    public static boolean a(File file) {
        File[] fileArrListFiles = file.listFiles();
        boolean z = true;
        if (fileArrListFiles != null) {
            int length = fileArrListFiles.length;
            int i = 0;
            while (i < length) {
                boolean zB = b(fileArrListFiles[i]) & z;
                i++;
                z = zB;
            }
        }
        return z;
    }

    public static boolean b(File file) {
        if (file.isDirectory()) {
            a(file);
        }
        return file.delete();
    }
}
