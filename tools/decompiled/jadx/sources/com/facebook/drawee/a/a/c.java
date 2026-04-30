package com.facebook.drawee.a.a;

import android.content.Context;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.e.o;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Fresco.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static h f2005b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f2004a = c.class;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile boolean f2006c = false;

    private c() {
    }

    public static void a(Context context) {
        a(context, null, null);
    }

    public static void a(Context context, @Nullable com.facebook.imagepipeline.e.h hVar, @Nullable b bVar) {
        if (f2006c) {
            com.facebook.d.e.a.c(f2004a, "Fresco has already been initialized! `Fresco.initialize(...)` should only be called 1 single time to avoid memory leaks!");
        } else {
            f2006c = true;
        }
        Context applicationContext = context.getApplicationContext();
        if (hVar == null) {
            o.a(applicationContext);
        } else {
            o.a(hVar);
        }
        a(applicationContext, bVar);
    }

    private static void a(Context context, @Nullable b bVar) {
        f2005b = new h(context, bVar);
        SimpleDraweeView.a(f2005b);
    }

    public static f a() {
        return f2005b.b();
    }
}
