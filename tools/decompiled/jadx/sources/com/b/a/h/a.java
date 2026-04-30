package com.b.a.h;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.b.a.d.b.i;
import com.b.a.d.b.z;
import com.b.a.h.b.h;
import com.b.a.k;
import java.util.Queue;

/* JADX INFO: compiled from: GenericRequest.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a<A, T, Z, R> implements h, c, f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Queue<a<?, ?, ?, ?>> f1166a = com.b.a.j.h.a(0);
    private z<?> A;
    private i B;
    private long C;
    private b D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1167b = String.valueOf(hashCode());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.b.a.d.c f1168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f1169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1170e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1171f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1172g;
    private Context h;
    private com.b.a.d.g<Z> i;
    private com.b.a.g.f<A, T, Z, R> j;
    private d k;
    private A l;
    private Class<R> m;
    private boolean n;
    private k o;
    private com.b.a.h.b.k<R> p;
    private e<? super A, R> q;
    private float r;
    private com.b.a.d.b.f s;
    private com.b.a.h.a.f<R> t;
    private int u;
    private int v;
    private com.b.a.d.b.e w;
    private Drawable x;
    private Drawable y;
    private boolean z;

    public static <A, T, Z, R> a<A, T, Z, R> a(com.b.a.g.f<A, T, Z, R> fVar, A a2, com.b.a.d.c cVar, Context context, k kVar, com.b.a.h.b.k<R> kVar2, float f2, Drawable drawable, int i, Drawable drawable2, int i2, Drawable drawable3, int i3, e<? super A, R> eVar, d dVar, com.b.a.d.b.f fVar2, com.b.a.d.g<Z> gVar, Class<R> cls, boolean z, com.b.a.h.a.f<R> fVar3, int i4, int i5, com.b.a.d.b.e eVar2) {
        a<A, T, Z, R> aVar = (a) f1166a.poll();
        if (aVar == null) {
            aVar = new a<>();
        }
        aVar.b(fVar, a2, cVar, context, kVar, kVar2, f2, drawable, i, drawable2, i2, drawable3, i3, eVar, dVar, fVar2, gVar, cls, z, fVar3, i4, i5, eVar2);
        return aVar;
    }

    private a() {
    }

    @Override // com.b.a.h.c
    public void a() {
        this.j = null;
        this.l = null;
        this.h = null;
        this.p = null;
        this.x = null;
        this.y = null;
        this.f1169d = null;
        this.q = null;
        this.k = null;
        this.i = null;
        this.t = null;
        this.z = false;
        this.B = null;
        f1166a.offer(this);
    }

    private void b(com.b.a.g.f<A, T, Z, R> fVar, A a2, com.b.a.d.c cVar, Context context, k kVar, com.b.a.h.b.k<R> kVar2, float f2, Drawable drawable, int i, Drawable drawable2, int i2, Drawable drawable3, int i3, e<? super A, R> eVar, d dVar, com.b.a.d.b.f fVar2, com.b.a.d.g<Z> gVar, Class<R> cls, boolean z, com.b.a.h.a.f<R> fVar3, int i4, int i5, com.b.a.d.b.e eVar2) {
        this.j = fVar;
        this.l = a2;
        this.f1168c = cVar;
        this.f1169d = drawable3;
        this.f1170e = i3;
        this.h = context.getApplicationContext();
        this.o = kVar;
        this.p = kVar2;
        this.r = f2;
        this.x = drawable;
        this.f1171f = i;
        this.y = drawable2;
        this.f1172g = i2;
        this.q = eVar;
        this.k = dVar;
        this.s = fVar2;
        this.i = gVar;
        this.m = cls;
        this.n = z;
        this.t = fVar3;
        this.u = i4;
        this.v = i5;
        this.w = eVar2;
        this.D = b.PENDING;
        if (a2 != null) {
            a("ModelLoader", fVar.e(), "try .using(ModelLoader)");
            a("Transcoder", fVar.f(), "try .as*(Class).transcode(ResourceTranscoder)");
            a("Transformation", gVar, "try .transform(UnitTransformation.get())");
            if (eVar2.a()) {
                a("SourceEncoder", fVar.c(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
            } else {
                a("SourceDecoder", fVar.b(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
            }
            if (eVar2.a() || eVar2.b()) {
                a("CacheDecoder", fVar.a(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
            }
            if (eVar2.b()) {
                a("Encoder", fVar.d(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
            }
        }
    }

    private static void a(String str, Object obj, String str2) {
        if (obj == null) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(" must not be null");
            if (str2 != null) {
                sb.append(", ");
                sb.append(str2);
            }
            throw new NullPointerException(sb.toString());
        }
    }

    @Override // com.b.a.h.c
    public void b() {
        this.C = com.b.a.j.d.a();
        if (this.l == null) {
            a((Exception) null);
            return;
        }
        this.D = b.WAITING_FOR_SIZE;
        if (com.b.a.j.h.a(this.u, this.v)) {
            a(this.u, this.v);
        } else {
            this.p.getSize(this);
        }
        if (!g() && !j() && o()) {
            this.p.onLoadStarted(m());
        }
        if (Log.isLoggable("GenericRequest", 2)) {
            a("finished run method in " + com.b.a.j.d.a(this.C));
        }
    }

    void c() {
        this.D = b.CANCELLED;
        if (this.B != null) {
            this.B.a();
            this.B = null;
        }
    }

    @Override // com.b.a.h.c
    public void d() {
        com.b.a.j.h.a();
        if (this.D != b.CLEARED) {
            c();
            if (this.A != null) {
                b(this.A);
            }
            if (o()) {
                this.p.onLoadCleared(m());
            }
            this.D = b.CLEARED;
        }
    }

    @Override // com.b.a.h.c
    public void e() {
        d();
        this.D = b.PAUSED;
    }

    private void b(z zVar) {
        this.s.a(zVar);
        this.A = null;
    }

    @Override // com.b.a.h.c
    public boolean f() {
        return this.D == b.RUNNING || this.D == b.WAITING_FOR_SIZE;
    }

    @Override // com.b.a.h.c
    public boolean g() {
        return this.D == b.COMPLETE;
    }

    @Override // com.b.a.h.c
    public boolean h() {
        return g();
    }

    @Override // com.b.a.h.c
    public boolean i() {
        return this.D == b.CANCELLED || this.D == b.CLEARED;
    }

    public boolean j() {
        return this.D == b.FAILED;
    }

    private Drawable k() {
        if (this.f1169d == null && this.f1170e > 0) {
            this.f1169d = this.h.getResources().getDrawable(this.f1170e);
        }
        return this.f1169d;
    }

    private void b(Exception exc) {
        if (o()) {
            Drawable drawableK = this.l == null ? k() : null;
            if (drawableK == null) {
                drawableK = l();
            }
            if (drawableK == null) {
                drawableK = m();
            }
            this.p.onLoadFailed(exc, drawableK);
        }
    }

    private Drawable l() {
        if (this.y == null && this.f1172g > 0) {
            this.y = this.h.getResources().getDrawable(this.f1172g);
        }
        return this.y;
    }

    private Drawable m() {
        if (this.x == null && this.f1171f > 0) {
            this.x = this.h.getResources().getDrawable(this.f1171f);
        }
        return this.x;
    }

    @Override // com.b.a.h.b.h
    public void a(int i, int i2) {
        if (Log.isLoggable("GenericRequest", 2)) {
            a("Got onSizeReady in " + com.b.a.j.d.a(this.C));
        }
        if (this.D == b.WAITING_FOR_SIZE) {
            this.D = b.RUNNING;
            int iRound = Math.round(this.r * i);
            int iRound2 = Math.round(this.r * i2);
            com.b.a.d.a.c<T> cVarA = this.j.e().a(this.l, iRound, iRound2);
            if (cVarA == null) {
                a(new Exception("Failed to load model: '" + this.l + "'"));
                return;
            }
            com.b.a.d.d.f.c<Z, R> cVarF = this.j.f();
            if (Log.isLoggable("GenericRequest", 2)) {
                a("finished setup for calling load in " + com.b.a.j.d.a(this.C));
            }
            this.z = true;
            this.B = this.s.a(this.f1168c, iRound, iRound2, cVarA, this.j, this.i, cVarF, this.o, this.n, this.w, this);
            this.z = this.A != null;
            if (Log.isLoggable("GenericRequest", 2)) {
                a("finished onSizeReady in " + com.b.a.j.d.a(this.C));
            }
        }
    }

    private boolean n() {
        return this.k == null || this.k.a(this);
    }

    private boolean o() {
        return this.k == null || this.k.b(this);
    }

    private boolean p() {
        return this.k == null || !this.k.c();
    }

    private void q() {
        if (this.k != null) {
            this.k.c(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.b.a.h.f
    public void a(z<?> zVar) {
        if (zVar == null) {
            a(new Exception("Expected to receive a Resource<R> with an object of " + this.m + " inside, but instead got null."));
            return;
        }
        Object objB = zVar.b();
        if (objB == null || !this.m.isAssignableFrom(objB.getClass())) {
            b(zVar);
            a(new Exception("Expected to receive an object of " + this.m + " but instead got " + (objB != null ? objB.getClass() : "") + "{" + objB + "} inside Resource{" + zVar + "}." + (objB != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.")));
        } else if (!n()) {
            b(zVar);
            this.D = b.COMPLETE;
        } else {
            a(zVar, objB);
        }
    }

    private void a(z<?> zVar, R r) {
        boolean zP = p();
        this.D = b.COMPLETE;
        this.A = zVar;
        if (this.q == null || !this.q.a(r, this.l, this.p, this.z, zP)) {
            this.p.onResourceReady(r, this.t.a(this.z, zP));
        }
        q();
        if (Log.isLoggable("GenericRequest", 2)) {
            a("Resource ready in " + com.b.a.j.d.a(this.C) + " size: " + (((double) zVar.c()) * 9.5367431640625E-7d) + " fromCache: " + this.z);
        }
    }

    @Override // com.b.a.h.f
    public void a(Exception exc) {
        if (Log.isLoggable("GenericRequest", 3)) {
            Log.d("GenericRequest", "load failed", exc);
        }
        this.D = b.FAILED;
        if (this.q == null || !this.q.a(exc, this.l, this.p, p())) {
            b(exc);
        }
    }

    private void a(String str) {
        Log.v("GenericRequest", str + " this: " + this.f1167b);
    }
}
