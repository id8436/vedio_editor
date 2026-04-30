package com.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import com.b.a.d.c.s;
import com.b.a.d.c.t;
import com.b.a.d.d.a.u;
import com.b.a.d.d.a.x;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: Glide.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile h f1159a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f1160b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.d.c.c f1161c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.d.b.f f1162d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.b.a.d.b.a.e f1163e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.b.a.d.b.b.o f1164f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.b.a.d.a f1165g;
    private final com.b.a.d.d.a.e k;
    private final com.b.a.d.d.e.h l;
    private final com.b.a.d.d.a.l m;
    private final com.b.a.d.d.e.h n;
    private final com.b.a.d.b.d.a p;
    private final com.b.a.h.b.f h = new com.b.a.h.b.f();
    private final com.b.a.d.d.f.d i = new com.b.a.d.d.f.d();
    private final Handler o = new Handler(Looper.getMainLooper());
    private final com.b.a.g.c j = new com.b.a.g.c();

    public static h a(Context context) {
        if (f1159a == null) {
            synchronized (h.class) {
                if (f1159a == null) {
                    Context applicationContext = context.getApplicationContext();
                    j jVar = new j(applicationContext);
                    List<com.b.a.f.a> listC = c(applicationContext);
                    Iterator<com.b.a.f.a> it = listC.iterator();
                    while (it.hasNext()) {
                        it.next().a(applicationContext, jVar);
                    }
                    f1159a = jVar.a();
                    Iterator<com.b.a.f.a> it2 = listC.iterator();
                    while (it2.hasNext()) {
                        it2.next().a(applicationContext, f1159a);
                    }
                }
            }
        }
        return f1159a;
    }

    private static List<com.b.a.f.a> c(Context context) {
        return f1160b ? new com.b.a.f.b(context).a() : Collections.emptyList();
    }

    h(com.b.a.d.b.f fVar, com.b.a.d.b.b.o oVar, com.b.a.d.b.a.e eVar, Context context, com.b.a.d.a aVar) {
        this.f1162d = fVar;
        this.f1163e = eVar;
        this.f1164f = oVar;
        this.f1165g = aVar;
        this.f1161c = new com.b.a.d.c.c(context);
        this.p = new com.b.a.d.b.d.a(oVar, eVar, aVar);
        x xVar = new x(eVar, aVar);
        this.j.a(InputStream.class, Bitmap.class, xVar);
        com.b.a.d.d.a.j jVar = new com.b.a.d.d.a.j(eVar, aVar);
        this.j.a(ParcelFileDescriptor.class, Bitmap.class, jVar);
        u uVar = new u(xVar, jVar);
        this.j.a(com.b.a.d.c.j.class, Bitmap.class, uVar);
        com.b.a.d.d.d.d dVar = new com.b.a.d.d.d.d(context, eVar);
        this.j.a(InputStream.class, com.b.a.d.d.d.b.class, dVar);
        this.j.a(com.b.a.d.c.j.class, com.b.a.d.d.e.a.class, new com.b.a.d.d.e.i(uVar, dVar, eVar));
        this.j.a(InputStream.class, File.class, new com.b.a.d.d.c.e());
        a(File.class, ParcelFileDescriptor.class, new com.b.a.d.c.a.b());
        a(File.class, InputStream.class, new com.b.a.d.c.b.f());
        a(Integer.TYPE, ParcelFileDescriptor.class, new com.b.a.d.c.a.e());
        a(Integer.TYPE, InputStream.class, new com.b.a.d.c.b.i());
        a(Integer.class, ParcelFileDescriptor.class, new com.b.a.d.c.a.e());
        a(Integer.class, InputStream.class, new com.b.a.d.c.b.i());
        a(String.class, ParcelFileDescriptor.class, new com.b.a.d.c.a.g());
        a(String.class, InputStream.class, new com.b.a.d.c.b.k());
        a(Uri.class, ParcelFileDescriptor.class, new com.b.a.d.c.a.i());
        a(Uri.class, InputStream.class, new com.b.a.d.c.b.m());
        a(URL.class, InputStream.class, new com.b.a.d.c.b.o());
        a(com.b.a.d.c.e.class, InputStream.class, new com.b.a.d.c.b.b());
        a(byte[].class, InputStream.class, new com.b.a.d.c.b.d());
        this.i.a(Bitmap.class, com.b.a.d.d.a.m.class, new com.b.a.d.d.f.b(context.getResources(), eVar));
        this.i.a(com.b.a.d.d.e.a.class, com.b.a.d.d.b.b.class, new com.b.a.d.d.f.a(new com.b.a.d.d.f.b(context.getResources(), eVar)));
        this.k = new com.b.a.d.d.a.e(eVar);
        this.l = new com.b.a.d.d.e.h(eVar, this.k);
        this.m = new com.b.a.d.d.a.l(eVar);
        this.n = new com.b.a.d.d.e.h(eVar, this.m);
    }

    public com.b.a.d.b.a.e a() {
        return this.f1163e;
    }

    <Z, R> com.b.a.d.d.f.c<Z, R> a(Class<Z> cls, Class<R> cls2) {
        return this.i.a(cls, cls2);
    }

    <T, Z> com.b.a.g.b<T, Z> b(Class<T> cls, Class<Z> cls2) {
        return this.j.a(cls, cls2);
    }

    <R> com.b.a.h.b.k<R> a(ImageView imageView, Class<R> cls) {
        return this.h.a(imageView, cls);
    }

    com.b.a.d.b.f b() {
        return this.f1162d;
    }

    com.b.a.d.d.a.e c() {
        return this.k;
    }

    com.b.a.d.d.a.l d() {
        return this.m;
    }

    com.b.a.d.d.e.h e() {
        return this.l;
    }

    com.b.a.d.d.e.h f() {
        return this.n;
    }

    com.b.a.d.a g() {
        return this.f1165g;
    }

    private com.b.a.d.c.c i() {
        return this.f1161c;
    }

    public void h() {
        com.b.a.j.h.a();
        this.f1164f.a();
        this.f1163e.a();
    }

    public void a(int i) {
        com.b.a.j.h.a();
        this.f1164f.a(i);
        this.f1163e.a(i);
    }

    public static void a(com.b.a.h.b.k<?> kVar) {
        com.b.a.j.h.a();
        com.b.a.h.c request = kVar.getRequest();
        if (request != null) {
            request.d();
            kVar.setRequest(null);
        }
    }

    public static void a(View view) {
        a(new i(view));
    }

    public <T, Y> void a(Class<T> cls, Class<Y> cls2, t<T, Y> tVar) {
        t<T, Y> tVarA = this.f1161c.a(cls, cls2, tVar);
        if (tVarA != null) {
            tVarA.a();
        }
    }

    public static <T, Y> s<T, Y> a(Class<T> cls, Class<Y> cls2, Context context) {
        if (cls != null) {
            return a(context).i().a(cls, cls2);
        }
        if (Log.isLoggable("Glide", 3)) {
            Log.d("Glide", "Unable to load null model, setting placeholder only");
        }
        return null;
    }

    public static <T> s<T, InputStream> a(Class<T> cls, Context context) {
        return a(cls, InputStream.class, context);
    }

    public static <T> s<T, ParcelFileDescriptor> b(Class<T> cls, Context context) {
        return a(cls, ParcelFileDescriptor.class, context);
    }

    public static l b(Context context) {
        return com.b.a.e.o.a().a(context);
    }

    public static l a(FragmentActivity fragmentActivity) {
        return com.b.a.e.o.a().a(fragmentActivity);
    }
}
