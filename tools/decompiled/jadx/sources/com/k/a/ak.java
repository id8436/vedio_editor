package com.k.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import com.google.gdata.data.gtt.CompletedCategory;
import java.io.File;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: Picasso.java */
/* JADX INFO: loaded from: classes3.dex */
public class ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Handler f3451a = new al(Looper.getMainLooper());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile ak f3452b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f3453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final r f3454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final k f3455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final be f3456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final Map<Object, a> f3457g;
    final Map<ImageView, q> h;
    final ReferenceQueue<Object> i;
    final Bitmap.Config j;
    boolean k;
    volatile boolean l;
    boolean m;
    private final ap n;
    private final as o;
    private final an p;
    private final List<bb> q;

    ak(Context context, r rVar, k kVar, ap apVar, as asVar, List<bb> list, be beVar, Bitmap.Config config, boolean z, boolean z2) {
        this.f3453c = context;
        this.f3454d = rVar;
        this.f3455e = kVar;
        this.n = apVar;
        this.o = asVar;
        this.j = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new bd(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new n(context));
        arrayList.add(new ad(context));
        arrayList.add(new p(context));
        arrayList.add(new c(context));
        arrayList.add(new z(context));
        arrayList.add(new ah(rVar.f3560d, beVar));
        this.q = Collections.unmodifiableList(arrayList);
        this.f3456f = beVar;
        this.f3457g = new WeakHashMap();
        this.h = new WeakHashMap();
        this.k = z;
        this.l = z2;
        this.i = new ReferenceQueue<>();
        this.p = new an(this.i, f3451a);
        this.p.start();
    }

    public void a(ImageView imageView) {
        a((Object) imageView);
    }

    public ba a(Uri uri) {
        return new ba(this, uri, 0);
    }

    public ba a(String str) {
        if (str == null) {
            return new ba(this, null, 0);
        }
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("Path must not be empty.");
        }
        return a(Uri.parse(str));
    }

    public ba a(File file) {
        return file == null ? new ba(this, null, 0) : a(Uri.fromFile(file));
    }

    public ba a(int i) {
        if (i == 0) {
            throw new IllegalArgumentException("Resource ID must not be zero.");
        }
        return new ba(this, null, i);
    }

    List<bb> a() {
        return this.q;
    }

    ax a(ax axVar) {
        ax axVarA = this.o.a(axVar);
        if (axVarA == null) {
            throw new IllegalStateException("Request transformer " + this.o.getClass().getCanonicalName() + " returned null for " + axVar);
        }
        return axVarA;
    }

    void a(ImageView imageView, q qVar) {
        this.h.put(imageView, qVar);
    }

    void a(a aVar) {
        Object objD = aVar.d();
        if (objD != null && this.f3457g.get(objD) != aVar) {
            a(objD);
            this.f3457g.put(objD, aVar);
        }
        b(aVar);
    }

    void b(a aVar) {
        this.f3454d.a(aVar);
    }

    Bitmap b(String str) {
        Bitmap bitmapA = this.f3455e.a(str);
        if (bitmapA != null) {
            this.f3456f.a();
        } else {
            this.f3456f.b();
        }
        return bitmapA;
    }

    void a(d dVar) {
        boolean z = true;
        a aVarI = dVar.i();
        List<a> listK = dVar.k();
        boolean z2 = (listK == null || listK.isEmpty()) ? false : true;
        if (aVarI == null && !z2) {
            z = false;
        }
        if (z) {
            Uri uri = dVar.h().f3490d;
            Exception excL = dVar.l();
            Bitmap bitmapE = dVar.e();
            aq aqVarM = dVar.m();
            if (aVarI != null) {
                a(bitmapE, aqVarM, aVarI);
            }
            if (z2) {
                int size = listK.size();
                for (int i = 0; i < size; i++) {
                    a(bitmapE, aqVarM, listK.get(i));
                }
            }
            if (this.n != null && excL != null) {
                this.n.a(this, uri, excL);
            }
        }
    }

    void c(a aVar) {
        Bitmap bitmapB = null;
        if (af.a(aVar.f3417e)) {
            bitmapB = b(aVar.e());
        }
        if (bitmapB != null) {
            a(bitmapB, aq.MEMORY, aVar);
            if (this.l) {
                bm.a("Main", CompletedCategory.Label.COMPLETED, aVar.f3414b.a(), "from " + aq.MEMORY);
                return;
            }
            return;
        }
        a(aVar);
        if (this.l) {
            bm.a("Main", "resumed", aVar.f3414b.a());
        }
    }

    private void a(Bitmap bitmap, aq aqVar, a aVar) {
        if (!aVar.f()) {
            if (!aVar.g()) {
                this.f3457g.remove(aVar.d());
            }
            if (bitmap != null) {
                if (aqVar == null) {
                    throw new AssertionError("LoadedFrom cannot be null.");
                }
                aVar.a(bitmap, aqVar);
                if (this.l) {
                    bm.a("Main", CompletedCategory.Label.COMPLETED, aVar.f3414b.a(), "from " + aqVar);
                    return;
                }
                return;
            }
            aVar.a();
            if (this.l) {
                bm.a("Main", "errored", aVar.f3414b.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        bm.a();
        a aVarRemove = this.f3457g.remove(obj);
        if (aVarRemove != null) {
            aVarRemove.b();
            this.f3454d.b(aVarRemove);
        }
        if (obj instanceof ImageView) {
            q qVarRemove = this.h.remove((ImageView) obj);
            if (qVarRemove != null) {
                qVarRemove.a();
            }
        }
    }

    public static ak a(Context context) {
        if (f3452b == null) {
            synchronized (ak.class) {
                if (f3452b == null) {
                    f3452b = new am(context).a();
                }
            }
        }
        return f3452b;
    }
}
