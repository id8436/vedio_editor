package d.a.a;

import java.io.IOException;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes3.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final h f4210a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean[] f4211b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ f f4212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4213d;

    void a() {
        if (this.f4210a.f4219f == this) {
            for (int i = 0; i < this.f4212c.f4205c; i++) {
                try {
                    this.f4212c.f4204b.a(this.f4210a.f4217d[i]);
                } catch (IOException e2) {
                }
            }
            this.f4210a.f4219f = null;
        }
    }

    public void b() throws IOException {
        synchronized (this.f4212c) {
            if (this.f4213d) {
                throw new IllegalStateException();
            }
            if (this.f4210a.f4219f == this) {
                this.f4212c.a(this, false);
            }
            this.f4213d = true;
        }
    }
}
