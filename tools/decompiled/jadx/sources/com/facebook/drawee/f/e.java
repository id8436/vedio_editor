package com.facebook.drawee.f;

import android.support.annotation.ColorInt;
import com.facebook.d.d.k;
import java.util.Arrays;

/* JADX INFO: compiled from: RoundingParams.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f2170a = f.BITMAP_ONLY;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2171b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float[] f2172c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2173d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f2174e = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f2175f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f2176g = 0.0f;

    public e a(boolean z) {
        this.f2171b = z;
        return this;
    }

    public boolean a() {
        return this.f2171b;
    }

    public e a(float f2, float f3, float f4, float f5) {
        float[] fArrH = h();
        fArrH[1] = f2;
        fArrH[0] = f2;
        fArrH[3] = f3;
        fArrH[2] = f3;
        fArrH[5] = f4;
        fArrH[4] = f4;
        fArrH[7] = f5;
        fArrH[6] = f5;
        return this;
    }

    public float[] b() {
        return this.f2172c;
    }

    public f c() {
        return this.f2170a;
    }

    public e a(@ColorInt int i) {
        this.f2173d = i;
        this.f2170a = f.OVERLAY_COLOR;
        return this;
    }

    public int d() {
        return this.f2173d;
    }

    private float[] h() {
        if (this.f2172c == null) {
            this.f2172c = new float[8];
        }
        return this.f2172c;
    }

    public e a(float f2) {
        k.a(f2 >= 0.0f, "the border width cannot be < 0");
        this.f2174e = f2;
        return this;
    }

    public float e() {
        return this.f2174e;
    }

    public e b(@ColorInt int i) {
        this.f2175f = i;
        return this;
    }

    public int f() {
        return this.f2175f;
    }

    public e b(float f2) {
        k.a(f2 >= 0.0f, "the padding cannot be < 0");
        this.f2176g = f2;
        return this;
    }

    public float g() {
        return this.f2176g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f2171b == eVar.f2171b && this.f2173d == eVar.f2173d && Float.compare(eVar.f2174e, this.f2174e) == 0 && this.f2175f == eVar.f2175f && Float.compare(eVar.f2176g, this.f2176g) == 0 && this.f2170a == eVar.f2170a) {
            return Arrays.equals(this.f2172c, eVar.f2172c);
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f2174e != 0.0f ? Float.floatToIntBits(this.f2174e) : 0) + (((((this.f2172c != null ? Arrays.hashCode(this.f2172c) : 0) + (((this.f2171b ? 1 : 0) + ((this.f2170a != null ? this.f2170a.hashCode() : 0) * 31)) * 31)) * 31) + this.f2173d) * 31)) * 31) + this.f2175f) * 31) + (this.f2176g != 0.0f ? Float.floatToIntBits(this.f2176g) : 0);
    }
}
