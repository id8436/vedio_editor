package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.adobe.creativesdk.foundation.adobeinternal.storage.library.resources.AdobeCommunityConstants;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class AccessToken implements Parcelable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Date f1672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<String> f1673f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set<String> f1674g;
    private final String h;
    private final j i;
    private final Date j;
    private final String k;
    private final String l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Date f1668a = new Date(Long.MAX_VALUE);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Date f1669b = f1668a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Date f1670c = new Date();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final j f1671d = j.FACEBOOK_APPLICATION_WEB;
    public static final Parcelable.Creator<AccessToken> CREATOR = new a();

    public AccessToken(String str, String str2, String str3, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable j jVar, @Nullable Date date, @Nullable Date date2) {
        com.facebook.i.az.a(str, "accessToken");
        com.facebook.i.az.a(str2, "applicationId");
        com.facebook.i.az.a(str3, "userId");
        this.f1672e = date == null ? f1669b : date;
        this.f1673f = Collections.unmodifiableSet(collection != null ? new HashSet(collection) : new HashSet());
        this.f1674g = Collections.unmodifiableSet(collection2 != null ? new HashSet(collection2) : new HashSet());
        this.h = str;
        this.i = jVar == null ? f1671d : jVar;
        this.j = date2 == null ? f1670c : date2;
        this.k = str2;
        this.l = str3;
    }

    public static AccessToken a() {
        return d.a().b();
    }

    public static void a(AccessToken accessToken) {
        d.a().a(accessToken);
    }

    public String b() {
        return this.h;
    }

    public Date c() {
        return this.f1672e;
    }

    public Set<String> d() {
        return this.f1673f;
    }

    public Set<String> e() {
        return this.f1674g;
    }

    public j f() {
        return this.i;
    }

    public Date g() {
        return this.j;
    }

    public String h() {
        return this.k;
    }

    public String i() {
        return this.l;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{AccessToken");
        sb.append(" token:").append(l());
        a(sb);
        sb.append("}");
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AccessToken)) {
            return false;
        }
        AccessToken accessToken = (AccessToken) obj;
        return this.f1672e.equals(accessToken.f1672e) && this.f1673f.equals(accessToken.f1673f) && this.f1674g.equals(accessToken.f1674g) && this.h.equals(accessToken.h) && this.i == accessToken.i && this.j.equals(accessToken.j) && (this.k != null ? this.k.equals(accessToken.k) : accessToken.k == null) && this.l.equals(accessToken.l);
    }

    public int hashCode() {
        return (((this.k == null ? 0 : this.k.hashCode()) + ((((((((((((this.f1672e.hashCode() + 527) * 31) + this.f1673f.hashCode()) * 31) + this.f1674g.hashCode()) * 31) + this.h.hashCode()) * 31) + this.i.hashCode()) * 31) + this.j.hashCode()) * 31)) * 31) + this.l.hashCode();
    }

    static AccessToken a(Bundle bundle) {
        List<String> listA = a(bundle, "com.facebook.TokenCachingStrategy.Permissions");
        List<String> listA2 = a(bundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
        String strD = au.d(bundle);
        if (com.facebook.i.as.a(strD)) {
            strD = w.i();
        }
        String strB = au.b(bundle);
        try {
            return new AccessToken(strB, strD, com.facebook.i.as.d(strB).getString("id"), listA, listA2, au.c(bundle), au.a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), au.a(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
        } catch (JSONException e2) {
            return null;
        }
    }

    static List<String> a(Bundle bundle, String str) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(str);
        if (stringArrayList == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(stringArrayList));
    }

    public boolean j() {
        return new Date().after(this.f1672e);
    }

    JSONObject k() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AdobeCommunityConstants.AdobeCommunityResourceVersionKey, 1);
        jSONObject.put("token", this.h);
        jSONObject.put("expires_at", this.f1672e.getTime());
        jSONObject.put("permissions", new JSONArray((Collection) this.f1673f));
        jSONObject.put("declined_permissions", new JSONArray((Collection) this.f1674g));
        jSONObject.put("last_refresh", this.j.getTime());
        jSONObject.put("source", this.i.name());
        jSONObject.put("application_id", this.k);
        jSONObject.put(BehanceSDKUrlUtil.KEY_USER_ID, this.l);
        return jSONObject;
    }

    static AccessToken a(JSONObject jSONObject) throws JSONException {
        if (jSONObject.getInt(AdobeCommunityConstants.AdobeCommunityResourceVersionKey) > 1) {
            throw new q("Unknown AccessToken serialization format.");
        }
        String string = jSONObject.getString("token");
        Date date = new Date(jSONObject.getLong("expires_at"));
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        JSONArray jSONArray2 = jSONObject.getJSONArray("declined_permissions");
        Date date2 = new Date(jSONObject.getLong("last_refresh"));
        return new AccessToken(string, jSONObject.getString("application_id"), jSONObject.getString(BehanceSDKUrlUtil.KEY_USER_ID), com.facebook.i.as.a(jSONArray), com.facebook.i.as.a(jSONArray2), j.valueOf(jSONObject.getString("source")), date, date2);
    }

    private String l() {
        if (this.h == null) {
            return "null";
        }
        if (w.a(av.INCLUDE_ACCESS_TOKENS)) {
            return this.h;
        }
        return "ACCESS_TOKEN_REMOVED";
    }

    private void a(StringBuilder sb) {
        sb.append(" permissions:");
        if (this.f1673f == null) {
            sb.append("null");
            return;
        }
        sb.append("[");
        sb.append(TextUtils.join(", ", this.f1673f));
        sb.append("]");
    }

    AccessToken(Parcel parcel) {
        this.f1672e = new Date(parcel.readLong());
        ArrayList arrayList = new ArrayList();
        parcel.readStringList(arrayList);
        this.f1673f = Collections.unmodifiableSet(new HashSet(arrayList));
        arrayList.clear();
        parcel.readStringList(arrayList);
        this.f1674g = Collections.unmodifiableSet(new HashSet(arrayList));
        this.h = parcel.readString();
        this.i = j.valueOf(parcel.readString());
        this.j = new Date(parcel.readLong());
        this.k = parcel.readString();
        this.l = parcel.readString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1672e.getTime());
        parcel.writeStringList(new ArrayList(this.f1673f));
        parcel.writeStringList(new ArrayList(this.f1674g));
        parcel.writeString(this.h);
        parcel.writeString(this.i.name());
        parcel.writeLong(this.j.getTime());
        parcel.writeString(this.k);
        parcel.writeString(this.l);
    }
}
