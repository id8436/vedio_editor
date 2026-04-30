package com.facebook.imagepipeline.a.a;

import com.facebook.imagepipeline.b.f;
import com.facebook.imagepipeline.e.e;

/* JADX INFO: compiled from: AnimatedFactoryProvider.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f2383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f2384b = null;

    public static b a(f fVar, e eVar) {
        if (!f2383a) {
            try {
                f2384b = (b) Class.forName("com.facebook.imagepipeline.animated.factory.AnimatedFactoryImplSupport").getConstructor(f.class, e.class).newInstance(fVar, eVar);
            } catch (Throwable th) {
            }
            if (f2384b != null) {
                f2383a = true;
                return f2384b;
            }
            try {
                f2384b = (b) Class.forName("com.facebook.imagepipeline.animated.factory.AnimatedFactoryImpl").getConstructor(f.class, e.class).newInstance(fVar, eVar);
            } catch (Throwable th2) {
            }
            f2383a = true;
        }
        return f2384b;
    }
}
