package com.twitter.sdk.android.core.internal.a;

import com.twitter.sdk.android.core.g;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import d.ag;
import d.ax;
import d.ay;
import d.bd;
import d.bi;
import java.io.IOException;

/* JADX INFO: compiled from: GuestAuthenticator.java */
/* JADX INFO: loaded from: classes3.dex */
public class c implements d.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final g f3909a;

    public c(g gVar) {
        this.f3909a = gVar;
    }

    @Override // d.b
    public ax a(bi biVar, bd bdVar) throws IOException {
        return a(bdVar);
    }

    ax a(bd bdVar) {
        if (c(bdVar)) {
            com.twitter.sdk.android.core.e eVarA = this.f3909a.a(b(bdVar));
            GuestAuthToken guestAuthTokenA = eVarA == null ? null : eVarA.a();
            if (guestAuthTokenA != null) {
                return a(bdVar.a(), guestAuthTokenA);
            }
        }
        return null;
    }

    com.twitter.sdk.android.core.e b(bd bdVar) {
        ag agVarC = bdVar.a().c();
        String strA = agVarC.a("Authorization");
        String strA2 = agVarC.a("x-guest-token");
        if (strA == null || strA2 == null) {
            return null;
        }
        return new com.twitter.sdk.android.core.e(new GuestAuthToken("bearer", strA.replace("bearer ", ""), strA2));
    }

    ax a(ax axVar, GuestAuthToken guestAuthToken) {
        ay ayVarE = axVar.e();
        a.a(ayVarE, guestAuthToken);
        return ayVarE.b();
    }

    boolean c(bd bdVar) {
        int i = 1;
        while (true) {
            bdVar = bdVar.h();
            if (bdVar == null) {
                break;
            }
            i++;
        }
        return i < 2;
    }
}
