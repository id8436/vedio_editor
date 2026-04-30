package com.facebook.a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.ai;
import com.facebook.av;
import com.facebook.i.ag;
import com.facebook.i.as;
import com.facebook.i.ax;
import com.facebook.i.az;
import com.facebook.s;
import com.facebook.w;
import com.google.gdata.client.GDataProtocol;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ScheduledThreadPoolExecutor f1692e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f1694g;
    private static Context h;
    private static String j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f1696c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f1690a = a.class.getCanonicalName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Map<h, q> f1691d = new ConcurrentHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static j f1693f = j.AUTO;
    private static Object i = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j2, String str) {
        n.a(h, this.f1696c, this, j2, str);
    }

    public static a a(Context context) {
        return new a(context, null, null);
    }

    public static a a(Context context, String str) {
        return new a(context, str, null);
    }

    public static j a() {
        j jVar;
        synchronized (i) {
            jVar = f1693f;
        }
        return jVar;
    }

    public void a(String str, Bundle bundle) {
        a(str, (Double) null, bundle, false);
    }

    public void a(String str, double d2, Bundle bundle) {
        a(str, Double.valueOf(d2), bundle, false);
    }

    public void a(String str, Double d2, Bundle bundle) {
        a(str, d2, bundle, true);
    }

    private a(Context context, String str, AccessToken accessToken) {
        az.a(context, GDataProtocol.Parameter.CONTEXT);
        this.f1695b = as.c(context);
        accessToken = accessToken == null ? AccessToken.a() : accessToken;
        if (accessToken != null && (str == null || str.equals(accessToken.h()))) {
            this.f1696c = new h(accessToken);
        } else {
            this.f1696c = new h(null, str == null ? as.a(context) : str);
        }
        synchronized (i) {
            if (h == null) {
                h = context.getApplicationContext();
            }
        }
        h();
    }

    private static void h() {
        synchronized (i) {
            if (f1692e == null) {
                f1692e = new ScheduledThreadPoolExecutor(1);
                f1692e.scheduleAtFixedRate(new c(), 0L, 15L, TimeUnit.SECONDS);
                f1692e.scheduleAtFixedRate(new d(), 0L, 86400L, TimeUnit.SECONDS);
            }
        }
    }

    private void a(String str, Double d2, Bundle bundle, boolean z) {
        a(h, new i(this.f1695b, str, d2, bundle, z), this.f1696c);
    }

    private static void a(Context context, i iVar, h hVar) {
        w.d().execute(new e(context, hVar, iVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i() {
        synchronized (i) {
            if (a() != j.EXPLICIT_ONLY && j() > 100) {
                b(k.EVENT_THRESHOLD);
            }
        }
    }

    private static int j() {
        int iA;
        synchronized (i) {
            Iterator<q> it = f1691d.values().iterator();
            iA = 0;
            while (it.hasNext()) {
                iA = it.next().a() + iA;
            }
        }
        return iA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static q b(Context context, h hVar) {
        q qVar;
        com.facebook.i.d dVarA = null;
        if (f1691d.get(hVar) == null) {
            dVarA = com.facebook.i.d.a(context);
        }
        synchronized (i) {
            qVar = f1691d.get(hVar);
            if (qVar == null) {
                qVar = new q(dVarA, context.getPackageName(), b(context));
                f1691d.put(hVar, qVar);
            }
        }
        return qVar;
    }

    private static q a(h hVar) {
        q qVar;
        synchronized (i) {
            qVar = f1691d.get(hVar);
        }
        return qVar;
    }

    private static void b(k kVar) {
        w.d().execute(new f(kVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(k kVar) {
        synchronized (i) {
            if (!f1694g) {
                f1694g = true;
                HashSet hashSet = new HashSet(f1691d.keySet());
                k();
                m mVarA = null;
                try {
                    mVarA = a(kVar, hashSet);
                } catch (Exception e2) {
                    as.a(f1690a, "Caught unexpected exception while flushing: ", e2);
                }
                synchronized (i) {
                    f1694g = false;
                }
                if (mVarA != null) {
                    Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
                    intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", mVarA.f1729a);
                    intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", mVarA.f1730b);
                    LocalBroadcastManager.getInstance(h).sendBroadcast(intent);
                }
            }
        }
    }

    private static m a(k kVar, Set<h> set) {
        GraphRequest graphRequestA;
        m mVar = new m(null);
        boolean zB = w.b(h);
        ArrayList arrayList = new ArrayList();
        for (h hVar : set) {
            q qVarA = a(hVar);
            if (qVarA != null && (graphRequestA = a(hVar, qVarA, zB, mVar)) != null) {
                arrayList.add(graphRequestA);
            }
        }
        if (arrayList.size() <= 0) {
            return null;
        }
        ag.a(av.APP_EVENTS, f1690a, "Flushing %d events due to %s.", Integer.valueOf(mVar.f1729a), kVar.toString());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((GraphRequest) it.next()).i();
        }
        return mVar;
    }

    private static GraphRequest a(h hVar, q qVar, boolean z, m mVar) {
        int iA;
        String strB = hVar.b();
        ax axVarA = as.a(strB, false);
        GraphRequest graphRequestA = GraphRequest.a((AccessToken) null, String.format("%s/activities", strB), (JSONObject) null, (ai) null);
        Bundle bundleE = graphRequestA.e();
        if (bundleE == null) {
            bundleE = new Bundle();
        }
        bundleE.putString("access_token", hVar.a());
        graphRequestA.a(bundleE);
        if (axVarA != null && (iA = qVar.a(graphRequestA, axVarA.a(), z)) != 0) {
            mVar.f1729a = iA + mVar.f1729a;
            graphRequestA.a((ai) new g(hVar, graphRequestA, qVar, mVar));
            return graphRequestA;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(h hVar, GraphRequest graphRequest, com.facebook.as asVar, q qVar, m mVar) {
        String str;
        l lVar;
        String string;
        s sVarA = asVar.a();
        l lVar2 = l.SUCCESS;
        if (sVarA == null) {
            str = "Success";
            lVar = lVar2;
        } else if (sVarA.b() == -1) {
            str = "Failed: No Connectivity";
            lVar = l.NO_CONNECTIVITY;
        } else {
            str = String.format("Failed:\n  Response: %s\n  Error %s", asVar.toString(), sVarA.toString());
            lVar = l.SERVER_ERROR;
        }
        if (w.a(av.APP_EVENTS)) {
            try {
                string = new JSONArray((String) graphRequest.h()).toString(2);
            } catch (JSONException e2) {
                string = "<Can't encode events for debug logging>";
            }
            ag.a(av.APP_EVENTS, f1690a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", graphRequest.a().toString(), str, string);
        }
        qVar.a(sVarA != null);
        if (lVar == l.NO_CONNECTIVITY) {
            p.a(h, hVar, qVar);
        }
        if (lVar != l.SUCCESS && mVar.f1730b != l.NO_CONNECTIVITY) {
            mVar.f1730b = lVar;
        }
    }

    private static int k() {
        p pVarA = p.a(h);
        int size = 0;
        Iterator<h> it = pVarA.a().iterator();
        while (true) {
            int i2 = size;
            if (it.hasNext()) {
                h next = it.next();
                q qVarB = b(h, next);
                List<i> listA = pVarA.a(next);
                qVarB.a(listA);
                size = listA.size() + i2;
            } else {
                return i2;
            }
        }
    }

    public static String b(Context context) {
        if (j == null) {
            synchronized (i) {
                if (j == null) {
                    j = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
                    if (j == null) {
                        j = "XZ" + UUID.randomUUID().toString();
                        context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", j).apply();
                    }
                }
            }
        }
        return j;
    }
}
