package com.g.b;

/* JADX INFO: compiled from: FloatProperty.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> extends c<T, Float> {
    public abstract void a(T t, float f2);

    public a(String str) {
        super(Float.class, str);
    }

    @Override // com.g.b.c
    public final void a(T t, Float f2) {
        a(t, f2.floatValue());
    }
}
