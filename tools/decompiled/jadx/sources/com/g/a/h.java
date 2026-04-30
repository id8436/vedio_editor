package com.g.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: compiled from: KeyframeSet.java */
/* JADX INFO: loaded from: classes2.dex */
class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f3070a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    f f3071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    f f3072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Interpolator f3073d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ArrayList<f> f3074e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    ab f3075f;

    public h(f... fVarArr) {
        this.f3070a = fVarArr.length;
        this.f3074e.addAll(Arrays.asList(fVarArr));
        this.f3071b = this.f3074e.get(0);
        this.f3072c = this.f3074e.get(this.f3070a - 1);
        this.f3073d = this.f3072c.d();
    }

    public static h a(float... fArr) {
        int length = fArr.length;
        g[] gVarArr = new g[Math.max(length, 2)];
        if (length == 1) {
            gVarArr[0] = (g) f.a(0.0f);
            gVarArr[1] = (g) f.a(1.0f, fArr[0]);
        } else {
            gVarArr[0] = (g) f.a(0.0f, fArr[0]);
            for (int i = 1; i < length; i++) {
                gVarArr[i] = (g) f.a(i / (length - 1), fArr[i]);
            }
        }
        return new d(gVarArr);
    }

    public void a(ab abVar) {
        this.f3075f = abVar;
    }

    @Override // 
    /* JADX INFO: renamed from: b */
    public h clone() {
        ArrayList<f> arrayList = this.f3074e;
        int size = this.f3074e.size();
        f[] fVarArr = new f[size];
        for (int i = 0; i < size; i++) {
            fVarArr[i] = arrayList.get(i).clone();
        }
        return new h(fVarArr);
    }

    public Object a(float f2) {
        if (this.f3070a == 2) {
            if (this.f3073d != null) {
                f2 = this.f3073d.getInterpolation(f2);
            }
            return this.f3075f.a(f2, this.f3071b.b(), this.f3072c.b());
        }
        if (f2 <= 0.0f) {
            f fVar = this.f3074e.get(1);
            Interpolator interpolatorD = fVar.d();
            if (interpolatorD != null) {
                f2 = interpolatorD.getInterpolation(f2);
            }
            float fC = this.f3071b.c();
            return this.f3075f.a((f2 - fC) / (fVar.c() - fC), this.f3071b.b(), fVar.b());
        }
        if (f2 >= 1.0f) {
            f fVar2 = this.f3074e.get(this.f3070a - 2);
            Interpolator interpolatorD2 = this.f3072c.d();
            if (interpolatorD2 != null) {
                f2 = interpolatorD2.getInterpolation(f2);
            }
            float fC2 = fVar2.c();
            return this.f3075f.a((f2 - fC2) / (this.f3072c.c() - fC2), fVar2.b(), this.f3072c.b());
        }
        f fVar3 = this.f3071b;
        int i = 1;
        while (i < this.f3070a) {
            f fVar4 = this.f3074e.get(i);
            if (f2 >= fVar4.c()) {
                i++;
                fVar3 = fVar4;
            } else {
                Interpolator interpolatorD3 = fVar4.d();
                if (interpolatorD3 != null) {
                    f2 = interpolatorD3.getInterpolation(f2);
                }
                float fC3 = fVar3.c();
                return this.f3075f.a((f2 - fC3) / (fVar4.c() - fC3), fVar3.b(), fVar4.b());
            }
        }
        return this.f3072c.b();
    }

    public String toString() {
        String str = " ";
        int i = 0;
        while (i < this.f3070a) {
            String str2 = str + this.f3074e.get(i).b() + "  ";
            i++;
            str = str2;
        }
        return str;
    }
}
