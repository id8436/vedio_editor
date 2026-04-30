package com.facebook.drawee.c;

import android.content.Context;
import com.facebook.d.d.m;
import com.facebook.drawee.c.d;
import com.facebook.e.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: AbstractDraweeControllerBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<BUILDER extends d<BUILDER, REQUEST, IMAGE, INFO>, REQUEST, IMAGE, INFO> implements com.facebook.drawee.h.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final i<Object> f2057a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final NullPointerException f2058b = new NullPointerException("No image request was specified!");
    private static final AtomicLong r = new AtomicLong();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f2059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<i> f2060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private Object f2061e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private REQUEST f2062f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private REQUEST f2063g;

    @Nullable
    private REQUEST[] h;
    private boolean i;

    @Nullable
    private m<com.facebook.e.f<IMAGE>> j;

    @Nullable
    private i<? super INFO> k;

    @Nullable
    private j l;
    private boolean m;
    private boolean n;
    private boolean o;
    private String p;

    @Nullable
    private com.facebook.drawee.h.a q;

    protected abstract com.facebook.e.f<IMAGE> a(REQUEST request, Object obj, g gVar);

    protected abstract BUILDER c();

    protected abstract a d();

    protected d(Context context, Set<i> set) {
        this.f2059c = context;
        this.f2060d = set;
        a();
    }

    private void a() {
        this.f2061e = null;
        this.f2062f = null;
        this.f2063g = null;
        this.h = null;
        this.i = true;
        this.k = null;
        this.l = null;
        this.m = false;
        this.n = false;
        this.q = null;
        this.p = null;
    }

    @Override // com.facebook.drawee.h.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public BUILDER e(Object obj) {
        this.f2061e = obj;
        return (BUILDER) c();
    }

    @Nullable
    public Object e() {
        return this.f2061e;
    }

    public BUILDER b(REQUEST request) {
        this.f2062f = request;
        return (BUILDER) c();
    }

    @Nullable
    public REQUEST f() {
        return this.f2062f;
    }

    public BUILDER c(REQUEST request) {
        this.f2063g = request;
        return (BUILDER) c();
    }

    public boolean g() {
        return this.o;
    }

    public BUILDER a(boolean z) {
        this.n = z;
        return (BUILDER) c();
    }

    @Nullable
    public j h() {
        return this.l;
    }

    @Nullable
    public String i() {
        return this.p;
    }

    @Override // com.facebook.drawee.h.d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public BUILDER b(@Nullable com.facebook.drawee.h.a aVar) {
        this.q = aVar;
        return (BUILDER) c();
    }

    @Nullable
    public com.facebook.drawee.h.a j() {
        return this.q;
    }

    @Override // com.facebook.drawee.h.d
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public a p() {
        l();
        if (this.f2062f == null && this.h == null && this.f2063g != null) {
            this.f2062f = this.f2063g;
            this.f2063g = null;
        }
        return m();
    }

    protected void l() {
        boolean z = false;
        com.facebook.d.d.k.b(this.h == null || this.f2062f == null, "Cannot specify both ImageRequest and FirstAvailableImageRequests!");
        if (this.j == null || (this.h == null && this.f2062f == null && this.f2063g == null)) {
            z = true;
        }
        com.facebook.d.d.k.b(z, "Cannot specify DataSourceSupplier with other ImageRequests! Use one or the other.");
    }

    protected a m() {
        a aVarD = d();
        aVarD.b(g());
        aVarD.a(i());
        aVarD.a(h());
        b(aVarD);
        a(aVarD);
        return aVarD;
    }

    protected static String n() {
        return String.valueOf(r.getAndIncrement());
    }

    protected m<com.facebook.e.f<IMAGE>> o() {
        if (this.j != null) {
            return this.j;
        }
        m<com.facebook.e.f<IMAGE>> mVarA = null;
        if (this.f2062f != null) {
            mVarA = d(this.f2062f);
        } else if (this.h != null) {
            mVarA = a(this.h, this.i);
        }
        if (mVarA != null && this.f2063g != null) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(mVarA);
            arrayList.add(d(this.f2063g));
            mVarA = n.a(arrayList);
        }
        if (mVarA == null) {
            return com.facebook.e.g.b(f2058b);
        }
        return mVarA;
    }

    protected m<com.facebook.e.f<IMAGE>> a(REQUEST[] requestArr, boolean z) {
        ArrayList arrayList = new ArrayList(requestArr.length * 2);
        if (z) {
            for (REQUEST request : requestArr) {
                arrayList.add(a(request, g.BITMAP_MEMORY_CACHE));
            }
        }
        for (REQUEST request2 : requestArr) {
            arrayList.add(d(request2));
        }
        return com.facebook.e.j.a(arrayList);
    }

    protected m<com.facebook.e.f<IMAGE>> d(REQUEST request) {
        return a(request, g.FULL_FETCH);
    }

    protected m<com.facebook.e.f<IMAGE>> a(REQUEST request, g gVar) {
        return new f(this, request, e(), gVar);
    }

    protected void a(a aVar) {
        if (this.f2060d != null) {
            Iterator<i> it = this.f2060d.iterator();
            while (it.hasNext()) {
                aVar.a(it.next());
            }
        }
        if (this.k != null) {
            aVar.a((i) this.k);
        }
        if (this.n) {
            aVar.a((i) f2057a);
        }
    }

    protected void b(a aVar) {
        if (this.m) {
            com.facebook.drawee.b.f fVarF = aVar.f();
            if (fVarF == null) {
                fVarF = new com.facebook.drawee.b.f();
                aVar.a(fVarF);
            }
            fVarF.a(this.m);
            c(aVar);
        }
    }

    protected void c(a aVar) {
        if (aVar.g() == null) {
            aVar.a(com.facebook.drawee.g.a.a(this.f2059c));
        }
    }
}
