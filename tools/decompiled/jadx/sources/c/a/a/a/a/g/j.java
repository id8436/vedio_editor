package c.a.a.a.a.g;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: DefaultSettingsController.java */
/* JADX INFO: loaded from: classes.dex */
class j implements v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final y f313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c.a.a.a.a.b.s f314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g f315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final aa f316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c.a.a.a.q f317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final c.a.a.a.a.f.c f318g;

    public j(c.a.a.a.q qVar, z zVar, c.a.a.a.a.b.s sVar, y yVar, g gVar, aa aaVar) {
        this.f317f = qVar;
        this.f312a = zVar;
        this.f314c = sVar;
        this.f313b = yVar;
        this.f315d = gVar;
        this.f316e = aaVar;
        this.f318g = new c.a.a.a.a.f.d(this.f317f);
    }

    @Override // c.a.a.a.a.g.v
    public w a() {
        return a(u.USE_CACHE);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    @Override // c.a.a.a.a.g.v
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c.a.a.a.a.g.w a(c.a.a.a.a.g.u r8) {
        /*
            r7 = this;
            r1 = 0
            boolean r0 = c.a.a.a.f.i()     // Catch: java.lang.Exception -> L43
            if (r0 != 0) goto L11
            boolean r0 = r7.d()     // Catch: java.lang.Exception -> L43
            if (r0 != 0) goto L11
            c.a.a.a.a.g.w r1 = r7.b(r8)     // Catch: java.lang.Exception -> L43
        L11:
            if (r1 != 0) goto L39
            c.a.a.a.a.g.aa r0 = r7.f316e     // Catch: java.lang.Exception -> L55
            c.a.a.a.a.g.z r2 = r7.f312a     // Catch: java.lang.Exception -> L55
            org.json.JSONObject r0 = r0.a(r2)     // Catch: java.lang.Exception -> L55
            if (r0 == 0) goto L39
            c.a.a.a.a.g.y r2 = r7.f313b     // Catch: java.lang.Exception -> L55
            c.a.a.a.a.b.s r3 = r7.f314c     // Catch: java.lang.Exception -> L55
            c.a.a.a.a.g.w r1 = r2.a(r3, r0)     // Catch: java.lang.Exception -> L55
            c.a.a.a.a.g.g r2 = r7.f315d     // Catch: java.lang.Exception -> L55
            long r4 = r1.f355g     // Catch: java.lang.Exception -> L55
            r2.a(r4, r0)     // Catch: java.lang.Exception -> L55
            java.lang.String r2 = "Loaded settings: "
            r7.a(r0, r2)     // Catch: java.lang.Exception -> L55
            java.lang.String r0 = r7.b()     // Catch: java.lang.Exception -> L55
            r7.a(r0)     // Catch: java.lang.Exception -> L55
        L39:
            r0 = r1
            if (r0 != 0) goto L42
            c.a.a.a.a.g.u r1 = c.a.a.a.a.g.u.IGNORE_CACHE_EXPIRATION     // Catch: java.lang.Exception -> L5a
            c.a.a.a.a.g.w r0 = r7.b(r1)     // Catch: java.lang.Exception -> L5a
        L42:
            return r0
        L43:
            r0 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
        L47:
            c.a.a.a.t r2 = c.a.a.a.f.h()
            java.lang.String r3 = "Fabric"
            java.lang.String r4 = "Unknown error while loading Crashlytics settings. Crashes will be cached until settings can be retrieved."
            r2.e(r3, r4, r1)
            goto L42
        L55:
            r0 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
            goto L47
        L5a:
            r1 = move-exception
            goto L47
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.a.a.g.j.a(c.a.a.a.a.g.u):c.a.a.a.a.g.w");
    }

    private w b(u uVar) {
        w wVar = null;
        try {
            if (!u.SKIP_CACHE_LOOKUP.equals(uVar)) {
                JSONObject jSONObjectA = this.f315d.a();
                if (jSONObjectA != null) {
                    w wVarA = this.f313b.a(this.f314c, jSONObjectA);
                    if (wVarA != null) {
                        a(jSONObjectA, "Loaded cached settings: ");
                        long jA = this.f314c.a();
                        if (u.IGNORE_CACHE_EXPIRATION.equals(uVar) || !wVarA.a(jA)) {
                            try {
                                c.a.a.a.f.h().a("Fabric", "Returning cached settings.");
                                wVar = wVarA;
                            } catch (Exception e2) {
                                wVar = wVarA;
                                e = e2;
                                c.a.a.a.f.h().e("Fabric", "Failed to get cached settings", e);
                            }
                        } else {
                            c.a.a.a.f.h().a("Fabric", "Cached settings have expired.");
                        }
                    } else {
                        c.a.a.a.f.h().e("Fabric", "Failed to transform cached settings data.", null);
                    }
                } else {
                    c.a.a.a.f.h().a("Fabric", "No cached settings data found.");
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        return wVar;
    }

    private void a(JSONObject jSONObject, String str) throws JSONException {
        c.a.a.a.f.h().a("Fabric", str + jSONObject.toString());
    }

    String b() {
        return c.a.a.a.a.b.m.a(c.a.a.a.a.b.m.m(this.f317f.getContext()));
    }

    String c() {
        return this.f318g.a().getString("existing_instance_identifier", "");
    }

    @SuppressLint({"CommitPrefEdits"})
    boolean a(String str) {
        SharedPreferences.Editor editorB = this.f318g.b();
        editorB.putString("existing_instance_identifier", str);
        return this.f318g.a(editorB);
    }

    boolean d() {
        return !c().equals(b());
    }
}
