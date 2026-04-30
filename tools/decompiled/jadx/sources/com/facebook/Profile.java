package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class Profile implements Parcelable {
    public static final Parcelable.Creator<Profile> CREATOR = new ax();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f1685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f1686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1687d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f1688e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Uri f1689f;

    /* synthetic */ Profile(Parcel parcel, aw awVar) {
        this(parcel);
    }

    public static Profile a() {
        return az.a().b();
    }

    public static void a(Profile profile) {
        az.a().a(profile);
    }

    public static void b() {
        AccessToken accessTokenA = AccessToken.a();
        if (accessTokenA == null) {
            a(null);
        } else {
            com.facebook.i.as.a(accessTokenA.b(), (com.facebook.i.ay) new aw());
        }
    }

    public Profile(String str, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5, @Nullable Uri uri) {
        com.facebook.i.az.a(str, "id");
        this.f1684a = str;
        this.f1685b = str2;
        this.f1686c = str3;
        this.f1687d = str4;
        this.f1688e = str5;
        this.f1689f = uri;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Profile)) {
            return false;
        }
        Profile profile = (Profile) obj;
        if (this.f1684a.equals(profile.f1684a) && this.f1685b == null) {
            return profile.f1685b == null;
        }
        if (this.f1685b.equals(profile.f1685b) && this.f1686c == null) {
            return profile.f1686c == null;
        }
        if (this.f1686c.equals(profile.f1686c) && this.f1687d == null) {
            return profile.f1687d == null;
        }
        if (this.f1687d.equals(profile.f1687d) && this.f1688e == null) {
            return profile.f1688e == null;
        }
        if (this.f1688e.equals(profile.f1688e) && this.f1689f == null) {
            return profile.f1689f == null;
        }
        return this.f1689f.equals(profile.f1689f);
    }

    public int hashCode() {
        int iHashCode = this.f1684a.hashCode() + 527;
        if (this.f1685b != null) {
            iHashCode = (iHashCode * 31) + this.f1685b.hashCode();
        }
        if (this.f1686c != null) {
            iHashCode = (iHashCode * 31) + this.f1686c.hashCode();
        }
        if (this.f1687d != null) {
            iHashCode = (iHashCode * 31) + this.f1687d.hashCode();
        }
        if (this.f1688e != null) {
            iHashCode = (iHashCode * 31) + this.f1688e.hashCode();
        }
        if (this.f1689f != null) {
            return (iHashCode * 31) + this.f1689f.hashCode();
        }
        return iHashCode;
    }

    JSONObject c() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f1684a);
            jSONObject.put("first_name", this.f1685b);
            jSONObject.put("middle_name", this.f1686c);
            jSONObject.put("last_name", this.f1687d);
            jSONObject.put("name", this.f1688e);
            if (this.f1689f != null) {
                jSONObject.put("link_uri", this.f1689f.toString());
                return jSONObject;
            }
            return jSONObject;
        } catch (JSONException e2) {
            return null;
        }
    }

    Profile(JSONObject jSONObject) {
        this.f1684a = jSONObject.optString("id", null);
        this.f1685b = jSONObject.optString("first_name", null);
        this.f1686c = jSONObject.optString("middle_name", null);
        this.f1687d = jSONObject.optString("last_name", null);
        this.f1688e = jSONObject.optString("name", null);
        String strOptString = jSONObject.optString("link_uri", null);
        this.f1689f = strOptString != null ? Uri.parse(strOptString) : null;
    }

    private Profile(Parcel parcel) {
        this.f1684a = parcel.readString();
        this.f1685b = parcel.readString();
        this.f1686c = parcel.readString();
        this.f1687d = parcel.readString();
        this.f1688e = parcel.readString();
        String string = parcel.readString();
        this.f1689f = string == null ? null : Uri.parse(string);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1684a);
        parcel.writeString(this.f1685b);
        parcel.writeString(this.f1686c);
        parcel.writeString(this.f1687d);
        parcel.writeString(this.f1688e);
        parcel.writeString(this.f1689f == null ? null : this.f1689f.toString());
    }
}
