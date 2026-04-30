package com.facebook;

import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.gdata.client.projecthosting.ProjectHostingService;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* JADX INFO: compiled from: GraphResponse.java */
/* JADX INFO: loaded from: classes.dex */
public class as {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HttpURLConnection f1778a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final JSONObject f1779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JSONArray f1780c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final s f1781d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1782e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final GraphRequest f1783f;

    as(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject) {
        this(graphRequest, httpURLConnection, str, jSONObject, null, null);
    }

    as(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONArray jSONArray) {
        this(graphRequest, httpURLConnection, str, null, jSONArray, null);
    }

    as(GraphRequest graphRequest, HttpURLConnection httpURLConnection, s sVar) {
        this(graphRequest, httpURLConnection, null, null, null, sVar);
    }

    as(GraphRequest graphRequest, HttpURLConnection httpURLConnection, String str, JSONObject jSONObject, JSONArray jSONArray, s sVar) {
        this.f1783f = graphRequest;
        this.f1778a = httpURLConnection;
        this.f1782e = str;
        this.f1779b = jSONObject;
        this.f1780c = jSONArray;
        this.f1781d = sVar;
    }

    public final s a() {
        return this.f1781d;
    }

    public final JSONObject b() {
        return this.f1779b;
    }

    public String toString() {
        String str;
        try {
            Locale locale = Locale.US;
            Object[] objArr = new Object[1];
            objArr[0] = Integer.valueOf(this.f1778a != null ? this.f1778a.getResponseCode() : 200);
            str = String.format(locale, "%d", objArr);
        } catch (IOException e2) {
            str = "unknown";
        }
        return "{Response:  responseCode: " + str + ", graphObject: " + this.f1779b + ", error: " + this.f1781d + "}";
    }

    static List<as> a(HttpURLConnection httpURLConnection, ap apVar) {
        List<as> listA;
        InputStream errorStream = null;
        try {
            errorStream = httpURLConnection.getResponseCode() >= 400 ? httpURLConnection.getErrorStream() : httpURLConnection.getInputStream();
            listA = a(errorStream, httpURLConnection, apVar);
        } catch (SecurityException e2) {
            com.facebook.i.ag.a(av.REQUESTS, "Response", "Response <Error>: %s", e2);
            listA = a(apVar, httpURLConnection, new q(e2));
        } catch (q e3) {
            com.facebook.i.ag.a(av.REQUESTS, "Response", "Response <Error>: %s", e3);
            listA = a(apVar, httpURLConnection, e3);
        } catch (JSONException e4) {
            com.facebook.i.ag.a(av.REQUESTS, "Response", "Response <Error>: %s", e4);
            listA = a(apVar, httpURLConnection, new q(e4));
        } catch (IOException e5) {
            com.facebook.i.ag.a(av.REQUESTS, "Response", "Response <Error>: %s", e5);
            listA = a(apVar, httpURLConnection, new q(e5));
        } finally {
            com.facebook.i.as.a((Closeable) errorStream);
        }
        return listA;
    }

    static List<as> a(InputStream inputStream, HttpURLConnection httpURLConnection, ap apVar) throws q, JSONException, IOException {
        String strA = com.facebook.i.as.a(inputStream);
        com.facebook.i.ag.a(av.INCLUDE_RAW_RESPONSES, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", Integer.valueOf(strA.length()), strA);
        return a(strA, httpURLConnection, apVar);
    }

    static List<as> a(String str, HttpURLConnection httpURLConnection, ap apVar) throws q, JSONException, IOException {
        List<as> listA = a(httpURLConnection, apVar, new JSONTokener(str).nextValue());
        com.facebook.i.ag.a(av.REQUESTS, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", apVar.b(), Integer.valueOf(str.length()), listA);
        return listA;
    }

    private static List<as> a(HttpURLConnection httpURLConnection, List<GraphRequest> list, Object obj) throws q, JSONException {
        Object obj2;
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        if (size == 1) {
            GraphRequest graphRequest = list.get(0);
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(TtmlNode.TAG_BODY, obj);
                jSONObject.put(ProjectHostingService.PROJECTHOSTING_SERVICE, httpURLConnection != null ? httpURLConnection.getResponseCode() : 200);
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
                obj2 = jSONArray;
            } catch (IOException e2) {
                arrayList.add(new as(graphRequest, httpURLConnection, new s(httpURLConnection, e2)));
                obj2 = obj;
            } catch (JSONException e3) {
                arrayList.add(new as(graphRequest, httpURLConnection, new s(httpURLConnection, e3)));
                obj2 = obj;
            }
        } else {
            obj2 = obj;
        }
        if (!(obj2 instanceof JSONArray) || ((JSONArray) obj2).length() != size) {
            throw new q("Unexpected number of results");
        }
        JSONArray jSONArray2 = (JSONArray) obj2;
        for (int i = 0; i < jSONArray2.length(); i++) {
            GraphRequest graphRequest2 = list.get(i);
            try {
                arrayList.add(a(graphRequest2, httpURLConnection, jSONArray2.get(i), obj));
            } catch (q e4) {
                arrayList.add(new as(graphRequest2, httpURLConnection, new s(httpURLConnection, e4)));
            } catch (JSONException e5) {
                arrayList.add(new as(graphRequest2, httpURLConnection, new s(httpURLConnection, e5)));
            }
        }
        return arrayList;
    }

    private static as a(GraphRequest graphRequest, HttpURLConnection httpURLConnection, Object obj, Object obj2) throws JSONException {
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            s sVarA = s.a(jSONObject, obj2, httpURLConnection);
            if (sVarA != null) {
                if (sVarA.b() == 190 && com.facebook.i.as.a(graphRequest.f())) {
                    AccessToken.a((AccessToken) null);
                }
                return new as(graphRequest, httpURLConnection, sVarA);
            }
            Object objA = com.facebook.i.as.a(jSONObject, TtmlNode.TAG_BODY, "FACEBOOK_NON_JSON_RESULT");
            if (objA instanceof JSONObject) {
                return new as(graphRequest, httpURLConnection, objA.toString(), (JSONObject) objA);
            }
            if (objA instanceof JSONArray) {
                return new as(graphRequest, httpURLConnection, objA.toString(), (JSONArray) objA);
            }
            obj = JSONObject.NULL;
        }
        if (obj == JSONObject.NULL) {
            return new as(graphRequest, httpURLConnection, obj.toString(), (JSONObject) null);
        }
        throw new q("Got unexpected object type in response, class: " + obj.getClass().getSimpleName());
    }

    static List<as> a(List<GraphRequest> list, HttpURLConnection httpURLConnection, q qVar) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            arrayList.add(new as(list.get(i), httpURLConnection, new s(httpURLConnection, qVar)));
        }
        return arrayList;
    }
}
