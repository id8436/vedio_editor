package d.a.e;

import java.util.Arrays;

/* JADX INFO: compiled from: Settings.java */
/* JADX INFO: loaded from: classes3.dex */
public final class al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4349a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int[] f4350b = new int[10];

    void a() {
        this.f4349a = 0;
        Arrays.fill(this.f4350b, 0);
    }

    al a(int i, int i2) {
        if (i >= 0 && i < this.f4350b.length) {
            this.f4349a = (1 << i) | this.f4349a;
            this.f4350b[i] = i2;
        }
        return this;
    }

    boolean a(int i) {
        return ((1 << i) & this.f4349a) != 0;
    }

    int b(int i) {
        return this.f4350b[i];
    }

    int b() {
        return Integer.bitCount(this.f4349a);
    }

    int c() {
        if ((2 & this.f4349a) != 0) {
            return this.f4350b[1];
        }
        return -1;
    }

    int c(int i) {
        return (16 & this.f4349a) != 0 ? this.f4350b[4] : i;
    }

    int d(int i) {
        return (32 & this.f4349a) != 0 ? this.f4350b[5] : i;
    }

    int d() {
        if ((128 & this.f4349a) != 0) {
            return this.f4350b[7];
        }
        return 65535;
    }

    void a(al alVar) {
        for (int i = 0; i < 10; i++) {
            if (alVar.a(i)) {
                a(i, alVar.b(i));
            }
        }
    }
}
