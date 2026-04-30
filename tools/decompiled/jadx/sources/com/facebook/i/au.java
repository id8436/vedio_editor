package com.facebook.i;

/* JADX INFO: compiled from: Utility.java */
/* JADX INFO: loaded from: classes2.dex */
final class au implements com.facebook.ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ay f2317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f2318b;

    au(ay ayVar, String str) {
        this.f2317a = ayVar;
        this.f2318b = str;
    }

    @Override // com.facebook.ai
    public void a(com.facebook.as asVar) {
        if (asVar.a() != null) {
            this.f2317a.a(asVar.a().f());
        } else {
            aq.a(this.f2318b, asVar.b());
            this.f2317a.a(asVar.b());
        }
    }
}
