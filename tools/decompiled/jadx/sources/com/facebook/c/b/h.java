package com.facebook.c.b;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: DefaultDiskStorage.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final File f1875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f1876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f1877c;

    public h(a aVar, String str, File file) {
        this.f1876b = aVar;
        this.f1877c = str;
        this.f1875a = file;
    }

    @Override // com.facebook.c.b.r
    public void a(com.facebook.c.a.l lVar, Object obj) throws IOException {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this.f1875a);
            try {
                com.facebook.d.d.c cVar = new com.facebook.d.d.c(fileOutputStream);
                lVar.a(cVar);
                cVar.flush();
                long jA = cVar.a();
                fileOutputStream.close();
                if (this.f1875a.length() != jA) {
                    throw new g(jA, this.f1875a.length());
                }
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (FileNotFoundException e2) {
            this.f1876b.f1852f.a(com.facebook.c.a.b.WRITE_UPDATE_FILE_NOT_FOUND, a.f1848b, "updateResource", e2);
            throw e2;
        }
    }

    @Override // com.facebook.c.b.r
    public com.facebook.b.a a(Object obj) throws IOException {
        com.facebook.c.a.b bVar;
        File fileA = this.f1876b.a(this.f1877c);
        try {
            com.facebook.d.c.c.a(this.f1875a, fileA);
            if (fileA.exists()) {
                fileA.setLastModified(this.f1876b.f1853g.a());
            }
            return com.facebook.b.b.a(fileA);
        } catch (com.facebook.d.c.g e2) {
            Throwable cause = e2.getCause();
            if (cause == null) {
                bVar = com.facebook.c.a.b.WRITE_RENAME_FILE_OTHER;
            } else if (cause instanceof com.facebook.d.c.f) {
                bVar = com.facebook.c.a.b.WRITE_RENAME_FILE_TEMPFILE_PARENT_NOT_FOUND;
            } else if (cause instanceof FileNotFoundException) {
                bVar = com.facebook.c.a.b.WRITE_RENAME_FILE_TEMPFILE_NOT_FOUND;
            } else {
                bVar = com.facebook.c.a.b.WRITE_RENAME_FILE_OTHER;
            }
            this.f1876b.f1852f.a(bVar, a.f1848b, "commit", e2);
            throw e2;
        }
    }

    @Override // com.facebook.c.b.r
    public boolean a() {
        return !this.f1875a.exists() || this.f1875a.delete();
    }
}
