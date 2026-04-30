package com.k.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import java.io.IOException;

/* JADX INFO: compiled from: AssetRequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class c extends bb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f3536a = "file:///android_asset/".length();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AssetManager f3537b;

    public c(Context context) {
        this.f3537b = context.getAssets();
    }

    @Override // com.k.a.bb
    public boolean a(ax axVar) {
        Uri uri = axVar.f3490d;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // com.k.a.bb
    public bc a(ax axVar, int i) throws IOException {
        return new bc(this.f3537b.open(b(axVar)), aq.DISK);
    }

    static String b(ax axVar) {
        return axVar.f3490d.toString().substring(f3536a);
    }
}
