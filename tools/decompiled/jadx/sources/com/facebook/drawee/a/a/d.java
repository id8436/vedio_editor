package com.facebook.drawee.a.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.facebook.d.d.k;
import com.facebook.d.d.m;
import com.facebook.drawee.e.q;
import com.facebook.drawee.e.r;
import com.facebook.drawee.e.t;
import com.facebook.imagepipeline.c.ad;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: PipelineDraweeController.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends com.facebook.drawee.c.a<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>, com.facebook.imagepipeline.h.e> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f2007a = d.class;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f2008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.imagepipeline.a.a.a f2009c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final com.facebook.d.d.d<a> f2010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> f2011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.facebook.c.a.f f2012f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private m<com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>> f2013g;
    private boolean h;
    private final a i;

    public d(Resources resources, com.facebook.drawee.b.a aVar, com.facebook.imagepipeline.a.a.a aVar2, Executor executor, ad<com.facebook.c.a.f, com.facebook.imagepipeline.h.b> adVar, m<com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>> mVar, String str, com.facebook.c.a.f fVar, Object obj, @Nullable com.facebook.d.d.d<a> dVar) {
        super(aVar, executor, str, obj);
        this.i = new e(this);
        this.f2008b = resources;
        this.f2009c = aVar2;
        this.f2011e = adVar;
        this.f2012f = fVar;
        this.f2010d = dVar;
        a(mVar);
    }

    public void a(m<com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>> mVar, String str, com.facebook.c.a.f fVar, Object obj) {
        super.a(str, obj);
        a(mVar);
        this.f2012f = fVar;
    }

    public void a(boolean z) {
        this.h = z;
    }

    private void a(m<com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>>> mVar) {
        this.f2013g = mVar;
        a((com.facebook.imagepipeline.h.b) null);
    }

    @Override // com.facebook.drawee.c.a
    protected com.facebook.e.f<com.facebook.d.h.a<com.facebook.imagepipeline.h.b>> a() {
        if (com.facebook.d.e.a.a(2)) {
            com.facebook.d.e.a.a(f2007a, "controller %x: getDataSource", Integer.valueOf(System.identityHashCode(this)));
        }
        return this.f2013g.b();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.c.a
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public Drawable d(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar) {
        Drawable drawableB;
        k.b(com.facebook.d.h.a.a((com.facebook.d.h.a<?>) aVar));
        com.facebook.imagepipeline.h.b bVarA = aVar.a();
        a(bVarA);
        if (this.f2010d != null) {
            for (a aVar2 : this.f2010d) {
                if (aVar2.a(bVarA) && (drawableB = aVar2.b(bVarA)) != null) {
                    return drawableB;
                }
            }
        }
        Drawable drawableB2 = this.i.b(bVarA);
        if (drawableB2 != null) {
            return drawableB2;
        }
        throw new UnsupportedOperationException("Unrecognized image class: " + bVarA);
    }

    @Override // com.facebook.drawee.c.a, com.facebook.drawee.h.a
    public void a(@Nullable com.facebook.drawee.h.b bVar) {
        super.a(bVar);
        a((com.facebook.imagepipeline.h.b) null);
    }

    private void a(@Nullable com.facebook.imagepipeline.h.b bVar) {
        q qVarA;
        t tVarB = null;
        if (this.h) {
            Drawable drawableJ = j();
            if (drawableJ == null) {
                drawableJ = new com.facebook.drawee.d.a();
                b(drawableJ);
            }
            if (drawableJ instanceof com.facebook.drawee.d.a) {
                com.facebook.drawee.d.a aVar = (com.facebook.drawee.d.a) drawableJ;
                aVar.a(e());
                com.facebook.drawee.h.b bVarI = i();
                if (bVarI != null && (qVarA = r.a(bVarI.a())) != null) {
                    tVarB = qVarA.b();
                }
                aVar.a(tVarB);
                if (bVar != null) {
                    aVar.a(bVar.f(), bVar.g());
                    aVar.a(bVar.a());
                } else {
                    aVar.a();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.c.a
    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public com.facebook.imagepipeline.h.e c(com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar) {
        k.b(com.facebook.d.h.a.a((com.facebook.d.h.a<?>) aVar));
        return aVar.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.c.a
    /* JADX INFO: renamed from: c, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public int b(@Nullable com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar) {
        if (aVar != null) {
            return aVar.f();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.c.a
    /* JADX INFO: renamed from: d, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(@Nullable com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVar) {
        com.facebook.d.h.a.c(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.facebook.drawee.c.a
    protected void a(@Nullable Drawable drawable) {
        if (drawable instanceof com.facebook.f.a.a) {
            ((com.facebook.f.a.a) drawable).a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.drawee.c.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.facebook.d.h.a<com.facebook.imagepipeline.h.b> c() {
        if (this.f2011e == null || this.f2012f == null) {
            return null;
        }
        com.facebook.d.h.a<com.facebook.imagepipeline.h.b> aVarA = this.f2011e.a(this.f2012f);
        if (aVarA == null || aVarA.a().c().c()) {
            return aVarA;
        }
        aVarA.close();
        return null;
    }

    @Override // com.facebook.drawee.c.a
    public String toString() {
        return com.facebook.d.d.g.a(this).a("super", super.toString()).a("dataSourceSupplier", this.f2013g).toString();
    }
}
