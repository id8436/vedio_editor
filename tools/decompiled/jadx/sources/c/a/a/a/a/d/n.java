package c.a.a.a.a.d;

import android.content.Context;
import c.a.a.a.a.b.ad;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: QueueFileEventStorage.java */
/* JADX INFO: loaded from: classes.dex */
public class n implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ad f245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f246f;

    public n(Context context, File file, String str, String str2) throws IOException {
        this.f241a = context;
        this.f242b = file;
        this.f243c = str2;
        this.f244d = new File(this.f242b, str);
        this.f245e = new ad(this.f244d);
        e();
    }

    private void e() {
        this.f246f = new File(this.f242b, this.f243c);
        if (!this.f246f.exists()) {
            this.f246f.mkdirs();
        }
    }

    @Override // c.a.a.a.a.d.h
    public void a(byte[] bArr) throws IOException {
        this.f245e.a(bArr);
    }

    @Override // c.a.a.a.a.d.h
    public int a() {
        return this.f245e.a();
    }

    @Override // c.a.a.a.a.d.h
    public void a(String str) throws Throwable {
        this.f245e.close();
        a(this.f244d, new File(this.f246f, str));
        this.f245e = new ad(this.f244d);
    }

    private void a(File file, File file2) throws Throwable {
        FileInputStream fileInputStream;
        OutputStream outputStreamA = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th) {
            th = th;
            fileInputStream = null;
        }
        try {
            outputStreamA = a(file2);
            c.a.a.a.a.b.m.a(fileInputStream, outputStreamA, new byte[1024]);
            c.a.a.a.a.b.m.a((Closeable) fileInputStream, "Failed to close file input stream");
            c.a.a.a.a.b.m.a((Closeable) outputStreamA, "Failed to close output stream");
            file.delete();
        } catch (Throwable th2) {
            th = th2;
            c.a.a.a.a.b.m.a((Closeable) fileInputStream, "Failed to close file input stream");
            c.a.a.a.a.b.m.a((Closeable) outputStreamA, "Failed to close output stream");
            file.delete();
            throw th;
        }
    }

    public OutputStream a(File file) throws IOException {
        return new FileOutputStream(file);
    }

    @Override // c.a.a.a.a.d.h
    public List<File> a(int i) {
        ArrayList arrayList = new ArrayList();
        for (File file : this.f246f.listFiles()) {
            arrayList.add(file);
            if (arrayList.size() >= i) {
                break;
            }
        }
        return arrayList;
    }

    @Override // c.a.a.a.a.d.h
    public void a(List<File> list) {
        for (File file : list) {
            c.a.a.a.a.b.m.a(this.f241a, String.format("deleting sent analytics file %s", file.getName()));
            file.delete();
        }
    }

    @Override // c.a.a.a.a.d.h
    public List<File> c() {
        return Arrays.asList(this.f246f.listFiles());
    }

    @Override // c.a.a.a.a.d.h
    public void d() {
        try {
            this.f245e.close();
        } catch (IOException e2) {
        }
        this.f244d.delete();
    }

    @Override // c.a.a.a.a.d.h
    public boolean b() {
        return this.f245e.b();
    }

    @Override // c.a.a.a.a.d.h
    public boolean a(int i, int i2) {
        return this.f245e.a(i, i2);
    }
}
