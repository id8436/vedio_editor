package d.a.f;

import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: FileSystem.java */
/* JADX INFO: loaded from: classes3.dex */
final class b implements a {
    b() {
    }

    @Override // d.a.f.a
    public void a(File file) throws IOException {
        if (!file.delete() && file.exists()) {
            throw new IOException("failed to delete " + file);
        }
    }

    @Override // d.a.f.a
    public boolean b(File file) {
        return file.exists();
    }

    @Override // d.a.f.a
    public long c(File file) {
        return file.length();
    }

    @Override // d.a.f.a
    public void a(File file, File file2) throws IOException {
        a(file2);
        if (!file.renameTo(file2)) {
            throw new IOException("failed to rename " + file + " to " + file2);
        }
    }
}
