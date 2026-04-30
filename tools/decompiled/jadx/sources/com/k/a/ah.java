package com.k.a;

import android.graphics.Bitmap;
import android.net.NetworkInfo;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: NetworkRequestHandler.java */
/* JADX INFO: loaded from: classes3.dex */
class ah extends bb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final w f3448a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final be f3449b;

    public ah(w wVar, be beVar) {
        this.f3448a = wVar;
        this.f3449b = beVar;
    }

    @Override // com.k.a.bb
    public boolean a(ax axVar) {
        String scheme = axVar.f3490d.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // com.k.a.bb
    public bc a(ax axVar, int i) throws IOException {
        x xVarA = this.f3448a.a(axVar.f3490d, axVar.f3489c);
        if (xVarA == null) {
            return null;
        }
        aq aqVar = xVarA.f3570c ? aq.DISK : aq.NETWORK;
        Bitmap bitmapB = xVarA.b();
        if (bitmapB != null) {
            return new bc(bitmapB, aqVar);
        }
        InputStream inputStreamA = xVarA.a();
        if (inputStreamA == null) {
            return null;
        }
        if (aqVar == aq.DISK && xVarA.c() == 0) {
            bm.a(inputStreamA);
            throw new ai("Received response with 0 content-length header.");
        }
        if (aqVar == aq.NETWORK && xVarA.c() > 0) {
            this.f3449b.a(xVarA.c());
        }
        return new bc(inputStreamA, aqVar);
    }

    @Override // com.k.a.bb
    int a() {
        return 2;
    }

    @Override // com.k.a.bb
    boolean a(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // com.k.a.bb
    boolean b() {
        return true;
    }
}
