package com.facebook.drawee.c;

import com.facebook.d.d.m;
import com.google.api.gbase.client.ServiceError;

/* JADX INFO: Add missing generic type declarations: [IMAGE] */
/* JADX INFO: compiled from: AbstractDraweeControllerBuilder.java */
/* JADX INFO: loaded from: classes2.dex */
class f<IMAGE> implements m<com.facebook.e.f<IMAGE>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Object f2064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Object f2065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ g f2066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ d f2067d;

    f(d dVar, Object obj, Object obj2, g gVar) {
        this.f2067d = dVar;
        this.f2064a = obj;
        this.f2065b = obj2;
        this.f2066c = gVar;
    }

    @Override // com.facebook.d.d.m
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.facebook.e.f<IMAGE> b() {
        return this.f2067d.a(this.f2064a, this.f2065b, this.f2066c);
    }

    public String toString() {
        return com.facebook.d.d.g.a(this).a(ServiceError.REQUEST_TYPE, this.f2064a.toString()).toString();
    }
}
