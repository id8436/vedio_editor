package com.github.chrisbanes.photoview;

import android.view.ViewParent;

/* JADX INFO: compiled from: PhotoViewAttacher.java */
/* JADX INFO: loaded from: classes2.dex */
class m implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ l f3157a;

    m(l lVar) {
        this.f3157a = lVar;
    }

    @Override // com.github.chrisbanes.photoview.d
    public void a(float f2, float f3) {
        if (!this.f3157a.o.a()) {
            if (this.f3157a.C != null) {
                this.f3157a.C.a(f2, f3);
            }
            this.f3157a.r.postTranslate(f2, f3);
            this.f3157a.m();
            ViewParent parent = this.f3157a.m.getParent();
            if (this.f3157a.k && !this.f3157a.o.a() && !this.f3157a.l) {
                if ((this.f3157a.E == 2 || ((this.f3157a.E == 0 && f2 >= 1.0f) || (this.f3157a.E == 1 && f2 <= -1.0f))) && parent != null) {
                    parent.requestDisallowInterceptTouchEvent(false);
                    return;
                }
                return;
            }
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    @Override // com.github.chrisbanes.photoview.d
    public void a(float f2, float f3, float f4, float f5) {
        this.f3157a.D = new r(this.f3157a, this.f3157a.m.getContext());
        this.f3157a.D.a(this.f3157a.a(this.f3157a.m), this.f3157a.b(this.f3157a.m), (int) f4, (int) f5);
        this.f3157a.m.post(this.f3157a.D);
    }

    @Override // com.github.chrisbanes.photoview.d
    public void a(float f2, float f3, float f4) {
        if (this.f3157a.e() < this.f3157a.j || f2 < 1.0f) {
            if (this.f3157a.e() > this.f3157a.h || f2 > 1.0f) {
                if (this.f3157a.A != null) {
                    this.f3157a.A.a(f2, f3, f4);
                }
                this.f3157a.r.postScale(f2, f2, f3, f4);
                this.f3157a.m();
            }
        }
    }
}
