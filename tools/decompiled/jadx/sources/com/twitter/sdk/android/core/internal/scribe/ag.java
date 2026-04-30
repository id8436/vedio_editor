package com.twitter.sdk.android.core.internal.scribe;

import android.text.TextUtils;
import d.ay;
import d.bd;
import java.io.IOException;

/* JADX INFO: compiled from: ScribeFilesSender.java */
/* JADX INFO: loaded from: classes3.dex */
class ag implements d.al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final aa f4013a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.twitter.sdk.android.core.internal.s f4014b;

    ag(aa aaVar, com.twitter.sdk.android.core.internal.s sVar) {
        this.f4013a = aaVar;
        this.f4014b = sVar;
    }

    @Override // d.al
    public bd intercept(d.am amVar) throws IOException {
        ay ayVarE = amVar.a().e();
        if (!TextUtils.isEmpty(this.f4013a.f4002f)) {
            ayVarE.a("User-Agent", this.f4013a.f4002f);
        }
        if (!TextUtils.isEmpty(this.f4014b.a())) {
            ayVarE.a("X-Client-UUID", this.f4014b.a());
        }
        ayVarE.a("X-Twitter-Polling", "true");
        return amVar.a(ayVarE.b());
    }
}
