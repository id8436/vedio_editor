package d.a.a;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes3.dex */
public final class f implements Closeable, Flushable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Pattern f4203a;
    static final /* synthetic */ boolean j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d.a.f.a f4204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f4205c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e.i f4206d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final LinkedHashMap<String, h> f4207e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f4208f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f4209g;
    boolean h;
    boolean i;
    private long k;
    private long l;
    private long m;
    private final Executor n;
    private final Runnable o;

    static {
        j = !f.class.desiredAssertionStatus();
        f4203a = Pattern.compile("[a-z0-9_-]{1,120}");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0057 A[Catch: all -> 0x000e, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:7:0x000d, B:12:0x0013, B:15:0x0018, B:17:0x001c, B:19:0x0022, B:20:0x003e, B:21:0x003f, B:23:0x004b, B:27:0x0053, B:29:0x0057, B:31:0x005d, B:33:0x0065, B:34:0x0083, B:35:0x0086, B:36:0x008c, B:38:0x009a, B:40:0x00c0, B:41:0x00c9, B:43:0x00d6, B:45:0x00dc, B:46:0x00e5), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009a A[Catch: all -> 0x000e, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:7:0x000d, B:12:0x0013, B:15:0x0018, B:17:0x001c, B:19:0x0022, B:20:0x003e, B:21:0x003f, B:23:0x004b, B:27:0x0053, B:29:0x0057, B:31:0x005d, B:33:0x0065, B:34:0x0083, B:35:0x0086, B:36:0x008c, B:38:0x009a, B:40:0x00c0, B:41:0x00c9, B:43:0x00d6, B:45:0x00dc, B:46:0x00e5), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00dc A[Catch: all -> 0x000e, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:7:0x000d, B:12:0x0013, B:15:0x0018, B:17:0x001c, B:19:0x0022, B:20:0x003e, B:21:0x003f, B:23:0x004b, B:27:0x0053, B:29:0x0057, B:31:0x005d, B:33:0x0065, B:34:0x0083, B:35:0x0086, B:36:0x008c, B:38:0x009a, B:40:0x00c0, B:41:0x00c9, B:43:0x00d6, B:45:0x00dc, B:46:0x00e5), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e5 A[Catch: all -> 0x000e, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:7:0x000d, B:12:0x0013, B:15:0x0018, B:17:0x001c, B:19:0x0022, B:20:0x003e, B:21:0x003f, B:23:0x004b, B:27:0x0053, B:29:0x0057, B:31:0x005d, B:33:0x0065, B:34:0x0083, B:35:0x0086, B:36:0x008c, B:38:0x009a, B:40:0x00c0, B:41:0x00c9, B:43:0x00d6, B:45:0x00dc, B:46:0x00e5), top: B:48:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    synchronized void a(d.a.a.g r11, boolean r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a.a.f.a(d.a.a.g, boolean):void");
    }

    boolean a() {
        return this.f4208f >= 2000 && this.f4208f >= this.f4207e.size();
    }

    boolean a(h hVar) throws IOException {
        if (hVar.f4219f != null) {
            hVar.f4219f.a();
        }
        for (int i = 0; i < this.f4205c; i++) {
            this.f4204b.a(hVar.f4216c[i]);
            this.l -= hVar.f4215b[i];
            hVar.f4215b[i] = 0;
        }
        this.f4208f++;
        this.f4206d.b("REMOVE").i(32).b(hVar.f4214a).i(10);
        this.f4207e.remove(hVar.f4214a);
        if (a()) {
            this.n.execute(this.o);
            return true;
        }
        return true;
    }

    public synchronized boolean b() {
        return this.h;
    }

    private synchronized void d() {
        if (b()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.f4209g) {
            d();
            c();
            this.f4206d.flush();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (!this.f4209g || this.h) {
            this.h = true;
        } else {
            for (h hVar : (h[]) this.f4207e.values().toArray(new h[this.f4207e.size()])) {
                if (hVar.f4219f != null) {
                    hVar.f4219f.b();
                }
            }
            c();
            this.f4206d.close();
            this.f4206d = null;
            this.h = true;
        }
    }

    void c() throws IOException {
        while (this.l > this.k) {
            a(this.f4207e.values().iterator().next());
        }
        this.i = false;
    }
}
