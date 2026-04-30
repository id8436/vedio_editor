package com.i.a.a.a.a.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes3.dex */
final class a implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f3194a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream r = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f3196c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f3197d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f3198e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final File f3199f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f3200g;
    private long h;
    private int i;
    private final int j;
    private Writer m;
    private int o;
    private long k = 0;
    private int l = 0;
    private final LinkedHashMap<String, f> n = new LinkedHashMap<>(0, 0.75f, true);
    private long p = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ThreadPoolExecutor f3195b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> q = new b(this);

    private a(File file, int i, int i2, long j, int i3) {
        this.f3196c = file;
        this.f3200g = i;
        this.f3197d = new File(file, "journal");
        this.f3198e = new File(file, "journal.tmp");
        this.f3199f = new File(file, "journal.bkp");
        this.j = i2;
        this.h = j;
        this.i = i3;
    }

    public static a a(File file, int i, int i2, long j, int i3) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i3 <= 0) {
            throw new IllegalArgumentException("maxFileCount <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        a aVar = new a(file, i, i2, j, i3);
        if (aVar.f3197d.exists()) {
            try {
                aVar.c();
                aVar.d();
                aVar.m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(aVar.f3197d, true), k.f3233a));
                return aVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                aVar.a();
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, i, i2, j, i3);
        aVar2.e();
        return aVar2;
    }

    private void c() throws IOException {
        i iVar = new i(new FileInputStream(this.f3197d), k.f3233a);
        try {
            String strA = iVar.a();
            String strA2 = iVar.a();
            String strA3 = iVar.a();
            String strA4 = iVar.a();
            String strA5 = iVar.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.f3200g).equals(strA3) || !Integer.toString(this.j).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    d(iVar.a());
                    i++;
                } catch (EOFException e2) {
                    this.o = i - this.n.size();
                    k.a(iVar);
                    return;
                }
            }
        } catch (Throwable th) {
            k.a(iVar);
            throw th;
        }
    }

    private void d(String str) throws IOException {
        String strSubstring;
        b bVar = null;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            String strSubstring2 = str.substring(i);
            if (iIndexOf == "REMOVE".length() && str.startsWith("REMOVE")) {
                this.n.remove(strSubstring2);
                return;
            }
            strSubstring = strSubstring2;
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        f fVar = this.n.get(strSubstring);
        if (fVar == null) {
            fVar = new f(this, strSubstring, bVar);
            this.n.put(strSubstring, fVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            fVar.f3211d = true;
            fVar.f3212e = null;
            fVar.a(strArrSplit);
            return;
        }
        if (iIndexOf2 != -1 || iIndexOf != "DIRTY".length() || !str.startsWith("DIRTY")) {
            if (iIndexOf2 != -1 || iIndexOf != "READ".length() || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
            return;
        }
        fVar.f3212e = new d(this, fVar, bVar);
    }

    private void d() throws IOException {
        a(this.f3198e);
        Iterator<f> it = this.n.values().iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (next.f3212e == null) {
                for (int i = 0; i < this.j; i++) {
                    this.k += next.f3210c[i];
                    this.l++;
                }
            } else {
                next.f3212e = null;
                for (int i2 = 0; i2 < this.j; i2++) {
                    a(next.a(i2));
                    a(next.b(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() throws IOException {
        if (this.m != null) {
            this.m.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3198e), k.f3233a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write("1");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.f3200g));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.j));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            for (f fVar : this.n.values()) {
                if (fVar.f3212e != null) {
                    bufferedWriter.write("DIRTY " + fVar.f3209b + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + fVar.f3209b + fVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f3197d.exists()) {
                a(this.f3197d, this.f3199f, true);
            }
            a(this.f3198e, this.f3197d, false);
            this.f3199f.delete();
            this.m = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f3197d, true), k.f3233a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public synchronized g a(String str) throws IOException {
        g gVar = null;
        synchronized (this) {
            g();
            e(str);
            f fVar = this.n.get(str);
            if (fVar != null && fVar.f3211d) {
                File[] fileArr = new File[this.j];
                InputStream[] inputStreamArr = new InputStream[this.j];
                for (int i = 0; i < this.j; i++) {
                    try {
                        File fileA = fVar.a(i);
                        fileArr[i] = fileA;
                        inputStreamArr[i] = new FileInputStream(fileA);
                    } catch (FileNotFoundException e2) {
                        for (int i2 = 0; i2 < this.j && inputStreamArr[i2] != null; i2++) {
                            k.a(inputStreamArr[i2]);
                        }
                    }
                }
                this.o++;
                this.m.append((CharSequence) ("READ " + str + '\n'));
                if (f()) {
                    this.f3195b.submit(this.q);
                }
                gVar = new g(this, str, fVar.f3213f, fileArr, inputStreamArr, fVar.f3210c, null);
            }
        }
        return gVar;
    }

    public d b(String str) throws IOException {
        return a(str, -1L);
    }

    private synchronized d a(String str, long j) throws IOException {
        f fVar;
        d dVar;
        g();
        e(str);
        f fVar2 = this.n.get(str);
        if (j == -1 || (fVar2 != null && fVar2.f3213f == j)) {
            if (fVar2 == null) {
                f fVar3 = new f(this, str, null);
                this.n.put(str, fVar3);
                fVar = fVar3;
            } else if (fVar2.f3212e != null) {
                dVar = null;
            } else {
                fVar = fVar2;
            }
            dVar = new d(this, fVar, null);
            fVar.f3212e = dVar;
            this.m.write("DIRTY " + str + '\n');
            this.m.flush();
        } else {
            dVar = null;
        }
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x008d, B:35:0x0090, B:36:0x0094, B:38:0x00a5, B:40:0x00d6, B:41:0x00e0, B:43:0x00ed, B:45:0x00f3, B:47:0x00f9, B:48:0x0102), top: B:50:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a5 A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x008d, B:35:0x0090, B:36:0x0094, B:38:0x00a5, B:40:0x00d6, B:41:0x00e0, B:43:0x00ed, B:45:0x00f3, B:47:0x00f9, B:48:0x0102), top: B:50:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f9 A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x008d, B:35:0x0090, B:36:0x0094, B:38:0x00a5, B:40:0x00d6, B:41:0x00e0, B:43:0x00ed, B:45:0x00f3, B:47:0x00f9, B:48:0x0102), top: B:50:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0102 A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x008d, B:35:0x0090, B:36:0x0094, B:38:0x00a5, B:40:0x00d6, B:41:0x00e0, B:43:0x00ed, B:45:0x00f3, B:47:0x00f9, B:48:0x0102), top: B:50:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.i.a.a.a.a.a.d r11, boolean r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.i.a.a.a.a.a.a.a(com.i.a.a.a.a.a.d, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        return this.o >= 2000 && this.o >= this.n.size();
    }

    public synchronized boolean c(String str) throws IOException {
        boolean z;
        synchronized (this) {
            g();
            e(str);
            f fVar = this.n.get(str);
            if (fVar == null || fVar.f3212e != null) {
                z = false;
            } else {
                for (int i = 0; i < this.j; i++) {
                    File fileA = fVar.a(i);
                    if (fileA.exists() && !fileA.delete()) {
                        throw new IOException("failed to delete " + fileA);
                    }
                    this.k -= fVar.f3210c[i];
                    this.l--;
                    fVar.f3210c[i] = 0;
                }
                this.o++;
                this.m.append((CharSequence) ("REMOVE " + str + '\n'));
                this.n.remove(str);
                if (f()) {
                    this.f3195b.submit(this.q);
                }
                z = true;
            }
        }
        return z;
    }

    private void g() {
        if (this.m == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.m != null) {
            for (f fVar : new ArrayList(this.n.values())) {
                if (fVar.f3212e != null) {
                    fVar.f3212e.b();
                }
            }
            h();
            i();
            this.m.close();
            this.m = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() throws IOException {
        while (this.k > this.h) {
            c(this.n.entrySet().iterator().next().getKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() throws IOException {
        while (this.l > this.i) {
            c(this.n.entrySet().iterator().next().getKey());
        }
    }

    public void a() throws IOException {
        close();
        k.a(this.f3196c);
    }

    private void e(String str) {
        if (!f3194a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }
}
