package d.a.a;

import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes3.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f4214a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final long[] f4215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final File[] f4216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final File[] f4217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f4218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    g f4219f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f4220g;

    void a(e.i iVar) throws IOException {
        for (long j : this.f4215b) {
            iVar.i(32).l(j);
        }
    }
}
