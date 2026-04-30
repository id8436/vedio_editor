package c.a.a.a.a.g;

import android.content.res.Resources;
import c.a.a.a.a.b.ai;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Locale;

/* JADX INFO: compiled from: AbstractAppSpiCall.java */
/* JADX INFO: loaded from: classes.dex */
abstract class a extends c.a.a.a.a.b.a {
    public a(c.a.a.a.q qVar, String str, String str2, c.a.a.a.a.e.m mVar, c.a.a.a.a.e.d dVar) {
        super(qVar, str, str2, mVar, dVar);
    }

    public boolean a(d dVar) {
        c.a.a.a.a.e.e eVarB = b(a(getHttpRequest(), dVar), dVar);
        c.a.a.a.f.h().a("Fabric", "Sending app info to " + getUrl());
        if (dVar.j != null) {
            c.a.a.a.f.h().a("Fabric", "App icon hash is " + dVar.j.f323a);
            c.a.a.a.f.h().a("Fabric", "App icon size is " + dVar.j.f325c + "x" + dVar.j.f326d);
        }
        int iB = eVarB.b();
        c.a.a.a.f.h().a("Fabric", ("POST".equals(eVarB.p()) ? "Create" : "Update") + " app request ID: " + eVarB.b(c.a.a.a.a.b.a.HEADER_REQUEST_ID));
        c.a.a.a.f.h().a("Fabric", "Result was " + iB);
        return ai.a(iB) == 0;
    }

    private c.a.a.a.a.e.e a(c.a.a.a.a.e.e eVar, d dVar) {
        return eVar.a(c.a.a.a.a.b.a.HEADER_API_KEY, dVar.f296a).a(c.a.a.a.a.b.a.HEADER_CLIENT_TYPE, c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE).a(c.a.a.a.a.b.a.HEADER_CLIENT_VERSION, this.kit.getVersion());
    }

    private c.a.a.a.a.e.e b(c.a.a.a.a.e.e eVar, d dVar) {
        c.a.a.a.a.e.e eVarE = eVar.e("app[identifier]", dVar.f297b).e("app[name]", dVar.f301f).e("app[display_version]", dVar.f298c).e("app[build_version]", dVar.f299d).a("app[source]", Integer.valueOf(dVar.f302g)).e("app[minimum_sdk_version]", dVar.h).e("app[built_sdk_version]", dVar.i);
        if (!c.a.a.a.a.b.m.c(dVar.f300e)) {
            eVarE.e("app[instance_identifier]", dVar.f300e);
        }
        if (dVar.j != null) {
            InputStream inputStreamOpenRawResource = null;
            try {
                inputStreamOpenRawResource = this.kit.getContext().getResources().openRawResource(dVar.j.f324b);
                eVarE.e("app[icon][hash]", dVar.j.f323a).a("app[icon][data]", "icon.png", "application/octet-stream", inputStreamOpenRawResource).a("app[icon][width]", Integer.valueOf(dVar.j.f325c)).a("app[icon][height]", Integer.valueOf(dVar.j.f326d));
            } catch (Resources.NotFoundException e2) {
                c.a.a.a.f.h().e("Fabric", "Failed to find app icon with resource ID: " + dVar.j.f324b, e2);
            } finally {
                c.a.a.a.a.b.m.a((Closeable) inputStreamOpenRawResource, "Failed to close app icon InputStream.");
            }
        }
        if (dVar.k != null) {
            for (c.a.a.a.s sVar : dVar.k) {
                eVarE.e(a(sVar), sVar.b());
                eVarE.e(b(sVar), sVar.c());
            }
        }
        return eVarE;
    }

    String a(c.a.a.a.s sVar) {
        return String.format(Locale.US, "app[build][libraries][%s][version]", sVar.a());
    }

    String b(c.a.a.a.s sVar) {
        return String.format(Locale.US, "app[build][libraries][%s][type]", sVar.a());
    }
}
