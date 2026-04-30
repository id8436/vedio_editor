package com.g.a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: ValueAnimator.java */
/* JADX INFO: loaded from: classes2.dex */
public class ac extends a {
    private static ThreadLocal<ai> h = new ThreadLocal<>();
    private static final ThreadLocal<ArrayList<ac>> i = new ad();
    private static final ThreadLocal<ArrayList<ac>> j = new ae();
    private static final ThreadLocal<ArrayList<ac>> k = new af();
    private static final ThreadLocal<ArrayList<ac>> l = new ag();
    private static final ThreadLocal<ArrayList<ac>> m = new ah();
    private static final Interpolator n = new AccelerateDecelerateInterpolator();
    private static final ab o = new e();
    private static final ab p = new c();
    private static long z = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f3058b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    y[] f3062f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    HashMap<String, y> f3063g;
    private long u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f3059c = -1;
    private boolean q = false;
    private int r = 0;
    private float s = 0.0f;
    private boolean t = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f3060d = 0;
    private boolean v = false;
    private boolean w = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f3061e = false;
    private long x = 300;
    private long y = 0;
    private int A = 0;
    private int B = 1;
    private Interpolator C = n;
    private ArrayList<aj> D = null;

    public void a(float... fArr) {
        if (fArr != null && fArr.length != 0) {
            if (this.f3062f == null || this.f3062f.length == 0) {
                a(y.a("", fArr));
            } else {
                this.f3062f[0].a(fArr);
            }
            this.f3061e = false;
        }
    }

    public void a(y... yVarArr) {
        int length = yVarArr.length;
        this.f3062f = yVarArr;
        this.f3063g = new HashMap<>(length);
        for (y yVar : yVarArr) {
            this.f3063g.put(yVar.c(), yVar);
        }
        this.f3061e = false;
    }

    void d() {
        if (!this.f3061e) {
            int length = this.f3062f.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f3062f[i2].b();
            }
            this.f3061e = true;
        }
    }

    public ac b(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("Animators cannot have negative duration: " + j2);
        }
        this.x = j2;
        return this;
    }

    public void c(long j2) {
        d();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f3060d != 1) {
            this.f3059c = j2;
            this.f3060d = 2;
        }
        this.f3058b = jCurrentAnimationTimeMillis - j2;
        d(jCurrentAnimationTimeMillis);
    }

    public long g() {
        if (!this.f3061e || this.f3060d == 0) {
            return 0L;
        }
        return AnimationUtils.currentAnimationTimeMillis() - this.f3058b;
    }

    public void a(int i2) {
        this.A = i2;
    }

    public void b(int i2) {
        this.B = i2;
    }

    public void a(Interpolator interpolator) {
        if (interpolator != null) {
            this.C = interpolator;
        } else {
            this.C = new LinearInterpolator();
        }
    }

    private void a(boolean z2) {
        if (Looper.myLooper() == null) {
            throw new AndroidRuntimeException("Animators may only be run on Looper threads");
        }
        this.q = z2;
        this.r = 0;
        this.f3060d = 0;
        this.w = true;
        this.t = false;
        j.get().add(this);
        if (this.y == 0) {
            c(g());
            this.f3060d = 0;
            this.v = true;
            if (this.f3057a != null) {
                ArrayList arrayList = (ArrayList) this.f3057a.clone();
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((b) arrayList.get(i2)).a(this);
                }
            }
        }
        ai aiVar = h.get();
        if (aiVar == null) {
            aiVar = new ai(null);
            h.set(aiVar);
        }
        aiVar.sendEmptyMessage(0);
    }

    @Override // com.g.a.a
    public void a() {
        a(false);
    }

    @Override // com.g.a.a
    public void b() {
        if (this.f3060d != 0 || j.get().contains(this) || k.get().contains(this)) {
            if (this.v && this.f3057a != null) {
                Iterator it = ((ArrayList) this.f3057a.clone()).iterator();
                while (it.hasNext()) {
                    ((b) it.next()).c(this);
                }
            }
            e();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        i.get().remove(this);
        j.get().remove(this);
        k.get().remove(this);
        this.f3060d = 0;
        if (this.v && this.f3057a != null) {
            ArrayList arrayList = (ArrayList) this.f3057a.clone();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((b) arrayList.get(i2)).b(this);
            }
        }
        this.v = false;
        this.w = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        d();
        i.get().add(this);
        if (this.y > 0 && this.f3057a != null) {
            ArrayList arrayList = (ArrayList) this.f3057a.clone();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                ((b) arrayList.get(i2)).a(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(long j2) {
        if (!this.t) {
            this.t = true;
            this.u = j2;
        } else {
            long j3 = j2 - this.u;
            if (j3 > this.y) {
                this.f3058b = j2 - (j3 - this.y);
                this.f3060d = 1;
                return true;
            }
        }
        return false;
    }

    boolean d(long j2) {
        float fMin;
        boolean z2 = false;
        if (this.f3060d == 0) {
            this.f3060d = 1;
            if (this.f3059c < 0) {
                this.f3058b = j2;
            } else {
                this.f3058b = j2 - this.f3059c;
                this.f3059c = -1L;
            }
        }
        switch (this.f3060d) {
            case 1:
            case 2:
                float f2 = this.x > 0 ? (j2 - this.f3058b) / this.x : 1.0f;
                if (f2 < 1.0f) {
                    fMin = f2;
                } else if (this.r < this.A || this.A == -1) {
                    if (this.f3057a != null) {
                        int size = this.f3057a.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            this.f3057a.get(i2).d(this);
                        }
                    }
                    if (this.B == 2) {
                        this.q = !this.q;
                    }
                    this.r += (int) f2;
                    fMin = f2 % 1.0f;
                    this.f3058b += this.x;
                } else {
                    fMin = Math.min(f2, 1.0f);
                    z2 = true;
                }
                if (this.q) {
                    fMin = 1.0f - fMin;
                }
                a(fMin);
            default:
                return z2;
        }
    }

    void a(float f2) {
        float interpolation = this.C.getInterpolation(f2);
        this.s = interpolation;
        int length = this.f3062f.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f3062f[i2].a(interpolation);
        }
        if (this.D != null) {
            int size = this.D.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.D.get(i3).a(this);
            }
        }
    }

    @Override // com.g.a.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public ac clone() {
        ac acVar = (ac) super.clone();
        if (this.D != null) {
            ArrayList<aj> arrayList = this.D;
            acVar.D = new ArrayList<>();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                acVar.D.add(arrayList.get(i2));
            }
        }
        acVar.f3059c = -1L;
        acVar.q = false;
        acVar.r = 0;
        acVar.f3061e = false;
        acVar.f3060d = 0;
        acVar.t = false;
        y[] yVarArr = this.f3062f;
        if (yVarArr != null) {
            int length = yVarArr.length;
            acVar.f3062f = new y[length];
            acVar.f3063g = new HashMap<>(length);
            for (int i3 = 0; i3 < length; i3++) {
                y yVarA = yVarArr[i3].clone();
                acVar.f3062f[i3] = yVarA;
                acVar.f3063g.put(yVarA.c(), yVarA);
            }
        }
        return acVar;
    }

    public String toString() {
        String str = "ValueAnimator@" + Integer.toHexString(hashCode());
        if (this.f3062f != null) {
            for (int i2 = 0; i2 < this.f3062f.length; i2++) {
                str = str + "\n    " + this.f3062f[i2].toString();
            }
        }
        return str;
    }
}
