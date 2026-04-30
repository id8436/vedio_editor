package com.facebook.c.b;

import java.io.File;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: DefaultDiskStorage.java */
/* JADX INFO: loaded from: classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f1867a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f1868b;

    private e(f fVar, String str) {
        this.f1867a = fVar;
        this.f1868b = str;
    }

    public String toString() {
        return this.f1867a + "(" + this.f1868b + ")";
    }

    public String a(String str) {
        return str + File.separator + this.f1868b + this.f1867a.f1872c;
    }

    public File a(File file) throws IOException {
        return File.createTempFile(this.f1868b + ".", ".tmp", file);
    }

    @Nullable
    public static e b(File file) {
        f fVarA;
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        if (iLastIndexOf > 0 && (fVarA = f.a(name.substring(iLastIndexOf))) != null) {
            String strSubstring = name.substring(0, iLastIndexOf);
            if (fVarA.equals(f.TEMP)) {
                int iLastIndexOf2 = strSubstring.lastIndexOf(46);
                if (iLastIndexOf2 <= 0) {
                    return null;
                }
                strSubstring = strSubstring.substring(0, iLastIndexOf2);
            }
            return new e(fVarA, strSubstring);
        }
        return null;
    }
}
