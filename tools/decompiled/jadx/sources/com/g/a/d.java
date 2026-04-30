package com.g.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;

/* JADX INFO: compiled from: FloatKeyframeSet.java */
/* JADX INFO: loaded from: classes2.dex */
class d extends h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f3064g;
    private float h;
    private float i;
    private boolean j;

    public d(g... gVarArr) {
        super(gVarArr);
        this.j = true;
    }

    @Override // com.g.a.h
    public Object a(float f2) {
        return Float.valueOf(b(f2));
    }

    @Override // com.g.a.h
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public d clone() {
        ArrayList<f> arrayList = this.f3074e;
        int size = this.f3074e.size();
        g[] gVarArr = new g[size];
        for (int i = 0; i < size; i++) {
            gVarArr[i] = (g) arrayList.get(i).clone();
        }
        return new d(gVarArr);
    }

    public float b(float f2) {
        int i = 1;
        if (this.f3070a == 2) {
            if (this.j) {
                this.j = false;
                this.f3064g = ((g) this.f3074e.get(0)).f();
                this.h = ((g) this.f3074e.get(1)).f();
                this.i = this.h - this.f3064g;
            }
            if (this.f3073d != null) {
                f2 = this.f3073d.getInterpolation(f2);
            }
            if (this.f3075f == null) {
                return this.f3064g + (this.i * f2);
            }
            return ((Number) this.f3075f.a(f2, Float.valueOf(this.f3064g), Float.valueOf(this.h))).floatValue();
        }
        if (f2 <= 0.0f) {
            g gVar = (g) this.f3074e.get(0);
            g gVar2 = (g) this.f3074e.get(1);
            float f3 = gVar.f();
            float f4 = gVar2.f();
            float fC = gVar.c();
            float fC2 = gVar2.c();
            Interpolator interpolatorD = gVar2.d();
            if (interpolatorD != null) {
                f2 = interpolatorD.getInterpolation(f2);
            }
            float f5 = (f2 - fC) / (fC2 - fC);
            return this.f3075f == null ? (f5 * (f4 - f3)) + f3 : ((Number) this.f3075f.a(f5, Float.valueOf(f3), Float.valueOf(f4))).floatValue();
        }
        if (f2 >= 1.0f) {
            g gVar3 = (g) this.f3074e.get(this.f3070a - 2);
            g gVar4 = (g) this.f3074e.get(this.f3070a - 1);
            float f6 = gVar3.f();
            float f7 = gVar4.f();
            float fC3 = gVar3.c();
            float fC4 = gVar4.c();
            Interpolator interpolatorD2 = gVar4.d();
            if (interpolatorD2 != null) {
                f2 = interpolatorD2.getInterpolation(f2);
            }
            float f8 = (f2 - fC3) / (fC4 - fC3);
            return this.f3075f == null ? (f8 * (f7 - f6)) + f6 : ((Number) this.f3075f.a(f8, Float.valueOf(f6), Float.valueOf(f7))).floatValue();
        }
        g gVar5 = (g) this.f3074e.get(0);
        while (true) {
            g gVar6 = gVar5;
            if (i < this.f3070a) {
                gVar5 = (g) this.f3074e.get(i);
                if (f2 >= gVar5.c()) {
                    i++;
                } else {
                    Interpolator interpolatorD3 = gVar5.d();
                    if (interpolatorD3 != null) {
                        f2 = interpolatorD3.getInterpolation(f2);
                    }
                    float fC5 = (f2 - gVar6.c()) / (gVar5.c() - gVar6.c());
                    float f9 = gVar6.f();
                    float f10 = gVar5.f();
                    return this.f3075f == null ? ((f10 - f9) * fC5) + f9 : ((Number) this.f3075f.a(fC5, Float.valueOf(f9), Float.valueOf(f10))).floatValue();
                }
            } else {
                return ((Number) this.f3074e.get(this.f3070a - 1).b()).floatValue();
            }
        }
    }
}
