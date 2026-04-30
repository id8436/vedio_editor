package d.a.e;

import android.support.v7.widget.ActivityChooserView;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: Hpack.java */
/* JADX INFO: loaded from: classes3.dex */
final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f4375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f4376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    c[] f4377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f4378d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f4379e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f4380f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e.f f4381g;
    private final boolean h;
    private int i;
    private boolean j;

    f(e.f fVar) {
        this(4096, true, fVar);
    }

    f(int i, boolean z, e.f fVar) {
        this.i = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        this.f4377c = new c[8];
        this.f4378d = this.f4377c.length - 1;
        this.f4379e = 0;
        this.f4380f = 0;
        this.f4375a = i;
        this.f4376b = i;
        this.h = z;
        this.f4381g = fVar;
    }

    private void a() {
        Arrays.fill(this.f4377c, (Object) null);
        this.f4378d = this.f4377c.length - 1;
        this.f4379e = 0;
        this.f4380f = 0;
    }

    private int b(int i) {
        int i2 = 0;
        if (i > 0) {
            int length = this.f4377c.length;
            while (true) {
                length--;
                if (length < this.f4378d || i <= 0) {
                    break;
                }
                i -= this.f4377c[length].i;
                this.f4380f -= this.f4377c[length].i;
                this.f4379e--;
                i2++;
            }
            System.arraycopy(this.f4377c, this.f4378d + 1, this.f4377c, this.f4378d + 1 + i2, this.f4379e);
            Arrays.fill(this.f4377c, this.f4378d + 1, this.f4378d + 1 + i2, (Object) null);
            this.f4378d += i2;
        }
        return i2;
    }

    private void a(c cVar) {
        int i = cVar.i;
        if (i > this.f4376b) {
            a();
            return;
        }
        b((this.f4380f + i) - this.f4376b);
        if (this.f4379e + 1 > this.f4377c.length) {
            c[] cVarArr = new c[this.f4377c.length * 2];
            System.arraycopy(this.f4377c, 0, cVarArr, this.f4377c.length, this.f4377c.length);
            this.f4378d = this.f4377c.length - 1;
            this.f4377c = cVarArr;
        }
        int i2 = this.f4378d;
        this.f4378d = i2 - 1;
        this.f4377c[i2] = cVar;
        this.f4379e++;
        this.f4380f = i + this.f4380f;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void a(java.util.List<d.a.e.c> r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.a.e.f.a(java.util.List):void");
    }

    void a(int i, int i2, int i3) {
        if (i < i2) {
            this.f4381g.i(i3 | i);
            return;
        }
        this.f4381g.i(i3 | i2);
        int i4 = i - i2;
        while (i4 >= 128) {
            this.f4381g.i((i4 & 127) | 128);
            i4 >>>= 7;
        }
        this.f4381g.i(i4);
    }

    void a(e.k kVar) throws IOException {
        if (this.h && ag.a().a(kVar) < kVar.g()) {
            e.f fVar = new e.f();
            ag.a().a(kVar, fVar);
            e.k kVarO = fVar.o();
            a(kVarO.g(), 127, 128);
            this.f4381g.b(kVarO);
            return;
        }
        a(kVar.g(), 127, 0);
        this.f4381g.b(kVar);
    }

    void a(int i) {
        this.f4375a = i;
        int iMin = Math.min(i, 16384);
        if (this.f4376b != iMin) {
            if (iMin < this.f4376b) {
                this.i = Math.min(this.i, iMin);
            }
            this.j = true;
            this.f4376b = iMin;
            b();
        }
    }

    private void b() {
        if (this.f4376b < this.f4380f) {
            if (this.f4376b == 0) {
                a();
            } else {
                b(this.f4380f - this.f4376b);
            }
        }
    }
}
