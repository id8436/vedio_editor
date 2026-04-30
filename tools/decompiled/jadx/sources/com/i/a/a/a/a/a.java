package com.i.a.a.a.a;

import android.graphics.Bitmap;
import com.i.a.c.c;
import com.i.a.c.d;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: BaseDiscCache.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class a implements com.i.a.a.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Bitmap.CompressFormat f3187a = Bitmap.CompressFormat.PNG;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final File f3188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final File f3189c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final com.i.a.a.a.b.a f3190d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f3191e = 32768;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected Bitmap.CompressFormat f3192f = f3187a;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected int f3193g = 100;

    public a(File file, File file2, com.i.a.a.a.b.a aVar) {
        if (file == null) {
            throw new IllegalArgumentException("cacheDir argument must be not null");
        }
        if (aVar == null) {
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        }
        this.f3188b = file;
        this.f3189c = file2;
        this.f3190d = aVar;
    }

    @Override // com.i.a.a.a.a
    public File a(String str) {
        return b(str);
    }

    @Override // com.i.a.a.a.a
    public boolean a(String str, InputStream inputStream, d dVar) throws Throwable {
        boolean zA;
        File fileB = b(str);
        File file = new File(fileB.getAbsolutePath() + ".tmp");
        try {
            try {
                zA = c.a(inputStream, new BufferedOutputStream(new FileOutputStream(file), this.f3191e), dVar, this.f3191e);
                try {
                    c.a((Closeable) inputStream);
                    if (zA && !file.renameTo(fileB)) {
                        zA = false;
                    }
                    if (!zA) {
                        file.delete();
                    }
                    return zA;
                } catch (Throwable th) {
                    th = th;
                    c.a((Closeable) inputStream);
                    if (zA && !file.renameTo(fileB)) {
                        zA = false;
                    }
                    if (!zA) {
                        file.delete();
                    }
                    throw th;
                }
            } finally {
            }
        } catch (Throwable th2) {
            th = th2;
            zA = false;
        }
    }

    @Override // com.i.a.a.a.a
    public boolean a(String str, Bitmap bitmap) throws IOException {
        File fileB = b(str);
        File file = new File(fileB.getAbsolutePath() + ".tmp");
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file), this.f3191e);
        try {
            boolean zCompress = bitmap.compress(this.f3192f, this.f3193g, bufferedOutputStream);
            c.a(bufferedOutputStream);
            if (zCompress && !file.renameTo(fileB)) {
                zCompress = false;
            }
            if (!zCompress) {
                file.delete();
            }
            bitmap.recycle();
            return zCompress;
        } catch (Throwable th) {
            c.a(bufferedOutputStream);
            file.delete();
            throw th;
        }
    }

    protected File b(String str) {
        String strA = this.f3190d.a(str);
        File file = this.f3188b;
        if (!this.f3188b.exists() && !this.f3188b.mkdirs() && this.f3189c != null && (this.f3189c.exists() || this.f3189c.mkdirs())) {
            file = this.f3189c;
        }
        return new File(file, strA);
    }
}
