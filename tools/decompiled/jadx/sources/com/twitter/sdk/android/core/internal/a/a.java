package com.twitter.sdk.android.core.internal.a;

import com.twitter.sdk.android.core.g;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import d.al;
import d.am;
import d.ax;
import d.ay;
import d.bd;
import java.io.IOException;

/* JADX INFO: compiled from: GuestAuthInterceptor.java */
/* JADX INFO: loaded from: classes3.dex */
public class a implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final g f3908a;

    public a(g gVar) {
        this.f3908a = gVar;
    }

    @Override // d.al
    public bd intercept(am amVar) throws IOException {
        ax axVarA = amVar.a();
        com.twitter.sdk.android.core.e eVarA = this.f3908a.a();
        GuestAuthToken guestAuthTokenA = eVarA == null ? null : eVarA.a();
        if (guestAuthTokenA != null) {
            ay ayVarE = axVarA.e();
            a(ayVarE, guestAuthTokenA);
            return amVar.a(ayVarE.b());
        }
        return amVar.a(axVarA);
    }

    static void a(ay ayVar, GuestAuthToken guestAuthToken) {
        ayVar.a("Authorization", guestAuthToken.c() + " " + guestAuthToken.d());
        ayVar.a("x-guest-token", guestAuthToken.a());
    }
}
