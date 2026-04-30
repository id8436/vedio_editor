package com.facebook.d.c;

import com.facebook.d.d.k;
import java.io.File;
import java.io.FileNotFoundException;

/* JADX INFO: compiled from: FileUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static void a(File file) throws d {
        if (file.exists()) {
            if (!file.isDirectory()) {
                if (!file.delete()) {
                    throw new d(file.getAbsolutePath(), new e(file.getAbsolutePath()));
                }
            } else {
                return;
            }
        }
        if (!file.mkdirs() && !file.isDirectory()) {
            throw new d(file.getAbsolutePath());
        }
    }

    public static void a(File file, File file2) throws g {
        k.a(file);
        k.a(file2);
        file2.delete();
        if (file.renameTo(file2)) {
            return;
        }
        Throwable fileNotFoundException = null;
        if (file2.exists()) {
            fileNotFoundException = new e(file2.getAbsolutePath());
        } else if (!file.getParentFile().exists()) {
            fileNotFoundException = new f(file.getAbsolutePath());
        } else if (!file.exists()) {
            fileNotFoundException = new FileNotFoundException(file.getAbsolutePath());
        }
        throw new g("Unknown error renaming " + file.getAbsolutePath() + " to " + file2.getAbsolutePath(), fileNotFoundException);
    }
}
