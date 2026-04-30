package com.facebook;

import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: GraphRequest.java */
/* JADX INFO: loaded from: classes2.dex */
class ae implements ai {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ ai f1755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ GraphRequest f1756b;

    ae(GraphRequest graphRequest, ai aiVar) {
        this.f1756b = graphRequest;
        this.f1755a = aiVar;
    }

    @Override // com.facebook.ai
    public void a(as asVar) {
        JSONObject jSONObjectB = asVar.b();
        JSONObject jSONObjectOptJSONObject = jSONObjectB != null ? jSONObjectB.optJSONObject("__debug__") : null;
        JSONArray jSONArrayOptJSONArray = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optJSONArray("messages") : null;
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject2 = jSONArrayOptJSONArray.optJSONObject(i);
                String strOptString = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("message") : null;
                String strOptString2 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("type") : null;
                String strOptString3 = jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.optString("link") : null;
                if (strOptString != null && strOptString2 != null) {
                    av avVar = av.GRAPH_API_DEBUG_INFO;
                    if (strOptString2.equals("warning")) {
                        avVar = av.GRAPH_API_DEBUG_WARNING;
                    }
                    if (!com.facebook.i.as.a(strOptString3)) {
                        strOptString = strOptString + " Link: " + strOptString3;
                    }
                    com.facebook.i.ag.a(avVar, GraphRequest.f1675a, strOptString);
                }
            }
        }
        if (this.f1755a != null) {
            this.f1755a.a(asVar);
        }
    }
}
