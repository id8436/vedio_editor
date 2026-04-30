package com.facebook.a;

import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.i.as;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: AppEventsLogger.java */
/* JADX INFO: loaded from: classes2.dex */
class q {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1741c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.facebook.i.d f1742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f1743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1744f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<i> f1739a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<i> f1740b = new ArrayList();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f1745g = 1000;

    public q(com.facebook.i.d dVar, String str, String str2) {
        this.f1742d = dVar;
        this.f1743e = str;
        this.f1744f = str2;
    }

    public synchronized void a(i iVar) {
        if (this.f1739a.size() + this.f1740b.size() >= 1000) {
            this.f1741c++;
        } else {
            this.f1739a.add(iVar);
        }
    }

    public synchronized int a() {
        return this.f1739a.size();
    }

    public synchronized void a(boolean z) {
        if (z) {
            this.f1739a.addAll(this.f1740b);
            this.f1740b.clear();
            this.f1741c = 0;
        } else {
            this.f1740b.clear();
            this.f1741c = 0;
        }
    }

    public int a(GraphRequest graphRequest, boolean z, boolean z2) {
        synchronized (this) {
            int i = this.f1741c;
            this.f1740b.addAll(this.f1739a);
            this.f1739a.clear();
            JSONArray jSONArray = new JSONArray();
            for (i iVar : this.f1740b) {
                if (z || !iVar.a()) {
                    jSONArray.put(iVar.b());
                }
            }
            if (jSONArray.length() == 0) {
                return 0;
            }
            a(graphRequest, i, jSONArray, z2);
            return jSONArray.length();
        }
    }

    public synchronized List<i> b() {
        List<i> list;
        list = this.f1739a;
        this.f1739a = new ArrayList();
        return list;
    }

    public synchronized void a(List<i> list) {
        this.f1739a.addAll(list);
    }

    private void a(GraphRequest graphRequest, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            jSONObject = com.facebook.i.a.a(com.facebook.i.c.CUSTOM_APP_EVENTS, this.f1742d, this.f1744f, z, a.h);
            if (this.f1741c > 0) {
                jSONObject.put("num_skipped_events", i);
            }
        } catch (JSONException e2) {
            jSONObject = new JSONObject();
        }
        graphRequest.a(jSONObject);
        Bundle bundleE = graphRequest.e();
        if (bundleE == null) {
            bundleE = new Bundle();
        }
        String string = jSONArray.toString();
        if (string != null) {
            bundleE.putByteArray("custom_events_file", a(string));
            graphRequest.a((Object) string);
        }
        graphRequest.a(bundleE);
    }

    private byte[] a(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            as.a("Encoding exception: ", (Exception) e2);
            return null;
        }
    }
}
