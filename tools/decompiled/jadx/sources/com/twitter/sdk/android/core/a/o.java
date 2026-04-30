package com.twitter.sdk.android.core.a;

import com.google.gson.annotations.SerializedName;
import java.util.List;

/* JADX INFO: compiled from: Tweet.java */
/* JADX INFO: loaded from: classes.dex */
public class o {

    @SerializedName(alternate = {"full_text"}, value = "text")
    public final String A;

    @SerializedName("display_text_range")
    public final List<Integer> B;

    @SerializedName("truncated")
    public final boolean C;

    @SerializedName("user")
    public final q D;

    @SerializedName("withheld_copyright")
    public final boolean E;

    @SerializedName("withheld_in_countries")
    public final List<String> F;

    @SerializedName("withheld_scope")
    public final String G;

    @SerializedName("card")
    public final e H;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @SerializedName("coordinates")
    public final f f3830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @SerializedName("created_at")
    public final String f3831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SerializedName("current_user_retweet")
    public final Object f3832c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @SerializedName("entities")
    public final p f3833d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @SerializedName("extended_entities")
    public final p f3834e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @SerializedName("favorite_count")
    public final Integer f3835f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @SerializedName("favorited")
    public final boolean f3836g;

    @SerializedName("filter_level")
    public final String h;

    @SerializedName("id")
    public final long i;

    @SerializedName("id_str")
    public final String j;

    @SerializedName("in_reply_to_screen_name")
    public final String k;

    @SerializedName("in_reply_to_status_id")
    public final long l;

    @SerializedName("in_reply_to_status_id_str")
    public final String m;

    @SerializedName("in_reply_to_user_id")
    public final long n;

    @SerializedName("in_reply_to_user_id_str")
    public final String o;

    @SerializedName("lang")
    public final String p;

    @SerializedName("place")
    public final j q;

    @SerializedName("possibly_sensitive")
    public final boolean r;

    @SerializedName("scopes")
    public final Object s;

    @SerializedName("quoted_status_id")
    public final long t;

    @SerializedName("quoted_status_id_str")
    public final String u;

    @SerializedName("quoted_status")
    public final o v;

    @SerializedName("retweet_count")
    public final int w;

    @SerializedName("retweeted")
    public final boolean x;

    @SerializedName("retweeted_status")
    public final o y;

    @SerializedName("source")
    public final String z;

    private o() {
        this(null, null, null, p.f3837a, p.f3837a, 0, false, null, 0L, "0", null, 0L, "0", 0L, "0", null, null, false, null, 0L, "0", null, 0, false, null, null, null, null, false, null, false, null, null, null);
    }

    public o(f fVar, String str, Object obj, p pVar, p pVar2, Integer num, boolean z, String str2, long j, String str3, String str4, long j2, String str5, long j3, String str6, String str7, j jVar, boolean z2, Object obj2, long j4, String str8, o oVar, int i, boolean z3, o oVar2, String str9, String str10, List<Integer> list, boolean z4, q qVar, boolean z5, List<String> list2, String str11, e eVar) {
        this.f3830a = fVar;
        this.f3831b = str;
        this.f3832c = obj;
        this.f3833d = pVar == null ? p.f3837a : pVar;
        this.f3834e = pVar2 == null ? p.f3837a : pVar2;
        this.f3835f = num;
        this.f3836g = z;
        this.h = str2;
        this.i = j;
        this.j = str3;
        this.k = str4;
        this.l = j2;
        this.m = str5;
        this.n = j3;
        this.o = str6;
        this.p = str7;
        this.q = jVar;
        this.r = z2;
        this.s = obj2;
        this.t = j4;
        this.u = str8;
        this.v = oVar;
        this.w = i;
        this.x = z3;
        this.y = oVar2;
        this.z = str9;
        this.A = str10;
        this.B = i.a(list);
        this.C = z4;
        this.D = qVar;
        this.E = z5;
        this.F = i.a(list2);
        this.G = str11;
        this.H = eVar;
    }

    public long a() {
        return this.i;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof o) && this.i == ((o) obj).i;
    }

    public int hashCode() {
        return (int) this.i;
    }
}
