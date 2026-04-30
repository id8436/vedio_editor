package com.facebook;

/* JADX INFO: compiled from: GraphRequest.java */
/* JADX INFO: loaded from: classes2.dex */
final class ad implements ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ aj f1754a;

    ad(aj ajVar) {
        this.f1754a = ajVar;
    }

    @Override // com.facebook.ai
    public void a(as asVar) {
        if (this.f1754a != null) {
            this.f1754a.onCompleted(asVar.b(), asVar);
        }
    }
}
