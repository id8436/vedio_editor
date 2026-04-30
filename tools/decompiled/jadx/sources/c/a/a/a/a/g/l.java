package c.a.a.a.a.g;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: DefaultSettingsSpiCall.java */
/* JADX INFO: loaded from: classes.dex */
class l extends c.a.a.a.a.b.a implements aa {
    public l(c.a.a.a.q qVar, String str, String str2, c.a.a.a.a.e.m mVar) {
        this(qVar, str, str2, mVar, c.a.a.a.a.e.d.GET);
    }

    l(c.a.a.a.q qVar, String str, String str2, c.a.a.a.a.e.m mVar, c.a.a.a.a.e.d dVar) {
        super(qVar, str, str2, mVar, dVar);
    }

    @Override // c.a.a.a.a.g.aa
    public JSONObject a(z zVar) {
        c.a.a.a.a.e.e eVarA = null;
        try {
            Map<String, String> mapB = b(zVar);
            eVarA = a(getHttpRequest(mapB), zVar);
            c.a.a.a.f.h().a("Fabric", "Requesting settings from " + getUrl());
            c.a.a.a.f.h().a("Fabric", "Settings query params were: " + mapB);
            return a(eVarA);
        } finally {
            if (eVarA != null) {
                c.a.a.a.f.h().a("Fabric", "Settings request ID: " + eVarA.b(c.a.a.a.a.b.a.HEADER_REQUEST_ID));
            }
        }
    }

    JSONObject a(c.a.a.a.a.e.e eVar) {
        int iB = eVar.b();
        c.a.a.a.f.h().a("Fabric", "Settings result was: " + iB);
        if (a(iB)) {
            return a(eVar.e());
        }
        c.a.a.a.f.h().e("Fabric", "Failed to retrieve settings from " + getUrl());
        return null;
    }

    boolean a(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    private JSONObject a(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e2) {
            c.a.a.a.f.h().a("Fabric", "Failed to parse settings JSON from " + getUrl(), e2);
            c.a.a.a.f.h().a("Fabric", "Settings response " + str);
            return null;
        }
    }

    private Map<String, String> b(z zVar) {
        HashMap map = new HashMap();
        map.put("build_version", zVar.f361e);
        map.put("display_version", zVar.f360d);
        map.put("source", Integer.toString(zVar.f362f));
        if (zVar.f363g != null) {
            map.put("icon_hash", zVar.f363g);
        }
        String str = zVar.f359c;
        if (!c.a.a.a.a.b.m.c(str)) {
            map.put("instance", str);
        }
        return map;
    }

    private c.a.a.a.a.e.e a(c.a.a.a.a.e.e eVar, z zVar) {
        return eVar.a(c.a.a.a.a.b.a.HEADER_API_KEY, zVar.f357a).a(c.a.a.a.a.b.a.HEADER_CLIENT_TYPE, c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE).a(c.a.a.a.a.b.a.HEADER_D, zVar.f358b).a(c.a.a.a.a.b.a.HEADER_CLIENT_VERSION, this.kit.getVersion()).a("Accept", "application/json");
    }
}
