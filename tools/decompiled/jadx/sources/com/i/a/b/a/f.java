package com.i.a.b.a;

/* JADX INFO: compiled from: ImageSize.java */
/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3271a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3272b;

    public f(int i, int i2) {
        this.f3271a = i;
        this.f3272b = i2;
    }

    public f(int i, int i2, int i3) {
        if (i3 % 180 == 0) {
            this.f3271a = i;
            this.f3272b = i2;
        } else {
            this.f3271a = i2;
            this.f3272b = i;
        }
    }

    public int a() {
        return this.f3271a;
    }

    public int b() {
        return this.f3272b;
    }

    public f a(int i) {
        return new f(this.f3271a / i, this.f3272b / i);
    }

    public f a(float f2) {
        return new f((int) (this.f3271a * f2), (int) (this.f3272b * f2));
    }

    public String toString() {
        return new StringBuilder(9).append(this.f3271a).append("x").append(this.f3272b).toString();
    }
}
