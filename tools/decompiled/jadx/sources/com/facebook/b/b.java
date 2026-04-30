package com.facebook.b;

import com.facebook.d.d.k;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: FileBinaryResource.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final File f1806a;

    private b(File file) {
        this.f1806a = (File) k.a(file);
    }

    public File c() {
        return this.f1806a;
    }

    @Override // com.facebook.b.a
    public InputStream a() throws IOException {
        return new FileInputStream(this.f1806a);
    }

    @Override // com.facebook.b.a
    public long b() {
        return this.f1806a.length();
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        return this.f1806a.equals(((b) obj).f1806a);
    }

    public int hashCode() {
        return this.f1806a.hashCode();
    }

    public static b a(File file) {
        if (file != null) {
            return new b(file);
        }
        return null;
    }
}
