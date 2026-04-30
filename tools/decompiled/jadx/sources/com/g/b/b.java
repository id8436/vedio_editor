package com.g.b;

/* JADX INFO: compiled from: IntProperty.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b<T> extends c<T, Integer> {
    public b(String str) {
        super(Integer.class, str);
    }

    @Override // com.g.b.c
    public final void a(T t, Integer num) {
        a((Object) t, Integer.valueOf(num.intValue()));
    }
}
