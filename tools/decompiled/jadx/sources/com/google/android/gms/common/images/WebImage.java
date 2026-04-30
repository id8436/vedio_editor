package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzu;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class WebImage implements SafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new zzb();
    private final Uri zzSr;
    private final int zzma;
    private final int zzmb;
    private final int zzzH;

    WebImage(int i, Uri uri, int i2, int i3) {
        this.zzzH = i;
        this.zzSr = uri;
        this.zzma = i2;
        this.zzmb = i3;
    }

    public WebImage(Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int i2) throws IllegalArgumentException {
        this(1, uri, i, i2);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }

    public WebImage(JSONObject jSONObject) throws IllegalArgumentException {
        this(zzg(jSONObject), jSONObject.optInt("width", 0), jSONObject.optInt("height", 0));
    }

    private static Uri zzg(JSONObject jSONObject) {
        if (!jSONObject.has("url")) {
            return null;
        }
        try {
            return Uri.parse(jSONObject.getString("url"));
        } catch (JSONException e2) {
            return null;
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return zzu.equal(this.zzSr, webImage.zzSr) && this.zzma == webImage.zzma && this.zzmb == webImage.zzmb;
    }

    public int getHeight() {
        return this.zzmb;
    }

    public Uri getUrl() {
        return this.zzSr;
    }

    int getVersionCode() {
        return this.zzzH;
    }

    public int getWidth() {
        return this.zzma;
    }

    public int hashCode() {
        return zzu.hashCode(this.zzSr, Integer.valueOf(this.zzma), Integer.valueOf(this.zzmb));
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("url", this.zzSr.toString());
            jSONObject.put("width", this.zzma);
            jSONObject.put("height", this.zzmb);
        } catch (JSONException e2) {
        }
        return jSONObject;
    }

    public String toString() {
        return String.format("Image %dx%d %s", Integer.valueOf(this.zzma), Integer.valueOf(this.zzmb), this.zzSr.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
