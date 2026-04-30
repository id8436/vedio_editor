package com.twitter.sdk.android.core.internal.scribe;

import com.adobe.creativesdk.foundation.internal.analytics.AdobeAnalyticsSDKReporter;
import com.behance.sdk.util.BehanceSDKUrlUtil;
import com.google.gson.annotations.SerializedName;

/* JADX INFO: compiled from: EventNamespace.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("client")
    public final String f4032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName(BehanceSDKUrlUtil.PARAM_KEY_PAGE_NUMBER)
    public final String f4033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("section")
    public final String f4034c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SerializedName("component")
    public final String f4035d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @SerializedName("element")
    public final String f4036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SerializedName(AdobeAnalyticsSDKReporter.AnalyticAction)
    public final String f4037f;

    public e(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f4032a = str;
        this.f4033b = str2;
        this.f4034c = str3;
        this.f4035d = str4;
        this.f4036e = str5;
        this.f4037f = str6;
    }

    public String toString() {
        return "client=" + this.f4032a + ", page=" + this.f4033b + ", section=" + this.f4034c + ", component=" + this.f4035d + ", element=" + this.f4036e + ", action=" + this.f4037f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f4037f == null ? eVar.f4037f != null : !this.f4037f.equals(eVar.f4037f)) {
            return false;
        }
        if (this.f4032a == null ? eVar.f4032a != null : !this.f4032a.equals(eVar.f4032a)) {
            return false;
        }
        if (this.f4035d == null ? eVar.f4035d != null : !this.f4035d.equals(eVar.f4035d)) {
            return false;
        }
        if (this.f4036e == null ? eVar.f4036e != null : !this.f4036e.equals(eVar.f4036e)) {
            return false;
        }
        if (this.f4033b == null ? eVar.f4033b != null : !this.f4033b.equals(eVar.f4033b)) {
            return false;
        }
        if (this.f4034c != null) {
            if (this.f4034c.equals(eVar.f4034c)) {
                return true;
            }
        } else if (eVar.f4034c == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f4036e != null ? this.f4036e.hashCode() : 0) + (((this.f4035d != null ? this.f4035d.hashCode() : 0) + (((this.f4034c != null ? this.f4034c.hashCode() : 0) + (((this.f4033b != null ? this.f4033b.hashCode() : 0) + ((this.f4032a != null ? this.f4032a.hashCode() : 0) * 31)) * 31)) * 31)) * 31)) * 31) + (this.f4037f != null ? this.f4037f.hashCode() : 0);
    }
}
