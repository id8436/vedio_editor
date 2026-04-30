package com.b.a.d.d;

import java.io.OutputStream;

/* JADX INFO: compiled from: NullEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class a<T> implements com.b.a.d.b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final a<?> f960a = new a<>();

    public static <T> com.b.a.d.b<T> b() {
        return f960a;
    }

    @Override // com.b.a.d.b
    public boolean a(T t, OutputStream outputStream) {
        return false;
    }

    @Override // com.b.a.d.b
    public String a() {
        return "";
    }
}
