package d.a.e;

import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: Hpack.java */
/* JADX INFO: loaded from: classes3.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c[] f4368a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f4369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f4370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f4371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<c> f4372e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e.j f4373f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f4374g;
    private int h;

    e(int i, e.ab abVar) {
        this(i, i, abVar);
    }

    e(int i, int i2, e.ab abVar) {
        this.f4372e = new ArrayList();
        this.f4368a = new c[8];
        this.f4369b = this.f4368a.length - 1;
        this.f4370c = 0;
        this.f4371d = 0;
        this.f4374g = i;
        this.h = i2;
        this.f4373f = e.q.a(abVar);
    }

    private void d() {
        if (this.h < this.f4371d) {
            if (this.h == 0) {
                e();
            } else {
                a(this.f4371d - this.h);
            }
        }
    }

    private void e() {
        Arrays.fill(this.f4368a, (Object) null);
        this.f4369b = this.f4368a.length - 1;
        this.f4370c = 0;
        this.f4371d = 0;
    }

    private int a(int i) {
        int i2 = 0;
        if (i > 0) {
            int length = this.f4368a.length;
            while (true) {
                length--;
                if (length < this.f4369b || i <= 0) {
                    break;
                }
                i -= this.f4368a[length].i;
                this.f4371d -= this.f4368a[length].i;
                this.f4370c--;
                i2++;
            }
            System.arraycopy(this.f4368a, this.f4369b + 1, this.f4368a, this.f4369b + 1 + i2, this.f4370c);
            this.f4369b += i2;
        }
        return i2;
    }

    void a() throws IOException {
        while (!this.f4373f.f()) {
            int i = this.f4373f.i() & UnsignedBytes.MAX_VALUE;
            if (i == 128) {
                throw new IOException("index == 0");
            }
            if ((i & 128) == 128) {
                b(a(i, 127) - 1);
            } else if (i == 64) {
                g();
            } else if ((i & 64) == 64) {
                e(a(i, 63) - 1);
            } else if ((i & 32) == 32) {
                this.h = a(i, 31);
                if (this.h < 0 || this.h > this.f4374g) {
                    throw new IOException("Invalid dynamic table size update " + this.h);
                }
                d();
            } else if (i == 16 || i == 0) {
                f();
            } else {
                d(a(i, 15) - 1);
            }
        }
    }

    public List<c> b() {
        ArrayList arrayList = new ArrayList(this.f4372e);
        this.f4372e.clear();
        return arrayList;
    }

    private void b(int i) throws IOException {
        if (g(i)) {
            this.f4372e.add(d.f4366a[i]);
            return;
        }
        int iC = c(i - d.f4366a.length);
        if (iC < 0 || iC > this.f4368a.length - 1) {
            throw new IOException("Header index too large " + (i + 1));
        }
        this.f4372e.add(this.f4368a[iC]);
    }

    private int c(int i) {
        return this.f4369b + 1 + i;
    }

    private void d(int i) throws IOException {
        this.f4372e.add(new c(f(i), c()));
    }

    private void f() throws IOException {
        this.f4372e.add(new c(d.a(c()), c()));
    }

    private void e(int i) throws IOException {
        a(-1, new c(f(i), c()));
    }

    private void g() throws IOException {
        a(-1, new c(d.a(c()), c()));
    }

    private e.k f(int i) {
        return g(i) ? d.f4366a[i].f4365g : this.f4368a[c(i - d.f4366a.length)].f4365g;
    }

    private boolean g(int i) {
        return i >= 0 && i <= d.f4366a.length + (-1);
    }

    private void a(int i, c cVar) {
        this.f4372e.add(cVar);
        int i2 = cVar.i;
        if (i != -1) {
            i2 -= this.f4368a[c(i)].i;
        }
        if (i2 > this.h) {
            e();
            return;
        }
        int iA = a((this.f4371d + i2) - this.h);
        if (i == -1) {
            if (this.f4370c + 1 > this.f4368a.length) {
                c[] cVarArr = new c[this.f4368a.length * 2];
                System.arraycopy(this.f4368a, 0, cVarArr, this.f4368a.length, this.f4368a.length);
                this.f4369b = this.f4368a.length - 1;
                this.f4368a = cVarArr;
            }
            int i3 = this.f4369b;
            this.f4369b = i3 - 1;
            this.f4368a[i3] = cVar;
            this.f4370c++;
        } else {
            this.f4368a[iA + c(i) + i] = cVar;
        }
        this.f4371d = i2 + this.f4371d;
    }

    private int h() throws IOException {
        return this.f4373f.i() & UnsignedBytes.MAX_VALUE;
    }

    int a(int i, int i2) throws IOException {
        int i3 = i & i2;
        if (i3 >= i2) {
            int i4 = 0;
            while (true) {
                int iH = h();
                if ((iH & 128) != 0) {
                    i2 += (iH & 127) << i4;
                    i4 += 7;
                } else {
                    return (iH << i4) + i2;
                }
            }
        } else {
            return i3;
        }
    }

    e.k c() throws IOException {
        int iH = h();
        boolean z = (iH & 128) == 128;
        int iA = a(iH, 127);
        if (z) {
            return e.k.a(ag.a().a(this.f4373f.g(iA)));
        }
        return this.f4373f.c(iA);
    }
}
