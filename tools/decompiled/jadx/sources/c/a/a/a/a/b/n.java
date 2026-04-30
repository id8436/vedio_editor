package c.a.a.a.a.b;

import java.io.File;
import java.util.Comparator;

/* JADX INFO: compiled from: CommonUtils.java */
/* JADX INFO: loaded from: classes.dex */
final class n implements Comparator<File> {
    n() {
    }

    @Override // java.util.Comparator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        return (int) (file.lastModified() - file2.lastModified());
    }
}
