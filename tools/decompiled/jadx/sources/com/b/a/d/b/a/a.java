package com.b.a.d.b.a;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: AttributeStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f787a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g<b, Bitmap> f788b = new g<>();

    a() {
    }

    @Override // com.b.a.d.b.a.m
    public void a(Bitmap bitmap) {
        this.f788b.a(this.f787a.a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.b.a.d.b.a.m
    public Bitmap a(int i, int i2, Bitmap.Config config) {
        return this.f788b.a(this.f787a.a(i, i2, config));
    }

    @Override // com.b.a.d.b.a.m
    public Bitmap a() {
        return this.f788b.a();
    }

    @Override // com.b.a.d.b.a.m
    public String b(Bitmap bitmap) {
        return d(bitmap);
    }

    @Override // com.b.a.d.b.a.m
    public String b(int i, int i2, Bitmap.Config config) {
        return d(i, i2, config);
    }

    @Override // com.b.a.d.b.a.m
    public int c(Bitmap bitmap) {
        return com.b.a.j.h.a(bitmap);
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f788b;
    }

    private static String d(Bitmap bitmap) {
        return d(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }
}
