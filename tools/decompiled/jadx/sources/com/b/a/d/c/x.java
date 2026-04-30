package com.b.a.d.c;

import android.content.Context;
import android.net.Uri;

/* JADX INFO: compiled from: UriLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class x<T> implements s<Uri, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s<e, T> f956b;

    protected abstract com.b.a.d.a.c<T> a(Context context, Uri uri);

    protected abstract com.b.a.d.a.c<T> a(Context context, String str);

    public x(Context context, s<e, T> sVar) {
        this.f955a = context;
        this.f956b = sVar;
    }

    @Override // com.b.a.d.c.s
    public final com.b.a.d.a.c<T> a(Uri uri, int i, int i2) {
        String scheme = uri.getScheme();
        if (a(scheme)) {
            if (a.a(uri)) {
                return a(this.f955a, a.b(uri));
            }
            return a(this.f955a, uri);
        }
        if (this.f956b == null) {
            return null;
        }
        if (!"http".equals(scheme) && !"https".equals(scheme)) {
            return null;
        }
        return this.f956b.a(new e(uri.toString()), i, i2);
    }

    private static boolean a(String str) {
        return "file".equals(str) || "content".equals(str) || "android.resource".equals(str);
    }
}
