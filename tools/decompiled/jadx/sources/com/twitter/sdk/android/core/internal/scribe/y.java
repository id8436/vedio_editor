package com.twitter.sdk.android.core.internal.scribe;

import android.content.Context;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: QueueFileEventStorage.java */
/* JADX INFO: loaded from: classes3.dex */
public class y implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f4078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4079c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f4080d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t f4081e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f4082f;

    public y(Context context, File file, String str, String str2) throws IOException {
        this.f4077a = context;
        this.f4078b = file;
        this.f4079c = str2;
        this.f4080d = new File(this.f4078b, str);
        this.f4081e = new t(this.f4080d);
        d();
    }

    private void d() {
        this.f4082f = new File(this.f4078b, this.f4079c);
        if (!this.f4082f.exists()) {
            this.f4082f.mkdirs();
        }
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.o
    public void a(byte[] bArr) throws IOException {
        this.f4081e.a(bArr);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.o
    public int a() {
        return this.f4081e.a();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.o
    public void a(String str) throws Throwable {
        this.f4081e.close();
        a(this.f4080d, new File(this.f4082f, str));
        this.f4081e = new t(this.f4080d);
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
            com.twitter.sdk.android.core.internal.n.a(fileInputStream, outputStreamA, new byte[1024]);
            com.twitter.sdk.android.core.internal.n.a(fileInputStream, "Failed to close file input stream");
            com.twitter.sdk.android.core.internal.n.a(outputStreamA, "Failed to close output stream");
            file.delete();
        } catch (Throwable th2) {
            th = th2;
            com.twitter.sdk.android.core.internal.n.a(fileInputStream, "Failed to close file input stream");
            com.twitter.sdk.android.core.internal.n.a(outputStreamA, "Failed to close output stream");
            file.delete();
            throw th;
        }
    }

    public OutputStream a(File file) throws IOException {
        return new FileOutputStream(file);
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.o
    public List<File> a(int i) {
        ArrayList arrayList = new ArrayList();
        for (File file : this.f4082f.listFiles()) {
            arrayList.add(file);
            if (arrayList.size() >= i) {
                break;
            }
        }
        return arrayList;
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.o
    public void a(List<File> list) {
        for (File file : list) {
            com.twitter.sdk.android.core.internal.n.a(this.f4077a, String.format("deleting sent analytics file %s", file.getName()));
            file.delete();
        }
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.o
    public List<File> c() {
        return Arrays.asList(this.f4082f.listFiles());
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.o
    public boolean b() {
        return this.f4081e.b();
    }

    @Override // com.twitter.sdk.android.core.internal.scribe.o
    public boolean a(int i, int i2) {
        return this.f4081e.a(i, i2);
    }
}
