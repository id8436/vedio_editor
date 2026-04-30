package com.b.a.d.b.b;

import android.content.Context;
import java.io.File;

/* JADX INFO: compiled from: InternalCacheDiskCacheFactory.java */
/* JADX INFO: loaded from: classes2.dex */
class m implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f834b;

    m(Context context, String str) {
        this.f833a = context;
        this.f834b = str;
    }

    @Override // com.b.a.d.b.b.j
    public File a() {
        File cacheDir = this.f833a.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        return this.f834b != null ? new File(cacheDir, this.f834b) : cacheDir;
    }
}
