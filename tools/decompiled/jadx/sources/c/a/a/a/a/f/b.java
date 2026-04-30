package c.a.a.a.a.f;

import android.content.Context;
import c.a.a.a.f;
import c.a.a.a.q;
import java.io.File;

/* JADX INFO: compiled from: FileStoreImpl.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f282c;

    public b(q qVar) {
        if (qVar.getContext() == null) {
            throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
        }
        this.f280a = qVar.getContext();
        this.f281b = qVar.getPath();
        this.f282c = "Android/" + this.f280a.getPackageName();
    }

    @Override // c.a.a.a.a.f.a
    public File a() {
        return a(this.f280a.getFilesDir());
    }

    File a(File file) {
        if (file != null) {
            if (!file.exists() && !file.mkdirs()) {
                f.h().d("Fabric", "Couldn't create file");
            } else {
                return file;
            }
        } else {
            f.h().a("Fabric", "Null File");
        }
        return null;
    }
}
