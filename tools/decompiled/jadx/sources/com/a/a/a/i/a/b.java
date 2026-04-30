package com.a.a.a.i.a;

import android.content.Context;
import android.support.annotation.Nullable;
import e.q;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Set;

/* JADX INFO: compiled from: FileStorage.java */
/* JADX INFO: loaded from: classes.dex */
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f541a;

    b(Context context, String str) {
        this.f541a = new File(context.getDir("com_birbit_jobqueue_jobs", 0), "files_" + str);
        this.f541a.mkdirs();
    }

    void a(String str) {
        File fileD = d(str);
        if (fileD.exists()) {
            fileD.delete();
        }
    }

    @Nullable
    byte[] b(String str) throws IOException {
        File fileD = d(str);
        if (fileD.exists() && fileD.canRead()) {
            e.j jVarA = q.a(q.a(fileD));
            try {
                return jVarA.r();
            } finally {
                a(jVarA);
            }
        }
        return null;
    }

    void a(String str, byte[] bArr) throws IOException {
        e.i iVarA = q.a(q.b(d(str)));
        try {
            iVarA.c(bArr).flush();
        } finally {
            a(iVarA);
        }
    }

    private static String c(String str) {
        return str + ".jobs";
    }

    private File d(String str) {
        return new File(this.f541a, c(str));
    }

    @Nullable
    private static String e(String str) {
        if (str.length() < ".jobs".length() + 1) {
            return null;
        }
        return str.substring(0, str.length() - ".jobs".length());
    }

    void a(Set<String> set) {
        for (String str : this.f541a.list()) {
            if (str.endsWith(".jobs") && !set.contains(e(str))) {
                File file = new File(this.f541a, str);
                if (!file.delete()) {
                    com.a.a.a.f.b.a("cannot delete unused job toFile " + file.getAbsolutePath(), new Object[0]);
                }
            }
        }
    }

    private static void a(Closeable closeable) {
        try {
            closeable.close();
        } catch (IOException e2) {
        }
    }
}
