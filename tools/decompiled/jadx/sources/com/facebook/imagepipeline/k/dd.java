package com.facebook.imagepipeline.k;

/* JADX INFO: compiled from: ThumbnailBranchProducer.java */
/* JADX INFO: loaded from: classes2.dex */
public class dd implements cl<com.facebook.imagepipeline.h.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final df<com.facebook.imagepipeline.h.d>[] f2778a;

    public dd(df<com.facebook.imagepipeline.h.d>... dfVarArr) {
        this.f2778a = (df[]) com.facebook.d.d.k.a(dfVarArr);
        com.facebook.d.d.k.a(0, this.f2778a.length);
    }

    @Override // com.facebook.imagepipeline.k.cl
    public void a(o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        if (cmVar.a().f() == null) {
            oVar.b(null, true);
        } else if (!a(0, oVar, cmVar)) {
            oVar.b(null, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(int i, o<com.facebook.imagepipeline.h.d> oVar, cm cmVar) {
        int iA = a(i, cmVar.a().f());
        if (iA == -1) {
            return false;
        }
        this.f2778a[iA].a(new de(this, oVar, cmVar, iA), cmVar);
        return true;
    }

    private int a(int i, com.facebook.imagepipeline.d.d dVar) {
        while (i < this.f2778a.length) {
            if (!this.f2778a[i].a(dVar)) {
                i++;
            } else {
                return i;
            }
        }
        return -1;
    }
}
