package com.twitter.sdk.android.core.internal.a;

import d.al;
import d.am;
import d.bd;
import java.io.IOException;

/* JADX INFO: compiled from: GuestAuthNetworkInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
public class b implements al {
    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        bd bdVarA = amVar.a(amVar.a());
        if (bdVarA.b() == 403) {
            return bdVarA.g().a(401).a();
        }
        return bdVarA;
    }
}
