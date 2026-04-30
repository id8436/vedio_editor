package com.i.a.b.e;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import com.i.a.b.a.f;
import com.i.a.b.a.i;

/* JADX INFO: compiled from: NonViewAware.java */
/* JADX INFO: loaded from: classes3.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f3326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final f f3327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final i f3328c;

    public c(String str, f fVar, i iVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("imageSize must not be null");
        }
        if (iVar == null) {
            throw new IllegalArgumentException("scaleType must not be null");
        }
        this.f3326a = str;
        this.f3327b = fVar;
        this.f3328c = iVar;
    }

    @Override // com.i.a.b.e.a
    public int a() {
        return this.f3327b.a();
    }

    @Override // com.i.a.b.e.a
    public int b() {
        return this.f3327b.b();
    }

    @Override // com.i.a.b.e.a
    public i c() {
        return this.f3328c;
    }

    @Override // com.i.a.b.e.a
    public View d() {
        return null;
    }

    @Override // com.i.a.b.e.a
    public boolean e() {
        return false;
    }

    @Override // com.i.a.b.e.a
    public int f() {
        return TextUtils.isEmpty(this.f3326a) ? super.hashCode() : this.f3326a.hashCode();
    }

    @Override // com.i.a.b.e.a
    public boolean a(Drawable drawable) {
        return true;
    }

    @Override // com.i.a.b.e.a
    public boolean a(Bitmap bitmap) {
        return true;
    }
}
