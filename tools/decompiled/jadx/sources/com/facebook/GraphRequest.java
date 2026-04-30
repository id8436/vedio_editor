package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.behance.sdk.util.BehanceSDKConstants;
import com.google.android.exoplayer.text.ttml.TtmlNode;
import com.google.gdata.client.GDataProtocol;
import com.google.gdata.util.Namespaces;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.mortbay.jetty.HttpHeaderValues;

/* JADX INFO: loaded from: classes.dex */
public class GraphRequest {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f1676b;
    private static volatile String q;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AccessToken f1678d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private at f1679e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1680f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private JSONObject f1681g;
    private String h;
    private String i;
    private boolean j;
    private Bundle k;
    private ai l;
    private String m;
    private Object n;
    private String o;
    private boolean p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f1675a = GraphRequest.class.getSimpleName();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Pattern f1677c = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, at atVar, ai aiVar) {
        this(accessToken, str, bundle, atVar, aiVar, null);
    }

    public GraphRequest(AccessToken accessToken, String str, Bundle bundle, at atVar, ai aiVar, String str2) {
        this.j = true;
        this.p = false;
        this.f1678d = accessToken;
        this.f1680f = str;
        this.o = str2;
        a(aiVar);
        a(atVar);
        if (bundle != null) {
            this.k = new Bundle(bundle);
        } else {
            this.k = new Bundle();
        }
        if (this.o == null) {
            this.o = com.facebook.i.ar.d();
        }
    }

    public static GraphRequest a(AccessToken accessToken, aj ajVar) {
        return new GraphRequest(accessToken, "me", null, null, new ad(ajVar));
    }

    public static GraphRequest a(AccessToken accessToken, String str, JSONObject jSONObject, ai aiVar) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, at.POST, aiVar);
        graphRequest.a(jSONObject);
        return graphRequest;
    }

    public static GraphRequest a(AccessToken accessToken, String str, ai aiVar) {
        return new GraphRequest(accessToken, str, null, null, aiVar);
    }

    public final JSONObject a() {
        return this.f1681g;
    }

    public final void a(JSONObject jSONObject) {
        this.f1681g = jSONObject;
    }

    public final String b() {
        return this.f1680f;
    }

    public final at c() {
        return this.f1679e;
    }

    public final void a(at atVar) {
        if (this.m != null && atVar != at.GET) {
            throw new q("Can't change HTTP method on request with overridden URL.");
        }
        if (atVar == null) {
            atVar = at.GET;
        }
        this.f1679e = atVar;
    }

    public final String d() {
        return this.o;
    }

    public final void a(boolean z) {
        this.p = z;
    }

    public final Bundle e() {
        return this.k;
    }

    public final void a(Bundle bundle) {
        this.k = bundle;
    }

    public final AccessToken f() {
        return this.f1678d;
    }

    public final ai g() {
        return this.l;
    }

    public final void a(ai aiVar) {
        if (w.a(av.GRAPH_API_DEBUG_INFO) || w.a(av.GRAPH_API_DEBUG_WARNING)) {
            this.l = new ae(this, aiVar);
        } else {
            this.l = aiVar;
        }
    }

    public final void a(Object obj) {
        this.n = obj;
    }

    public final Object h() {
        return this.n;
    }

    public final as i() {
        return a(this);
    }

    public final ao j() {
        return b(this);
    }

    public static HttpURLConnection a(ap apVar) throws Throwable {
        URL url;
        d(apVar);
        try {
            if (apVar.size() == 1) {
                url = new URL(apVar.get(0).l());
            } else {
                url = new URL(com.facebook.i.ar.b());
            }
            try {
                HttpURLConnection httpURLConnectionA = a(url);
                a(apVar, httpURLConnectionA);
                return httpURLConnectionA;
            } catch (IOException e2) {
                throw new q("could not construct request body", e2);
            } catch (JSONException e3) {
                throw new q("could not construct request body", e3);
            }
        } catch (MalformedURLException e4) {
            throw new q("could not construct URL for request", e4);
        }
    }

    public static as a(GraphRequest graphRequest) {
        List<as> listA = a(graphRequest);
        if (listA == null || listA.size() != 1) {
            throw new q("invalid state: expected a single response");
        }
        return listA.get(0);
    }

    public static List<as> a(GraphRequest... graphRequestArr) {
        com.facebook.i.az.a(graphRequestArr, "requests");
        return a((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    public static List<as> a(Collection<GraphRequest> collection) {
        return b(new ap(collection));
    }

    public static List<as> b(ap apVar) {
        com.facebook.i.az.c(apVar, "requests");
        try {
            return a(a(apVar), apVar);
        } catch (Exception e2) {
            List<as> listA = as.a(apVar.d(), (HttpURLConnection) null, new q(e2));
            a(apVar, listA);
            return listA;
        }
    }

    public static ao b(GraphRequest... graphRequestArr) {
        com.facebook.i.az.a(graphRequestArr, "requests");
        return b((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    public static ao b(Collection<GraphRequest> collection) {
        return c(new ap(collection));
    }

    public static ao c(ap apVar) {
        com.facebook.i.az.c(apVar, "requests");
        ao aoVar = new ao(apVar);
        aoVar.executeOnExecutor(w.d(), null);
        return aoVar;
    }

    public static List<as> a(HttpURLConnection httpURLConnection, ap apVar) {
        List<as> listA = as.a(httpURLConnection, apVar);
        com.facebook.i.as.a(httpURLConnection);
        int size = apVar.size();
        if (size != listA.size()) {
            throw new q(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(listA.size()), Integer.valueOf(size)));
        }
        a(apVar, listA);
        d.a().d();
        return listA;
    }

    public String toString() {
        return "{Request:  accessToken: " + (this.f1678d == null ? "null" : this.f1678d) + ", graphPath: " + this.f1680f + ", graphObject: " + this.f1681g + ", httpMethod: " + this.f1679e + ", parameters: " + this.k + "}";
    }

    static void a(ap apVar, List<as> list) {
        int size = apVar.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            GraphRequest graphRequestA = apVar.get(i);
            if (graphRequestA.l != null) {
                arrayList.add(new Pair(graphRequestA.l, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            af afVar = new af(arrayList, apVar);
            Handler handlerC = apVar.c();
            if (handlerC == null) {
                afVar.run();
            } else {
                handlerC.post(afVar);
            }
        }
    }

    private static HttpURLConnection a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setRequestProperty("User-Agent", p());
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    private void m() {
        if (this.f1678d != null) {
            if (!this.k.containsKey("access_token")) {
                String strB = this.f1678d.b();
                com.facebook.i.ag.a(strB);
                this.k.putString("access_token", strB);
            }
        } else if (!this.p && !this.k.containsKey("access_token")) {
            String strI = w.i();
            String strJ = w.j();
            if (!com.facebook.i.as.a(strI) && !com.facebook.i.as.a(strJ)) {
                this.k.putString("access_token", strI + BehanceSDKConstants.TAG_SERVER_SIDE_SEPERATOR + strJ);
            } else {
                Log.d(f1675a, "Warning: Request without access token missing application ID or client token.");
            }
        }
        this.k.putString("sdk", c.a.a.a.a.b.a.ANDROID_CLIENT_TYPE);
        this.k.putString("format", "json");
        if (w.a(av.GRAPH_API_DEBUG_INFO)) {
            this.k.putString("debug", "info");
        } else if (w.a(av.GRAPH_API_DEBUG_WARNING)) {
            this.k.putString("debug", "warning");
        }
    }

    private String a(String str) {
        Uri.Builder builderEncodedPath = new Uri.Builder().encodedPath(str);
        for (String str2 : this.k.keySet()) {
            Object obj = this.k.get(str2);
            if (obj == null) {
                obj = "";
            }
            if (!e(obj)) {
                if (this.f1679e == at.GET) {
                    throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj.getClass().getSimpleName()));
                }
            } else {
                builderEncodedPath.appendQueryParameter(str2, f(obj).toString());
            }
        }
        return builderEncodedPath.toString();
    }

    final String k() {
        if (this.m != null) {
            throw new q("Can't override URL for a batch request");
        }
        String strN = n();
        m();
        return a(strN);
    }

    final String l() {
        String strB;
        if (this.m != null) {
            return this.m.toString();
        }
        if (c() == at.POST && this.f1680f != null && this.f1680f.endsWith("/videos")) {
            strB = com.facebook.i.ar.c();
        } else {
            strB = com.facebook.i.ar.b();
        }
        String str = String.format("%s/%s", strB, n());
        m();
        return a(str);
    }

    private String n() {
        return f1677c.matcher(this.f1680f).matches() ? this.f1680f : String.format("%s/%s", this.o, this.f1680f);
    }

    private void a(JSONArray jSONArray, Map<String, ah> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        if (this.h != null) {
            jSONObject.put("name", this.h);
            jSONObject.put("omit_response_on_success", this.j);
        }
        if (this.i != null) {
            jSONObject.put("depends_on", this.i);
        }
        String strK = k();
        jSONObject.put("relative_url", strK);
        jSONObject.put("method", this.f1679e);
        if (this.f1678d != null) {
            com.facebook.i.ag.a(this.f1678d.b());
        }
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.k.keySet().iterator();
        while (it.hasNext()) {
            Object obj = this.k.get(it.next());
            if (d(obj)) {
                String str = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(str);
                map.put(str, new ah(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(BehanceSDKConstants.TAG_CLIENT_SIDE_SEPERATOR, arrayList));
        }
        if (this.f1681g != null) {
            ArrayList arrayList2 = new ArrayList();
            a(this.f1681g, strK, new ag(this, arrayList2));
            jSONObject.put(TtmlNode.TAG_BODY, TextUtils.join("&", arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    private static boolean e(ap apVar) {
        Iterator<aq> it = apVar.e().iterator();
        while (it.hasNext()) {
            if (it.next() instanceof ar) {
                return true;
            }
        }
        Iterator<GraphRequest> it2 = apVar.iterator();
        while (it2.hasNext()) {
            if (it2.next().g() instanceof al) {
                return true;
            }
        }
        return false;
    }

    private static void a(HttpURLConnection httpURLConnection, boolean z) {
        if (z) {
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("Content-Encoding", HttpHeaderValues.GZIP);
        } else {
            httpURLConnection.setRequestProperty("Content-Type", o());
        }
    }

    private static boolean f(ap apVar) {
        for (GraphRequest graphRequest : apVar) {
            Iterator<String> it = graphRequest.k.keySet().iterator();
            while (it.hasNext()) {
                if (d(graphRequest.k.get(it.next()))) {
                    return false;
                }
            }
        }
        return true;
    }

    static final boolean b(GraphRequest graphRequest) {
        String strD = graphRequest.d();
        if (com.facebook.i.as.a(strD)) {
            return true;
        }
        if (strD.startsWith(GDataProtocol.Parameter.VERSION)) {
            strD = strD.substring(1);
        }
        String[] strArrSplit = strD.split("\\.");
        return (strArrSplit.length >= 2 && Integer.parseInt(strArrSplit[0]) > 2) || (Integer.parseInt(strArrSplit[0]) >= 2 && Integer.parseInt(strArrSplit[1]) >= 4);
    }

    static final void d(ap apVar) {
        for (GraphRequest graphRequest : apVar) {
            if (at.GET.equals(graphRequest.c()) && b(graphRequest)) {
                Bundle bundleE = graphRequest.e();
                if (!bundleE.containsKey("fields") || com.facebook.i.as.a(bundleE.getString("fields"))) {
                    com.facebook.i.ag.a(av.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", graphRequest.b());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static final void a(com.facebook.ap r13, java.net.HttpURLConnection r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.a(com.facebook.ap, java.net.HttpURLConnection):void");
    }

    private static void a(ap apVar, com.facebook.i.ag agVar, int i, URL url, OutputStream outputStream, boolean z) throws JSONException, IOException {
        an anVar = new an(outputStream, agVar, z);
        if (i == 1) {
            GraphRequest graphRequestA = apVar.get(0);
            HashMap map = new HashMap();
            for (String str : graphRequestA.k.keySet()) {
                Object obj = graphRequestA.k.get(str);
                if (d(obj)) {
                    map.put(str, new ah(graphRequestA, obj));
                }
            }
            if (agVar != null) {
                agVar.c("  Parameters:\n");
            }
            a(graphRequestA.k, anVar, graphRequestA);
            if (agVar != null) {
                agVar.c("  Attachments:\n");
            }
            a(map, anVar);
            if (graphRequestA.f1681g != null) {
                a(graphRequestA.f1681g, url.getPath(), anVar);
                return;
            }
            return;
        }
        String strG = g(apVar);
        if (com.facebook.i.as.a(strG)) {
            throw new q("App ID was not specified at the request or Settings.");
        }
        anVar.a("batch_app_id", strG);
        HashMap map2 = new HashMap();
        a(anVar, apVar, map2);
        if (agVar != null) {
            agVar.c("  Attachments:\n");
        }
        a(map2, anVar);
    }

    private static boolean b(String str) {
        Matcher matcher = f1677c.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
        }
        return str.startsWith("me/") || str.startsWith("/me/");
    }

    private static void a(JSONObject jSONObject, String str, ak akVar) throws IOException {
        boolean z;
        if (b(str)) {
            int iIndexOf = str.indexOf(":");
            int iIndexOf2 = str.indexOf("?");
            z = iIndexOf > 3 && (iIndexOf2 == -1 || iIndexOf < iIndexOf2);
        } else {
            z = false;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            a(next, jSONObject.opt(next), akVar, z && next.equalsIgnoreCase("image"));
        }
    }

    private static void a(String str, Object obj, ak akVar, boolean z) throws IOException {
        Class<?> cls = obj.getClass();
        if (JSONObject.class.isAssignableFrom(cls)) {
            JSONObject jSONObject = (JSONObject) obj;
            if (z) {
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    a(String.format("%s[%s]", str, next), jSONObject.opt(next), akVar, z);
                }
                return;
            }
            if (jSONObject.has("id")) {
                a(str, jSONObject.optString("id"), akVar, z);
                return;
            } else if (jSONObject.has("url")) {
                a(str, jSONObject.optString("url"), akVar, z);
                return;
            } else {
                if (jSONObject.has("fbsdk:create_object")) {
                    a(str, jSONObject.toString(), akVar, z);
                    return;
                }
                return;
            }
        }
        if (JSONArray.class.isAssignableFrom(cls)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                a(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), akVar, z);
            }
            return;
        }
        if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
            akVar.a(str, obj.toString());
        } else if (Date.class.isAssignableFrom(cls)) {
            akVar.a(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
        }
    }

    private static void a(Bundle bundle, an anVar, GraphRequest graphRequest) throws IOException {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (e(obj)) {
                anVar.a(str, obj, graphRequest);
            }
        }
    }

    private static void a(Map<String, ah> map, an anVar) throws IOException {
        for (String str : map.keySet()) {
            ah ahVar = map.get(str);
            if (d(ahVar.b())) {
                anVar.a(str, ahVar.b(), ahVar.a());
            }
        }
    }

    private static void a(an anVar, Collection<GraphRequest> collection, Map<String, ah> map) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        Iterator<GraphRequest> it = collection.iterator();
        while (it.hasNext()) {
            it.next().a(jSONArray, map);
        }
        anVar.a(Namespaces.batchAlias, jSONArray, collection);
    }

    private static String o() {
        return String.format("multipart/form-data; boundary=%s", "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    }

    private static String p() {
        if (q == null) {
            q = String.format("%s.%s", "FBAndroidSDK", "4.6.0");
            String strA = com.facebook.i.ad.a();
            if (!com.facebook.i.as.a(strA)) {
                q = String.format(Locale.ROOT, "%s/%s", q, strA);
            }
        }
        return q;
    }

    private static String g(ap apVar) {
        String strH;
        if (!com.facebook.i.as.a(apVar.f())) {
            return apVar.f();
        }
        Iterator<GraphRequest> it = apVar.iterator();
        while (it.hasNext()) {
            AccessToken accessToken = it.next().f1678d;
            if (accessToken != null && (strH = accessToken.h()) != null) {
                return strH;
            }
        }
        if (!com.facebook.i.as.a(f1676b)) {
            return f1676b;
        }
        return w.i();
    }

    private static boolean d(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean e(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (obj instanceof Date) {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
        }
        throw new IllegalArgumentException("Unsupported parameter type.");
    }

    /* JADX INFO: loaded from: classes2.dex */
    public class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new am();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f1682a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final RESOURCE f1683b;

        /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, ad adVar) {
            this(parcel);
        }

        public String a() {
            return this.f1682a;
        }

        public RESOURCE b() {
            return this.f1683b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f1682a);
            parcel.writeParcelable(this.f1683b, i);
        }

        private ParcelableResourceWithMimeType(Parcel parcel) {
            this.f1682a = parcel.readString();
            this.f1683b = (RESOURCE) parcel.readParcelable(w.f().getClassLoader());
        }
    }
}
