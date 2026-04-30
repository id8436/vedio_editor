package com.b.a.a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f681b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f686g;
    private final int h;
    private Writer j;
    private int l;
    private long i = 0;
    private final LinkedHashMap<String, d> k = new LinkedHashMap<>(0, 0.75f, true);
    private long m = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ThreadPoolExecutor f680a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> n = new b(this);

    private a(File file, int i, int i2, long j) {
        this.f681b = file;
        this.f685f = i;
        this.f682c = new File(file, "journal");
        this.f683d = new File(file, "journal.tmp");
        this.f684e = new File(file, "journal.bkp");
        this.h = i2;
        this.f686g = j;
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
        if (aVar.f682c.exists()) {
            try {
                aVar.b();
                aVar.c();
                return aVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                aVar.a();
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, i, i2, j);
        aVar2.d();
        return aVar2;
    }

    private void b() throws IOException {
        f fVar = new f(new FileInputStream(this.f682c), h.f710a);
        try {
            String strA = fVar.a();
            String strA2 = fVar.a();
            String strA3 = fVar.a();
            String strA4 = fVar.a();
            String strA5 = fVar.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.f685f).equals(strA3) || !Integer.toString(this.h).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    d(fVar.a());
                    i++;
                } catch (EOFException e2) {
                    this.l = i - this.k.size();
                    if (fVar.b()) {
                        d();
                    } else {
                        this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f682c, true), h.f710a));
                    }
                    h.a(fVar);
                    return;
                }
            }
        } catch (Throwable th) {
            h.a(fVar);
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
                this.k.remove(strSubstring2);
                return;
            }
            strSubstring = strSubstring2;
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        d dVar = this.k.get(strSubstring);
        if (dVar == null) {
            dVar = new d(this, strSubstring, bVar);
            this.k.put(strSubstring, dVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == "CLEAN".length() && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            dVar.f697f = true;
            dVar.f698g = null;
            dVar.a(strArrSplit);
            return;
        }
        if (iIndexOf2 != -1 || iIndexOf != "DIRTY".length() || !str.startsWith("DIRTY")) {
            if (iIndexOf2 != -1 || iIndexOf != "READ".length() || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
            return;
        }
        dVar.f698g = new c(this, dVar, bVar);
    }

    private void c() throws IOException {
        a(this.f683d);
        Iterator<d> it = this.k.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            if (next.f698g == null) {
                for (int i = 0; i < this.h; i++) {
                    this.i += next.f696e[i];
                }
            } else {
                next.f698g = null;
                for (int i2 = 0; i2 < this.h; i2++) {
                    a(next.a(i2));
                    a(next.b(i2));
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() throws IOException {
        if (this.j != null) {
            this.j.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f683d), h.f710a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write("1");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.f685f));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.h));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            for (d dVar : this.k.values()) {
                if (dVar.f698g != null) {
                    bufferedWriter.write("DIRTY " + dVar.f695d + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.f695d + dVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f682c.exists()) {
                a(this.f682c, this.f684e, true);
            }
            a(this.f683d, this.f682c, false);
            this.f684e.delete();
            this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f682c, true), h.f710a));
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

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0028, code lost:
    
        r9.l++;
        r9.j.append((java.lang.CharSequence) "READ");
        r9.j.append(' ');
        r9.j.append((java.lang.CharSequence) r10);
        r9.j.append('\n');
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
    
        if (e() == false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
    
        r9.f680a.submit(r9.n);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
    
        r1 = new com.b.a.a.e(r9, r10, r0.h, r0.f692a, r0.f696e, null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized com.b.a.a.e a(java.lang.String r10) throws java.io.IOException {
        /*
            r9 = this;
            r1 = 0
            monitor-enter(r9)
            r9.f()     // Catch: java.lang.Throwable -> L69
            java.util.LinkedHashMap<java.lang.String, com.b.a.a.d> r0 = r9.k     // Catch: java.lang.Throwable -> L69
            java.lang.Object r0 = r0.get(r10)     // Catch: java.lang.Throwable -> L69
            com.b.a.a.d r0 = (com.b.a.a.d) r0     // Catch: java.lang.Throwable -> L69
            if (r0 != 0) goto L11
        Lf:
            monitor-exit(r9)
            return r1
        L11:
            boolean r2 = com.b.a.a.d.d(r0)     // Catch: java.lang.Throwable -> L69
            if (r2 == 0) goto Lf
            java.io.File[] r3 = r0.f692a     // Catch: java.lang.Throwable -> L69
            int r4 = r3.length     // Catch: java.lang.Throwable -> L69
            r2 = 0
        L1b:
            if (r2 >= r4) goto L28
            r5 = r3[r2]     // Catch: java.lang.Throwable -> L69
            boolean r5 = r5.exists()     // Catch: java.lang.Throwable -> L69
            if (r5 == 0) goto Lf
            int r2 = r2 + 1
            goto L1b
        L28:
            int r1 = r9.l     // Catch: java.lang.Throwable -> L69
            int r1 = r1 + 1
            r9.l = r1     // Catch: java.lang.Throwable -> L69
            java.io.Writer r1 = r9.j     // Catch: java.lang.Throwable -> L69
            java.lang.String r2 = "READ"
            r1.append(r2)     // Catch: java.lang.Throwable -> L69
            java.io.Writer r1 = r9.j     // Catch: java.lang.Throwable -> L69
            r2 = 32
            r1.append(r2)     // Catch: java.lang.Throwable -> L69
            java.io.Writer r1 = r9.j     // Catch: java.lang.Throwable -> L69
            r1.append(r10)     // Catch: java.lang.Throwable -> L69
            java.io.Writer r1 = r9.j     // Catch: java.lang.Throwable -> L69
            r2 = 10
            r1.append(r2)     // Catch: java.lang.Throwable -> L69
            boolean r1 = r9.e()     // Catch: java.lang.Throwable -> L69
            if (r1 == 0) goto L56
            java.util.concurrent.ThreadPoolExecutor r1 = r9.f680a     // Catch: java.lang.Throwable -> L69
            java.util.concurrent.Callable<java.lang.Void> r2 = r9.n     // Catch: java.lang.Throwable -> L69
            r1.submit(r2)     // Catch: java.lang.Throwable -> L69
        L56:
            com.b.a.a.e r1 = new com.b.a.a.e     // Catch: java.lang.Throwable -> L69
            long r4 = com.b.a.a.d.e(r0)     // Catch: java.lang.Throwable -> L69
            java.io.File[] r6 = r0.f692a     // Catch: java.lang.Throwable -> L69
            long[] r7 = com.b.a.a.d.b(r0)     // Catch: java.lang.Throwable -> L69
            r8 = 0
            r2 = r9
            r3 = r10
            r1.<init>(r2, r3, r4, r6, r7, r8)     // Catch: java.lang.Throwable -> L69
            goto Lf
        L69:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.a.a(java.lang.String):com.b.a.a.e");
    }

    public c b(String str) throws IOException {
        return a(str, -1L);
    }

    private synchronized c a(String str, long j) throws IOException {
        d dVar;
        c cVar;
        f();
        d dVar2 = this.k.get(str);
        if (j == -1 || (dVar2 != null && dVar2.h == j)) {
            if (dVar2 == null) {
                d dVar3 = new d(this, str, null);
                this.k.put(str, dVar3);
                dVar = dVar3;
            } else if (dVar2.f698g != null) {
                cVar = null;
            } else {
                dVar = dVar2;
            }
            cVar = new c(this, dVar, null);
            dVar.f698g = cVar;
            this.j.append((CharSequence) "DIRTY");
            this.j.append(' ');
            this.j.append((CharSequence) str);
            this.j.append('\n');
            this.j.flush();
        } else {
            cVar = null;
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x005d A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x0087, B:35:0x008a, B:36:0x008e, B:38:0x009f, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x0087, B:35:0x008a, B:36:0x008e, B:38:0x009f, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ea A[Catch: all -> 0x0012, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x0087, B:35:0x008a, B:36:0x008e, B:38:0x009f, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f3 A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000c, B:7:0x0011, B:12:0x0017, B:15:0x001e, B:17:0x0022, B:19:0x002a, B:20:0x0046, B:21:0x0047, B:23:0x0051, B:27:0x0059, B:29:0x005d, B:31:0x0063, B:33:0x0069, B:34:0x0087, B:35:0x008a, B:36:0x008e, B:38:0x009f, B:40:0x00cd, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(com.b.a.a.c r11, boolean r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.a.a.a(com.b.a.a.c, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        return this.l >= 2000 && this.l >= this.k.size();
    }

    public synchronized boolean c(String str) throws IOException {
        boolean z;
        synchronized (this) {
            f();
            d dVar = this.k.get(str);
            if (dVar == null || dVar.f698g != null) {
                z = false;
            } else {
                for (int i = 0; i < this.h; i++) {
                    File fileA = dVar.a(i);
                    if (fileA.exists() && !fileA.delete()) {
                        throw new IOException("failed to delete " + fileA);
                    }
                    this.i -= dVar.f696e[i];
                    dVar.f696e[i] = 0;
                }
                this.l++;
                this.j.append((CharSequence) "REMOVE");
                this.j.append(' ');
                this.j.append((CharSequence) str);
                this.j.append('\n');
                this.k.remove(str);
                if (e()) {
                    this.f680a.submit(this.n);
                }
                z = true;
            }
        }
        return z;
    }

    private void f() {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.j != null) {
            for (d dVar : new ArrayList(this.k.values())) {
                if (dVar.f698g != null) {
                    dVar.f698g.b();
                }
            }
            g();
            this.j.close();
            this.j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() throws IOException {
        while (this.i > this.f686g) {
            c(this.k.entrySet().iterator().next().getKey());
        }
    }

    public void a() throws IOException {
        close();
        h.a(this.f681b);
    }
}
