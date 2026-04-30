package com.facebook.a;

import com.facebook.GraphRequest;
import com.facebook.ai;
import com.facebook.as;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
final class g implements ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ h f1704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ GraphRequest f1705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ q f1706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ m f1707d;

    g(h hVar, GraphRequest graphRequest, q qVar, m mVar) {
        this.f1704a = hVar;
        this.f1705b = graphRequest;
        this.f1706c = qVar;
        this.f1707d = mVar;
    }

    @Override // com.facebook.ai
    public void a(as asVar) {
        a.b(this.f1704a, this.f1705b, asVar, this.f1706c, this.f1707d);
    }
}
