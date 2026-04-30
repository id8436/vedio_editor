package com.facebook;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Locale;

/* JADX INFO: compiled from: GraphRequest.java */
/* JADX INFO: loaded from: classes2.dex */
class ag implements ak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ArrayList f1759a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ GraphRequest f1760b;

    ag(GraphRequest graphRequest, ArrayList arrayList) {
        this.f1760b = graphRequest;
        this.f1759a = arrayList;
    }

    @Override // com.facebook.ak
    public void a(String str, String str2) throws IOException {
        this.f1759a.add(String.format(Locale.US, "%s=%s", str, URLEncoder.encode(str2, "UTF-8")));
    }
}
