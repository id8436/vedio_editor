package com.twitter.sdk.android.core.internal.scribe;

import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: ScribeEvent.java */
/* JADX INFO: loaded from: classes.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("event_namespace")
    final e f4004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName("ts")
    final String f4005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("format_version")
    final String f4006c = "2";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SerializedName("_category_")
    final String f4007d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @SerializedName("items")
    final List<Object> f4008e;

    public ab(String str, e eVar, long j, List<Object> list) {
        this.f4007d = str;
        this.f4004a = eVar;
        this.f4005b = String.valueOf(j);
        this.f4008e = Collections.unmodifiableList(list);
    }

    public String toString() {
        return "event_namespace=" + this.f4004a + ", ts=" + this.f4005b + ", format_version=" + this.f4006c + ", _category_=" + this.f4007d + ", items=" + ("[" + TextUtils.join(", ", this.f4008e) + "]");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ab abVar = (ab) obj;
        if (this.f4007d == null ? abVar.f4007d != null : !this.f4007d.equals(abVar.f4007d)) {
            return false;
        }
        if (this.f4004a == null ? abVar.f4004a != null : !this.f4004a.equals(abVar.f4004a)) {
            return false;
        }
        if (this.f4006c == null ? abVar.f4006c != null : !this.f4006c.equals(abVar.f4006c)) {
            return false;
        }
        if (this.f4005b == null ? abVar.f4005b != null : !this.f4005b.equals(abVar.f4005b)) {
            return false;
        }
        if (this.f4008e != null) {
            if (this.f4008e.equals(abVar.f4008e)) {
                return true;
            }
        } else if (abVar.f4008e == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f4007d != null ? this.f4007d.hashCode() : 0) + (((this.f4006c != null ? this.f4006c.hashCode() : 0) + (((this.f4005b != null ? this.f4005b.hashCode() : 0) + ((this.f4004a != null ? this.f4004a.hashCode() : 0) * 31)) * 31)) * 31)) * 31) + (this.f4008e != null ? this.f4008e.hashCode() : 0);
    }
}
