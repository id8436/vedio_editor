package com.b.a;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: compiled from: GenericRequestBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
public class e<ModelType, DataType, ResourceType, TranscodeType> implements Cloneable {
    private boolean A;
    private Drawable B;
    private int C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Class<ModelType> f1108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Context f1109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final h f1110c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Class<TranscodeType> f1111d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final com.b.a.e.q f1112e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected final com.b.a.e.i f1113f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.b.a.g.a<ModelType, DataType, ResourceType, TranscodeType> f1114g;
    private ModelType h;
    private com.b.a.d.c i;
    private boolean j;
    private int k;
    private int l;
    private com.b.a.h.e<? super ModelType, TranscodeType> m;
    private Float n;
    private e<?, ?, ?, TranscodeType> o;
    private Float p;
    private Drawable q;
    private Drawable r;
    private k s;
    private boolean t;
    private com.b.a.h.a.f<TranscodeType> u;
    private int v;
    private int w;
    private com.b.a.d.b.e x;
    private com.b.a.d.g<ResourceType> y;
    private boolean z;

    e(com.b.a.g.f<ModelType, DataType, ResourceType, TranscodeType> fVar, Class<TranscodeType> cls, e<ModelType, ?, ?, ?> eVar) {
        this(eVar.f1109b, eVar.f1108a, fVar, cls, eVar.f1110c, eVar.f1112e, eVar.f1113f);
        this.h = eVar.h;
        this.j = eVar.j;
        this.i = eVar.i;
        this.x = eVar.x;
        this.t = eVar.t;
    }

    e(Context context, Class<ModelType> cls, com.b.a.g.f<ModelType, DataType, ResourceType, TranscodeType> fVar, Class<TranscodeType> cls2, h hVar, com.b.a.e.q qVar, com.b.a.e.i iVar) {
        this.i = com.b.a.i.a.a();
        this.p = Float.valueOf(1.0f);
        this.s = null;
        this.t = true;
        this.u = com.b.a.h.a.g.a();
        this.v = -1;
        this.w = -1;
        this.x = com.b.a.d.b.e.RESULT;
        this.y = com.b.a.d.d.d.b();
        this.f1109b = context;
        this.f1108a = cls;
        this.f1111d = cls2;
        this.f1110c = hVar;
        this.f1112e = qVar;
        this.f1113f = iVar;
        this.f1114g = fVar != null ? new com.b.a.g.a<>(fVar) : null;
        if (context == null) {
            throw new NullPointerException("Context can't be null");
        }
        if (cls != null && fVar == null) {
            throw new NullPointerException("LoadProvider must not be null");
        }
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(com.b.a.d.e<DataType, ResourceType> eVar) {
        if (this.f1114g != null) {
            this.f1114g.a(eVar);
        }
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(com.b.a.d.b<DataType> bVar) {
        if (this.f1114g != null) {
            this.f1114g.a(bVar);
        }
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(com.b.a.d.b.e eVar) {
        this.x = eVar;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(com.b.a.d.g<ResourceType>... gVarArr) {
        this.z = true;
        if (gVarArr.length == 1) {
            this.y = gVarArr[0];
        } else {
            this.y = new com.b.a.d.d(gVarArr);
        }
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(com.b.a.h.a.f<TranscodeType> fVar) {
        if (fVar == null) {
            throw new NullPointerException("Animation factory must not be null!");
        }
        this.u = fVar;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(boolean z) {
        this.t = !z;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(int i, int i2) {
        if (!com.b.a.j.h.a(i, i2)) {
            throw new IllegalArgumentException("Width and height must be Target#SIZE_ORIGINAL or > 0");
        }
        this.w = i;
        this.v = i2;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(com.b.a.d.c cVar) {
        if (cVar == null) {
            throw new NullPointerException("Signature must not be null");
        }
        this.i = cVar;
        return this;
    }

    public e<ModelType, DataType, ResourceType, TranscodeType> b(ModelType modeltype) {
        this.h = modeltype;
        this.j = true;
        return this;
    }

    @Override // 
    public e<ModelType, DataType, ResourceType, TranscodeType> f() {
        try {
            e<ModelType, DataType, ResourceType, TranscodeType> eVar = (e) super.clone();
            eVar.f1114g = this.f1114g != null ? this.f1114g.clone() : null;
            return eVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public <Y extends com.b.a.h.b.k<TranscodeType>> Y a(Y y) {
        com.b.a.j.h.a();
        if (y == null) {
            throw new IllegalArgumentException("You must pass in a non null Target");
        }
        if (!this.j) {
            throw new IllegalArgumentException("You must first set a model (try #load())");
        }
        com.b.a.h.c request = y.getRequest();
        if (request != null) {
            request.d();
            this.f1112e.b(request);
            request.a();
        }
        com.b.a.h.c cVarB = b((com.b.a.h.b.k) y);
        y.setRequest(cVarB);
        this.f1113f.a(y);
        this.f1112e.a(cVarB);
        return y;
    }

    public com.b.a.h.b.k<TranscodeType> a(ImageView imageView) {
        com.b.a.j.h.a();
        if (imageView == null) {
            throw new IllegalArgumentException("You must pass in a non null View");
        }
        if (!this.z && imageView.getScaleType() != null) {
            switch (f.f1144a[imageView.getScaleType().ordinal()]) {
                case 1:
                    e();
                    break;
                case 2:
                case 3:
                case 4:
                    d();
                    break;
            }
        }
        return a(this.f1110c.a(imageView, this.f1111d));
    }

    void e() {
    }

    void d() {
    }

    private k a() {
        if (this.s == k.LOW) {
            return k.NORMAL;
        }
        if (this.s == k.NORMAL) {
            return k.HIGH;
        }
        return k.IMMEDIATE;
    }

    private com.b.a.h.c b(com.b.a.h.b.k<TranscodeType> kVar) {
        if (this.s == null) {
            this.s = k.NORMAL;
        }
        return a(kVar, null);
    }

    private com.b.a.h.c a(com.b.a.h.b.k<TranscodeType> kVar, com.b.a.h.g gVar) {
        if (this.o != null) {
            if (this.A) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            if (this.o.u.equals(com.b.a.h.a.g.a())) {
                this.o.u = this.u;
            }
            if (this.o.s == null) {
                this.o.s = a();
            }
            if (com.b.a.j.h.a(this.w, this.v) && !com.b.a.j.h.a(this.o.w, this.o.v)) {
                this.o.b(this.w, this.v);
            }
            com.b.a.h.g gVar2 = new com.b.a.h.g(gVar);
            com.b.a.h.c cVarA = a(kVar, this.p.floatValue(), this.s, gVar2);
            this.A = true;
            com.b.a.h.c cVarA2 = this.o.a(kVar, gVar2);
            this.A = false;
            gVar2.a(cVarA, cVarA2);
            return gVar2;
        }
        if (this.n != null) {
            com.b.a.h.g gVar3 = new com.b.a.h.g(gVar);
            gVar3.a(a(kVar, this.p.floatValue(), this.s, gVar3), a(kVar, this.n.floatValue(), a(), gVar3));
            return gVar3;
        }
        return a(kVar, this.p.floatValue(), this.s, gVar);
    }

    private com.b.a.h.c a(com.b.a.h.b.k<TranscodeType> kVar, float f2, k kVar2, com.b.a.h.d dVar) {
        return com.b.a.h.a.a(this.f1114g, this.h, this.i, this.f1109b, kVar2, kVar, f2, this.q, this.k, this.r, this.l, this.B, this.C, this.m, dVar, this.f1110c.b(), this.y, this.f1111d, this.t, this.u, this.w, this.v, this.x);
    }
}
