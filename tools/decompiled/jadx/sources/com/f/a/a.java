package com.f.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
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
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f1635a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f1637c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f1638d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f1639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final File f1640f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f1641g;
    private long h;
    private final int i;
    private Writer k;
    private int m;
    private long j = 0;
    private final LinkedHashMap<String, f> l = new LinkedHashMap<>(0, 0.75f, true);
    private long n = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ThreadPoolExecutor f1636b = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> o = new b(this);

    private a(File file, int i, int i2, long j) {
        this.f1637c = file;
        this.f1641g = i;
        this.f1638d = new File(file, "journal");
        this.f1639e = new File(file, "journal.tmp");
        this.f1640f = new File(file, "journal.bkp");
        this.i = i2;
        this.h = j;
    }

    public static a a(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
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
        a aVar = new a(file, i, i2, j);
        if (aVar.f1638d.exists()) {
            try {
                aVar.f();
                aVar.g();
                aVar.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(aVar.f1638d, true), j.f1666a));
                return aVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                aVar.d();
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, i, i2, j);
        aVar2.h();
        return aVar2;
    }

    private void f() throws IOException {
        h hVar = new h(new FileInputStream(this.f1638d), j.f1666a);
        try {
            String strA = hVar.a();
            String strA2 = hVar.a();
            String strA3 = hVar.a();
            String strA4 = hVar.a();
            String strA5 = hVar.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.f1641g).equals(strA3) || !Integer.toString(this.i).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    d(hVar.a());
                    i++;
                } catch (EOFException e2) {
                    this.m = i - this.l.size();
                    j.a(hVar);
                    return;
                }
            }
        } catch (Throwable th) {
            j.a(hVar);
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
                this.l.remove(strSubstring2);
                return;
            }
            strSubstring = strSubstring2;
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        f fVar = this.l.get(strSubstring);
        if (fVar == null) {
            fVar = new f(this, strSubstring, bVar);
            this.l.put(strSubstring, fVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            fVar.f1652d = true;
            fVar.f1653e = null;
            fVar.a(strArrSplit);
            return;
        }
        if (iIndexOf2 != -1 || iIndexOf != "DIRTY".length() || !str.startsWith("DIRTY")) {
            if (iIndexOf2 != -1 || iIndexOf != "READ".length() || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
            return;
        }
        fVar.f1653e = new d(this, fVar, bVar);
    }

    private void g() throws IOException {
        a(this.f1639e);
        Iterator<f> it = this.l.values().iterator();
        while (it.hasNext()) {
            f next = it.next();
            if (next.f1653e == null) {
                for (int i = 0; i < this.i; i++) {
                    this.j += next.f1651c[i];
                }
            } else {
                next.f1653e = null;
                for (int i2 = 0; i2 < this.i; i2++) {
                    a(next.a(i2));
                    a(next.b(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void h() throws IOException {
        if (this.k != null) {
            this.k.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1639e), j.f1666a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write("1");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.f1641g));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.i));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            for (f fVar : this.l.values()) {
                if (fVar.f1653e != null) {
                    bufferedWriter.write("DIRTY " + fVar.f1650b + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + fVar.f1650b + fVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f1638d.exists()) {
                a(this.f1638d, this.f1640f, true);
            }
            a(this.f1639e, this.f1638d, false);
            this.f1640f.delete();
            this.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1638d, true), j.f1666a));
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
            j();
            e(str);
            f fVar = this.l.get(str);
            if (fVar != null && fVar.f1652d) {
                InputStream[] inputStreamArr = new InputStream[this.i];
                for (int i = 0; i < this.i; i++) {
                    try {
                        inputStreamArr[i] = new FileInputStream(fVar.a(i));
                    } catch (FileNotFoundException e2) {
                        for (int i2 = 0; i2 < this.i && inputStreamArr[i2] != null; i2++) {
                            j.a(inputStreamArr[i2]);
                        }
                    }
                }
                this.m++;
                this.k.append((CharSequence) ("READ " + str + '\n'));
                if (i()) {
                    this.f1636b.submit(this.o);
                }
                gVar = new g(this, str, fVar.f1654f, inputStreamArr, fVar.f1651c, null);
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
        j();
        e(str);
        f fVar2 = this.l.get(str);
        if (j == -1 || (fVar2 != null && fVar2.f1654f == j)) {
            if (fVar2 == null) {
                f fVar3 = new f(this, str, null);
                this.l.put(str, fVar3);
                fVar = fVar3;
            } else if (fVar2.f1653e != null) {
                dVar = null;
            } else {
                fVar = fVar2;
            }
            dVar = new d(this, fVar, null);
            fVar.f1653e = dVar;
            this.k.write("DIRTY " + str + '\n');
            this.k.flush();
        } else {
            dVar = null;
        }
        return dVar;
    }

    public File a() {
        return this.f1637c;
    }

    public synchronized long b() {
        return this.h;
    }

    public synchronized long c() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x0087, B:35:0x008a, B:36:0x008e, B:38:0x009f, B:40:0x00d0, B:41:0x00da, B:43:0x00e7, B:45:0x00ed, B:46:0x00f6), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x0087, B:35:0x008a, B:36:0x008e, B:38:0x009f, B:40:0x00d0, B:41:0x00da, B:43:0x00e7, B:45:0x00ed, B:46:0x00f6), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ed A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x0087, B:35:0x008a, B:36:0x008e, B:38:0x009f, B:40:0x00d0, B:41:0x00da, B:43:0x00e7, B:45:0x00ed, B:46:0x00f6), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f6 A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x0087, B:35:0x008a, B:36:0x008e, B:38:0x009f, B:40:0x00d0, B:41:0x00da, B:43:0x00e7, B:45:0x00ed, B:46:0x00f6), top: B:48:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.f.a.d r11, boolean r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.f.a.a.a(com.f.a.d, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        return this.m >= 2000 && this.m >= this.l.size();
    }

    public synchronized boolean c(String str) throws IOException {
        boolean z;
        synchronized (this) {
            j();
            e(str);
            f fVar = this.l.get(str);
            if (fVar == null || fVar.f1653e != null) {
                z = false;
            } else {
                for (int i = 0; i < this.i; i++) {
                    File fileA = fVar.a(i);
                    if (fileA.exists() && !fileA.delete()) {
                        throw new IOException("failed to delete " + fileA);
                    }
                    this.j -= fVar.f1651c[i];
                    fVar.f1651c[i] = 0;
                }
                this.m++;
                this.k.append((CharSequence) ("REMOVE " + str + '\n'));
                this.l.remove(str);
                if (i()) {
                    this.f1636b.submit(this.o);
                }
                z = true;
            }
        }
        return z;
    }

    private void j() {
        if (this.k == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.k != null) {
            for (f fVar : new ArrayList(this.l.values())) {
                if (fVar.f1653e != null) {
                    fVar.f1653e.b();
                }
            }
            k();
            this.k.close();
            this.k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() throws IOException {
        while (this.j > this.h) {
            c(this.l.entrySet().iterator().next().getKey());
        }
    }

    public void d() throws IOException {
        close();
        j.a(this.f1637c);
    }

    private void e(String str) {
        if (!f1635a.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(InputStream inputStream) throws IOException {
        return j.a((Reader) new InputStreamReader(inputStream, j.f1667b));
    }
}
