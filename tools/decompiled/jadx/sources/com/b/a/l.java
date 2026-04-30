package com.b.a;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.b.a.d.c.s;
import java.io.File;

/* JADX INFO: compiled from: RequestManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class l implements com.b.a.e.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.b.a.e.i f1245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.e.p f1246c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.e.q f1247d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h f1248e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final q f1249f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private n f1250g;

    public l(Context context, com.b.a.e.i iVar, com.b.a.e.p pVar) {
        this(context, iVar, pVar, new com.b.a.e.q(), new com.b.a.e.e());
    }

    l(Context context, com.b.a.e.i iVar, com.b.a.e.p pVar, com.b.a.e.q qVar, com.b.a.e.e eVar) {
        this.f1244a = context.getApplicationContext();
        this.f1245b = iVar;
        this.f1246c = pVar;
        this.f1247d = qVar;
        this.f1248e = h.a(context);
        this.f1249f = new q(this);
        com.b.a.e.c cVarA = eVar.a(context, new r(qVar));
        if (com.b.a.j.h.c()) {
            new Handler(Looper.getMainLooper()).post(new m(this, iVar));
        } else {
            iVar.a(this);
        }
        iVar.a(cVarA);
    }

    public void a(int i) {
        this.f1248e.a(i);
    }

    public void a() {
        this.f1248e.h();
    }

    public void b() {
        com.b.a.j.h.a();
        this.f1247d.a();
    }

    public void c() {
        com.b.a.j.h.a();
        this.f1247d.b();
    }

    @Override // com.b.a.e.j
    public void onStart() {
        c();
    }

    @Override // com.b.a.e.j
    public void onStop() {
        b();
    }

    @Override // com.b.a.e.j
    public void onDestroy() {
        this.f1247d.c();
    }

    public <A, T> o<A, T> a(s<A, T> sVar, Class<T> cls) {
        return new o<>(this, sVar, cls);
    }

    public d<String> a(String str) {
        return (d) d().b(str);
    }

    public d<String> d() {
        return a(String.class);
    }

    public d<Uri> a(Uri uri) {
        return (d) e().b(uri);
    }

    public d<Uri> e() {
        return a(Uri.class);
    }

    public d<File> a(File file) {
        return (d) f().b(file);
    }

    public d<File> f() {
        return a(File.class);
    }

    private <T> d<T> a(Class<T> cls) {
        s sVarA = h.a(cls, this.f1244a);
        s sVarB = h.b(cls, this.f1244a);
        if (cls != null && sVarA == null && sVarB == null) {
            throw new IllegalArgumentException("Unknown type " + cls + ". You must provide a Model of a type for which there is a registered ModelLoader, if you are using a custom model, you must first call Glide#register with a ModelLoaderFactory for your custom model class");
        }
        return (d) this.f1249f.a(new d(cls, sVarA, sVarB, this.f1244a, this.f1248e, this.f1247d, this.f1245b, this.f1249f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> Class<T> b(T t) {
        if (t != null) {
            return (Class<T>) t.getClass();
        }
        return null;
    }
}
