package com.b.a.d.d.b;

import android.graphics.drawable.Drawable;
import com.b.a.d.b.z;

/* JADX INFO: compiled from: DrawableResource.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T extends Drawable> implements z<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final T f1024a;

    public a(T t) {
        if (t == null) {
            throw new NullPointerException("Drawable must not be null!");
        }
        this.f1024a = t;
    }

    @Override // com.b.a.d.b.z
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final T b() {
        return (T) this.f1024a.getConstantState().newDrawable();
    }
}
