package com.b.a.d.a;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;

/* JADX INFO: compiled from: AssetPathFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f765a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AssetManager f766b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private T f767c;

    protected abstract T a(AssetManager assetManager, String str) throws IOException;

    protected abstract void a(T t) throws IOException;

    public a(AssetManager assetManager, String str) {
        this.f766b = assetManager;
        this.f765a = str;
    }

    @Override // com.b.a.d.a.c
    public T a(com.b.a.k kVar) throws Exception {
        this.f767c = a(this.f766b, this.f765a);
        return this.f767c;
    }

    @Override // com.b.a.d.a.c
    public void a() {
        if (this.f767c != null) {
            try {
                a(this.f767c);
            } catch (IOException e2) {
                if (Log.isLoggable("AssetUriFetcher", 2)) {
                    Log.v("AssetUriFetcher", "Failed to close data", e2);
                }
            }
        }
    }

    @Override // com.b.a.d.a.c
    public String b() {
        return this.f765a;
    }

    @Override // com.b.a.d.a.c
    public void c() {
    }
}
