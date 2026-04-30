package com.twitter.sdk.android.core.internal.oauth;

import d.al;
import d.am;
import d.bd;
import java.io.IOException;

/* JADX INFO: compiled from: OAuthService.java */
/* JADX INFO: loaded from: classes3.dex */
class j implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f3969a;

    j(i iVar) {
        this.f3969a = iVar;
    }

    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        return amVar.a(amVar.a().e().a("User-Agent", this.f3969a.e()).b());
    }
}
