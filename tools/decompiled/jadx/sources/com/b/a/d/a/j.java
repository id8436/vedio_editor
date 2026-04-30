package com.b.a.d.a;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: compiled from: LocalUriFetcher.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Uri f776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private T f778c;

    protected abstract void a(T t) throws IOException;

    protected abstract T b(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    public j(Context context, Uri uri) {
        this.f777b = context.getApplicationContext();
        this.f776a = uri;
    }

    @Override // com.b.a.d.a.c
    public final T a(com.b.a.k kVar) throws Exception {
        this.f778c = b(this.f776a, this.f777b.getContentResolver());
        return this.f778c;
    }

    @Override // com.b.a.d.a.c
    public void a() {
        if (this.f778c != null) {
            try {
                a(this.f778c);
            } catch (IOException e2) {
                if (Log.isLoggable("LocalUriFetcher", 2)) {
                    Log.v("LocalUriFetcher", "failed to close data", e2);
                }
            }
        }
    }

    @Override // com.b.a.d.a.c
    public void c() {
    }

    @Override // com.b.a.d.a.c
    public String b() {
        return this.f776a.toString();
    }
}
